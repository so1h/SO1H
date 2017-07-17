/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                procs_k.c                                */
/* ----------------------------------------------------------------------- */
/*                      Gestion de procesos y threads                      */
/* ----------------------------------------------------------------------- */

#include <so1hpub.h\caracter.h>
#include <so1hpub.h\puertos.h>
//#include <so1hpub.h\copia.h>
//#include <so1hpub.h\strings.h>
#include <string.h>                                              /* strcpy */
#include <so1hpub.h\fcntl.h>
#include <so1h.h\ajustes.h>
#include <so1hpub.h\main.h>                       /* finProceso, finThread */
#include <so1h.h\blockpr.h>                                      /* enHalt */
#include <so1h.h\gm.h>
#include <so1h.h\procs.h>

#include <so1hpub.h\bios_0.h>                          /* printStrBIOS ... */
//#include <so1h.h\dbgword.h>                                 /* debugWord *//********************/

#include <so1hpub.h\printvid.h>                       /* printStrVideo ... */
#include <so1hpub.h\seccion.h>                /* _start__text, _stop__text */
#include <so1h.h\ajustsp.h>                                    /* SP0_SO1H */

asm                                                      /* implementacion */
(
    " section .text          \n"
    "   global _link_procs_k \n"
    " _link_procs_k:         \n"
) ;

descProcesoExt_t descProceso [ maxProcesos ] ;        /* tabla de procesos */

descThreadExt_t descThread [ maxThreads ] ;            /* tabla de threads */

descFichero_t descFichero [ dfsMax ] ;                /* tabla de ficheros */
//                                                 /* abiertos del sistema */
descRecurso_t descRecurso [ maxRecursos ] ;

c2c_t c2cPFR [ numColasPFR ] ;                           /* indices cPFR_t */

e2PFR_t e2PFR ;

#define maxCbAlEpilogo 9

descCcb_t descCcbAlEpilogo = { 0, 0, 0, maxCbAlEpilogo, (void *)NULL,
    { cbNulo, cbNulo, cbNulo, cbNulo, cbNulo, cbNulo, cbNulo, cbNulo, cbNulo}
} ;

ccb_t ccbAlEpilogo ;

word_t numPids = 0 ;          /* numero de pids asignados hasta el momento */

word_t numTids = 0 ;          /* numero de tids asignados hasta el momento */

int indThreadActual = 0 ;                /* indice del thread en ejecucion */

int indProcesoActual = 0 ;     /* ind. del proceso del thread en ejecucion */

int indThreadDeSuperficie = 0 ;

dword_t contRodajas ;                               /* contador de rodajas */

int contTicsRodaja ;                     /* contador de tics de una rodaja */

word_t contadorTimer00 ;  /* valor de contadorTimer0() al pasar a ej. p.a. */

trama_t * tramaThread ;

trama_t * tramaTarea ;

pid_t nuevoPid ( void )
{
    return(numPids++) ;
}

tid_t nuevoTid ( void )
{
    return(numTids++) ;
}

void resetPids ( void )
{
    numPids = 1 ;                      /* primer pid de un proceso usuario */
}

void resetTids ( void )
{
    numTids = 1 ;         /* primer tid de un thread de un proceso usuario */
}

tindx_t indice ( tid_t tid )
{
    tindx_t i ;
    for ( i = 0 ; i < maxThreads ; i++)
    {
        if ((descThread[i].estado != libre) &&
                (descThread[i].tid == tid))
            return(i) ;
    }
    return(-1) ;
}

/* ----------------------------------------------------------------------- */
/* Planificador (sigThread)                                                */
/* ----------------------------------------------------------------------- */

/* sigThread selecciona de la cola de threads preparados el siguiente      */
/* thread a ejecutar. Si no hay ningun thread preparado se permiten las    */
/* interrupciones y se detiene el procesador (hasta que ocurra una         */
/* interrupcion). Al retornar de esa interrupcion se inhiben las           */
/* y se intenta de nuevo encontrar un thread preparado en la cola.         */

char molino [4] = { '|', '/', '-', '\\' } ;

int indMolino = 0 ;

#define modoPtdo 3                                       /* 0, 1, 2, 3 o 4 */

#if (modoPtdo == 0)
#define pintaOcioso
#endif
#if (modoPtdo == 1)
#define pintaOcioso \
    (*((char *)(0xB8000 + 2*79)))++ ;
#endif
#if (modoPtdo == 2)
#define pintaOcioso                  \
	asm("   mov ax,0B800h       ") ; \
    asm("   mov es,ax           ") ; \
    asm("   add [es:158],byte 1 ") ;
#endif
#if (modoPtdo == 3)
#define pintaOcioso \
	(*((char *)(0xB8000 + 2*79))) = molino[(indMolino++) & 0x03] ;
#endif
#if (modoPtdo == 4)
#define pintaOcioso                  \
	printStrVideo("\n nVIntActual = ") ; \
	printHexVideo(nVIntActual, 2) ;
#endif

int contOcioso = - 1 ;

pindx_t sigThread ( void )                     /* planificador (scheduler) */
{
    static tindx_t tindx ;

    contOcioso = -1 ;
    while (c2cPFR[TPreparados].numElem == 0)
    {
//      if (indProcesoActual != -1)
//          plot('e', 0, contadorTimer0()) ;
        indProcesoActual = -1 ;
        indThreadActual = -1 ;
        enHalt = TRUE ;
        asm("sti") ;
        asm("hlt") ;                            /* detenemos el procesador */
        asm("cli") ;                       /* ha ocurrido una interrupcion */
        pintaOcioso ;
    }

    tindx = desencolarPC2c((ptrC2c_t)&c2cPFR[TPreparados]) ;

    return(tindx) ;

}

int activarThread ( tindx_t tindx )                          /* dispatcher */
{

    if ((tindx < 0) || (descThread[tindx].tid < 0))
    {
        return(-1) ; /* no existe el thread tindx */
    }

    if (descThread[tindx].estado != preparado)
    {
        return(-1) ;                  /* el thread tindx no esta preparado */
    }

    descThread[tindx].estado = ejecutandose ;
    indThreadActual = tindx ;
    indProcesoActual = descThread[tindx].pindx ;

//  plot('e', 0, contadorTimer0()) ;

    contRodajas++ ;                                                    /*T0*/

    if (hayTic)               /* se llamo a activarProceso desde rti_timer */
        contTicsRodaja = 0 ;
    else
        contTicsRodaja = -1 ;      /* un tic puede estar a punto de llegar */
    hayTic = FALSE ;

    SS_Thread = descThread[indThreadActual].SSThread ;
    SP_Thread = (word_t)(
                    (int)(descThread[indThreadActual].trama) - (int)(((dword_t)SS_Thread) << 4)) ;

//	printStrVideo("\n\n SP_Thread = ") ;
//	printHexVideo(SP_Thread, 4) ;

    /* SS_Proceso y SP_Proceso son variables globales. Si fueran variables */
    /* locales habria que tener cuidado en el orden de las instrucciones   */
    /* ya que se modifica la pila y el orden de las instrucciones seria    */
    /* critico                                                             */

    enHalt = FALSE ;

    nivelActivacionSO1H = 0 ;               /* esta ejecutandose un thread */

    setThreadStack(SS_Thread, SP_Thread) ; /* establece la pila del thread */
    asm                                                /* SS_Thread, SP_Thread */
    (
        "   pop ds \n"        /* establecemos el segmento de datos del proceso */
        "   pop es \n"

        "   popad  \n"                /* restauramos los registros del proceso */

        "   iret   \n"                           /* restauramos IP, CS y Flags */
    ) ;

    return(0) ;

}

void salvarThread ( void )                        /* indThreadActual != -1 */
{
    descThread[indThreadActual].trama =
        (trama_t *)MK_P(SS_Thread, SP_Thread) ;
}

void salvarTareaInterrumpida ( void )            /* indProcesoActual != -1 */
{
    descThread[indThreadActual].trama =
        (trama_t *)MK_P(SS_Tarea, SP_Tarea) ;
}

void ponerNumeroHex ( word_t num, char * * str )                /* num > 0 */
{
    word_t d = 0x1000 ;
    if (num == 0) *(*str)++ = '0' ;
    else
    {
        while (num/d == 0) d = (d >> 4) ;
        while (d > 0)
        {
            *(*str)++ = dig[num/d] ;
            num = num % d ;
            d = (d >> 4) ;
        }
    }
}

void ponerNumero ( word_t num, char * * str )                   /* num > 0 */
{
    word_t d = 10000 ;
    if (num == 0) *(*str)++ = '0' ;
    else
    {
        while (num/d == 0) d = d/10 ;
        while (d > 0)
        {
            *(*str)++ = '0' + (num/d) ;
            num = num % d ;
            d = d/10 ;
        }
    }
}

static int ponerArgs ( pindx_t pindx, word_t DSProc, word_t offDATADS, word_t * offArgv )
{
    int i = 0 ;
    int argc = 0 ;
    char car ;
    bool_t estadoBlanco = TRUE ;
    pointer_t ptrCmdLine ;
    char * * ptrArgv ;
    ptrCmdLine = pointer(DSProc, offDATADS + 1) ;
//  *offArgv = offDATADS + 1 + tamComando ;    /* offset respecto DS pindx */
//  ptrArgv = (char * far *)pointer(DSProc, offDATADS + 1 + tamComando) ;
//  copiaLarga((pointer_t)&descProceso[pindx].comando, ptrCmdLine, tamComando) ;
    while ((car = ptrCmdLine[i]) != (char)0)
    {
        switch (estadoBlanco)
        {
        case TRUE  :
            if (car != ' ')
            {
                if (argc >= 20) return(-1) ;              /* 20 == maxArgs */
                estadoBlanco = FALSE ;
                ptrArgv[argc] = (char *)off((pointer_t)&ptrCmdLine[i]) ;
                argc++ ;
            }
        case FALSE :
            if (car == ' ')
            {
                estadoBlanco = TRUE ;
                ptrCmdLine[i] = (char)0 ;
            }
        }
        i++ ;
    }
    return(argc) ;
}

void registrarEnPOrdenados ( pindx_t pindx )
{
    dobleEnlace_t * e ;
    word_t segmento ;
    int j, ant ;
    segmento = descProceso[pindx].CSProc ;
    e = c2cPFR[POrdenados].e ;
    j = c2cPFR[POrdenados].primero ;
    while ((j != c2cPFR[POrdenados].cabecera) && (descProceso[j].CSProc < segmento))
        j = e[j].sig ;
    ant = e[j].ant ;
    e[pindx].ant = ant ;
    e[pindx].sig = j ;
    e[ant].sig = pindx ;
    e[j].ant = pindx ;
    c2cPFR[POrdenados].numElem++ ;
}

tindx_t crearThread ( funcion_t funcion,             /* funcion a ejecutar */
                      word_t    SP0,           /* SP0 para el nuevo thread */
                      void *    arg,               /* argumento de partida */
                      pindx_t   pindx )              /* proceso contenedor */
{
    word_t flags ;
    tindx_t i ;
    word_t SSThread ;
    dword_t * ptrPila ;

    if ((pindx < 0) || (pindx > maxThreads)) return(-1) ;
    if (posicionC2c(pindx,c2cPFR[DPOcupados]) == -1) return(-2) ;
    if (c2cPFR[DTLibres].numElem == 0) return(-3) ;
    SSThread = k_buscarBloque((SP0 + 15)/16) ;
    if (SSThread == 0x0000) return(-4) ;
    i = desencolarPC2c((ptrC2c_t)&c2cPFR[DTLibres]) ;
    encolarPC2c(i, (ptrC2c_t)&c2cPFR[DTOcupados]) ;
    descThread[i].tid = nuevoTid() ;
    descThread[i].estado = preparado ;
    descThread[i].pindx = pindx ;
    descThread[i].noStatus = TRUE ;
    descThread[i].status = 0 ;
    descThread[i].ptindx = indThreadActual ;
    descThread[i].htindx = -1 ;                 /* no espera ningun join */

    descThread[i].SSThread = SSThread ;
    descThread[i].SP0 = SP0 ;
    ptrPila = MK_P(SSThread, SP0) ;
    *--ptrPila = (dword_t)arg ;
    *--ptrPila = (dword_t)finThread ;            /* (direccion de retorno) */
//  printStrVideo("\n\n finThread = ") ;
//  printLHexVideo(finThread, 8) ;

//	descThread[i].trama = MK_P(SSThread, SP0 - 8 - sizeof(trama_t)) ;
    descThread[i].trama = (trama_t *)((dword_t)ptrPila - sizeof(trama_t)) ;

    descThread[i].trama->DS = 0x0000 ;
    descThread[i].trama->ES = 0x0000 ;

    descThread[i].trama->EDI = 0x00000000 ;
    descThread[i].trama->ESI = 0x00000000 ;
    descThread[i].trama->EBP = SP0 - 14 ;        /* 14 = 4 + 4 + 2 + 2 + 2 */
    descThread[i].trama->ESP = SP0 - 14 ;        /*     arg fin Flg  CS IP */
    descThread[i].trama->EBX = 0x00000000 ;
    descThread[i].trama->EDX = 0x00000000 ;
    descThread[i].trama->ECX = 0x00000000 ;
    descThread[i].trama->EAX = 0x00000000 ;

    descThread[i].trama->IP = OFF(funcion) ;
    descThread[i].trama->CS = SEG(funcion) ;
    asm
    (
        "   pushf         \n"
        "   pop ax        \n"
        "   mov [bp-4],ax \n" /* flags */                        /* SR = Flags */
    ) ;
    descThread[i].trama->Flags =
        (flags & 0xF000) | 0x0202 ;           /* interrupciones permitidas */

    encolarPC2c(i, (ptrC2c_t)&descProceso[pindx].c2cThreads) ;

    encolarPC2c(i, (ptrC2c_t)&c2cPFR[TPreparados]) ;

    return(i) ;
}

pindx_t crearProceso ( word_t       segmento,
                       word_t       tam,
                       dword_t      tamFich,
                       const char * programa,
                       const char   * comando,
                       pindx_t      pindx )
{

    cabecera_t * cabecera ;
    pindx_t i, j ;
    word_t despl ;
    word_t offDATADS ; /* offset de la DATA del nuevo proceso respecto al DS */
    word_t SS_NuevoProceso ;                              /* DS_NuevoProceso */
    word_t SP_NuevoProceso ;
    word_t SR ;
    word_t tamCodigo ;
    word_t tamPila ;
    int argc ;
    word_t offArgv ;
    word_t * ptrPila ;
    char carCmd ;
    int dfs ;
    modoAp_t modoAp ;

//         /* createProcess (pindx = -1) o exec (pindx = indProcesoActual) */

    if ((pindx < 0) && (c2cPFR[DPOcupados].numElem == maxProcesos)) return(-1) ;

    cabecera = (cabecera_t *)pointer(segmento, 0x0000) ;
#if (0)
    if (!igualesHasta((char *)cabecera->magicbyte,
                      (char *)ptrMagicByteUsr, 3))              /* AJUSTES */
    {
        if (!igualesHasta((char *)cabecera->magicbyte,
                          (char *)ptrMagicByteSO1, 3))
            return(-1) ;                            /* cabecera incorrecta */
//    cabecera = (cabecera_t *)pointer(segmento, desplCab()) ;
    }
    if ((cabecera->magicbyte[ 5] != ptrMagicByteUsr[ 5]) ||   /* AJUSTES.H */
            (cabecera->magicbyte[ 8] != ptrMagicByteUsr[ 8]) ||
            (cabecera->magicbyte[11] != ptrMagicByteUsr[11]))
        return(-1) ;                                /* cabecera incorrecta */

//    despl = (16*cabecera->segDatosSR) + cabecera->startData ;
    if (despl & 0x0001) despl++ ;                   /* alineamos a palabra */
    SS_NuevoProceso = segmento + (despl >> 4) ;                /* SS=DS=ES */
//    SP_NuevoProceso = cabecera->SP0 ;
    offDATADS = despl & 0x000F ;                    /* 0 <= offDATADS < 16 */

    tamCodigo = (despl >> 4) ;                            /* en paragrafos */
    if (cabecera->SP0 <= 0xFFF0)
        tamPila = (cabecera->SP0+15)/16 ;
    else
        tamPila = 0x0FFF ;

    if ((tamCodigo + tamPila) != tam)
        return(-1) ;
#endif

    if (pindx >= 0) i = pindx ;                    /* exec ==> mismo pindx */
    else
    {
        i = desencolarPC2c((ptrC2c_t)&c2cPFR[DPLibres]) ;
        encolarPC2c(i, (ptrC2c_t)&c2cPFR[DPOcupados]) ;
    }

    descProceso[i].CSProc = segmento ;
//    descProceso[i].tamCodigo = (16*cabecera->segDatosSR) + cabecera->startData ;
    descProceso[i].tamFichero = tamFich ;
//descProceso[i].desplBSS = tamFich - 16*(SS_NuevoProceso-segmento) ;
//    descProceso[i].desplBSS = cabecera->finData ;           /* mas facil */

    descProceso[i].tam = tam ;

    strcpy(descProceso[i].programa, programa) ;

    if (pindx == -1)                                      /* createProcess */
    {
        descProceso[i].pid = nuevoPid() ;
        descProceso[i].noStatus = FALSE ;      /* puede morir directamente */
        descProceso[i].ppindx = indProcesoActual ;
        descProceso[i].hpindx = -1 ;
        inicPC2c(&descProceso[i].c2cHijos, &e2PFR.e2Hijos, maxProcesos + i, TRUE) ;
        encolarPC2c(i, (ptrC2c_t)&descProceso[indProcesoActual].c2cHijos) ;
        /* descProceso[i].tCPU = 0 ; */   /* tiempo de CPU en (tics/2**16) */
    }
    else
        eliminarPC2c(i, (ptrC2c_t)&c2cPFR[POrdenados]) ;     /* 12/07/2015 */

    descThread[i].estado = preparado ;
    registrarEnPOrdenados(i) ;

    /* transmisión de la linea de comando al proceso suprimiendo cosas */
#if (0)
    for ( j = 0 ; (j < tamComando) &&
            ((carCmd = comando[j]) != (char)0) &&
            (carCmd != '&') &&                               /* background */
            (carCmd != '>') && (carCmd != '<') &&         /* redirecciones */
            (carCmd != '|')                                       /* pipes */
            ; j++ )
        descProceso[i].comando[j] = carCmd ;
    descProceso[i].comando[j] = (char)0 ;
    descProceso[i].comando[j+1] = carCmd ; /* truco para saber si &, >, < o | */
#endif

    argc = ponerArgs(i, SS_NuevoProceso, offDATADS, &offArgv) ;

    ptrPila = (word_t *)pointer(SS_NuevoProceso, SP_NuevoProceso) ;

    *(--ptrPila) = offArgv ;                       /* apilo parametro argv */
    *(--ptrPila) = argc ;                          /* apilo parametro argc */
//    *(--ptrPila) = cabecera->desplFinish ; /* apilo dir. de retorno a finish */

    SP_NuevoProceso = off((pointer_t)ptrPila) - sizeof(trama_t) ;

    /* inicializacion de los registros en la pila del proceso creado */

    descThread[i].trama =

        (trama_t *) MK_P(SS_NuevoProceso, SP_NuevoProceso) ;

    descThread[i].trama->DS = SS_NuevoProceso ;
    descThread[i].trama->ES = SS_NuevoProceso ;
    descThread[i].trama->EDI = 0x00000000 ;
    descThread[i].trama->ESI = 0x00000000 ;
    descThread[i].trama->EBP = ((cabecera->SP0) - 6) ;    /* IP, CS, Flags */
    descThread[i].trama->ESP = ((cabecera->SP0) - 6) ;    /* IP, CS, Flags */
    descThread[i].trama->EBX = 0x00000000 ;
    descThread[i].trama->EDX = 0x00000000 ;
    descThread[i].trama->ECX = 0x00000000 ;
    descThread[i].trama->EAX = 0x00000000 ;
//    descThread[i].trama->IP = cabecera->desplMain ;
    descThread[i].trama->CS = segmento ;
#if (0)
    asm
    {
        pushf ;
        pop ax ;
        mov SR,ax ;                                          /* SR = Flags */
    }
#endif
    descThread[i].trama->Flags =
        (SR & 0xF000) | 0x0202 ;              /* interrupciones permitidas */

    /*  descThread[i].trama->Flags = 0x7302 ; */                  /* traza */

//  descThread[i].desplPila = cabecera->finBSS ;

    if (pindx == -1)                                      /* createProcess */
    {
        descProceso[i].uid = descProceso[indProcesoActual].uid ;
        descProceso[i].gid = descProceso[indProcesoActual].gid ;
        descProceso[i].nfa = descProceso[indProcesoActual].nfa ;  /* hereda tfa */
        for ( j = 0 ; j < dfMax ; j++ )
        {
            descProceso[i].tfa[j].dfs = descProceso[indProcesoActual].tfa[j].dfs ;
            descProceso[i].tfa[j].pos = descProceso[indProcesoActual].tfa[j].pos ;
            descProceso[i].tfa[j].modoAp = descProceso[indProcesoActual].tfa[j].modoAp ;
        }

        for ( j = 0 ; j < dfMax ; j++ )
        {
            dfs = descProceso[i].tfa[j].dfs ;
            if (dfs >= 0)
            {
                modoAp = descProceso[i].tfa[j].modoAp ;
                if ((modoAp & 0x0007) == O_RDONLY) descFichero[dfs].contAp_L++ ;
                else if ((modoAp & 0x0007) == O_WRONLY) descFichero[dfs].contAp_E++ ;
            }
        }
    }
    else                                                           /* exec */
    {
        /* es innecesario todo lo anterior ya que i = pindx = indProcesoActual */
    }
    return(i) ;

}

bool_t devolverPila ( tindx_t tindx )                  /* para los threads */
{
//  printStrVideo("\n devolverPila ") ;
//  if (!estaPC2c(tindx, (ptrC2c_t)&c2cPFR[DTOcupados])) return(FALSE) ;
    return(k_devolverBloque(
               descThread[tindx].SSThread,
               (descThread[tindx].SP0+15)/16)
          ) ;
}

bool_t devolverParticion ( pindx_t pindx )            /* para los procesos */
{
    if (!estaPC2c(pindx, (ptrC2c_t)&c2cPFR[POrdenados])) return(FALSE) ;
    eliminarPC2c(pindx, (ptrC2c_t)&c2cPFR[POrdenados]) ;
    return(k_devolverBloque(
               descProceso[pindx].CSProc,
               descProceso[pindx].tam)
          ) ;
}

int terminarThreadIndx ( tindx_t tindx )           /* termina thread pindx */
{
    modoAp_t modoAp ;
    int j, dfs ;

    if (tindx == 0) return(-1) ;                         /* thread inicial */
    if ((tindx < 0) || (tindx >= maxThreads)) return(-2) ;        /* error */
    if (descThread[tindx].estado == libre) return(-3) ;
    if (descThread[tindx].estado == preparado)
        eliminarPC2c(tindx, (ptrC2c_t)&c2cPFR[TPreparados]) ;

    devolverPila(tindx) ;

    return(0) ;
}

int terminarProcIndx ( pindx_t pindx )            /* termina proceso pindx */
{
    modoAp_t modoAp ;
    int j, dfs ;

    if (pindx == 0) return(-1) ;                        /* proceso inicial */
    if ((pindx < 0) || (pindx >= maxProcesos)) return(-2) ;       /* error */
    if (descThread[pindx].estado == libre) return(-3) ;
    if (descThread[pindx].estado == preparado)
        eliminarPC2c(pindx, (ptrC2c_t)&c2cPFR[TPreparados]) ;

    for ( j = 0 ; j < dfMax ; j++ )            /* cerrar ficheros abiertos */
    {
        dfs = descProceso[pindx].tfa[j].dfs ;
        if (dfs > 0)
        {
            modoAp = descProceso[pindx].tfa[j].modoAp ;
            if ((modoAp & 0x0007) == O_RDONLY) descFichero[dfs].contAp_L-- ;
            else if ((modoAp & 0x0007) == O_WRONLY) descFichero[dfs].contAp_E-- ;
        }
    }

    devolverParticion(pindx) ;

    /* quedaria pendiente eliminar a todos los procesos hijos zombies */
    /* poniendolos como hijos de un proceso init que ejecuta de forma */
    /* continuada waitpid hasta que waitpid lo bloquea.               */

    return(0) ;
}

int eliminarThreadIndx ( tindx_t tindx )           /* elimina thread pindx */
{
    descThread[tindx].estado = libre ;
    descThread[tindx].pindx = -1 ;
    eliminarPC2c(tindx, (ptrC2c_t)&c2cPFR[DTOcupados]) ;
    apilarPC2c(tindx, (ptrC2c_t)&c2cPFR[DTLibres]) ;
    return(0) ;
}

int eliminarProcIndx ( pindx_t pindx )            /* elimina proceso pindx */
{
    descThread[pindx].estado = libre ;
    descProceso[pindx].pid = -1 ;
    eliminarPC2c(pindx, (ptrC2c_t)&c2cPFR[DPOcupados]) ;
    apilarPC2c(pindx, (ptrC2c_t)&c2cPFR[DPLibres]) ;
    return(0) ;
}

int matarThreadIndx ( tindx_t tindx )                 /* mata thread tindx */
{
    int err = 0 ;
    rindx_t rindx ;
    if (descThread[tindx].estado == libre) return(-1) ;        /* ya libre */
    if (descThread[tindx].estado == bloqueado)
    {
        rindx = descThread[tindx].esperandoPor ;
        switch (rindx)
        {
        /*  case rec_hijo           : return(-2) ; */
        case rec_zombie         :
            eliminarThreadIndx(tindx) ;
            return(0) ;
        /*  case rec_desinstalacion : return(-2) ; */
        default :
            ;
            if ((0 <= rindx) && (rindx < maxRecursos))
            {
                descRecurso[rindx].eliminar(tindx) ;
            }
        }
    }
    err = terminarThreadIndx(tindx) ;
    if (err == 0)
        eliminarThreadIndx(tindx) ;

    return(err) ;
}

int matarProcIndx ( pindx_t pindx )                  /* mata proceso pindx */
{
    int err = 0 ;
    rindx_t rindx ;
    if (descThread[pindx].estado == libre) return(-1) ;        /* ya libre */
    if (descThread[pindx].estado == bloqueado)
    {
        rindx = descThread[pindx].esperandoPor ;
        switch (rindx)
        {
        /*  case rec_hijo           : return(-2) ; */
        case rec_zombie         :
            eliminarProcIndx(pindx) ;
            return(0) ;
        /*  case rec_desinstalacion : return(-2) ; */
        default :
            ;
            if ((0 <= rindx) && (rindx < maxRecursos))
            {
                descRecurso[rindx].eliminar(pindx) ;
            }
        }
    }
    err = terminarProcIndx(pindx) ;
    if (err == 0)
        eliminarProcIndx(pindx) ;

    return(err) ;
}
