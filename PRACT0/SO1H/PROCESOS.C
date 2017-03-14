/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                               procesos.c                                */
/* ----------------------------------------------------------------------- */
/*                      Gestion de procesos y threads                      */
/* ----------------------------------------------------------------------- */

#include "..\so1hpub.h\caracter.h"
#include "..\so1hpub.h\puertos.h"
//#include "..\so1hpub.h\copia.h"
//#include "..\so1hpub.h\strings.h"
#include <string.h>                                              /* strcpy */
#include "..\so1hpub.h\fcntl.h"
#include "..\so1h.h\ajustes.h"
#include "..\so1h.h\blockpr.h"
#include "..\so1h.h\gm.h"
#include "..\so1h.h\procesos.h"

#include "..\so1hpub.h\bios_0.h"                       /* printStrBIOS ... */
//#include "..\so1h.h\dbgword.h"                              /* debugWord *//********************/

#include "..\so1hpub.h\printvid.h"                    /* printStrVideo ... */
#include "..\so1hpub.h\seccion.h"             /* _start__text, _stop__text */
#include "..\so1h.h\ajustsp.h"                                 /* SP0_SO1H */

descProcesoExt_t descProceso [ maxProcesos ] ;        /* tabla de procesos */

descThreadExt_t descThread [ maxThreads ] ;            /* tabla de threads */

descFichero_t descFichero [ dfsMax ] ;                /* tabla de ficheros */
/* abiertos del sistema */
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

c2c_t bloqueadosRaton ;

dobleEnlace_t e2BloqueadosRaton [ maxProcesos + 1 ] ;

trama_t * tramaThread ;

trama_t * tramaTarea ;

void resetPids ( void )
{
    numPids = 1 ;                      /* primer pid de un proceso usuario */
}

pid_t nuevoPid ( void )
{
    return(numPids++) ;
}

tid_t nuevoTid ( void )
{
    return(numTids++) ;
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

int contOcioso = - 1 ;

pindx_t sigThread ( void )                     /* planificador (scheduler) */
{

    static tindx_t tindx ;                 /* printStrWin(win_so, "\nS") ; */

    contOcioso = -1 ;
    while (c2cPFR[TPreparados].numElem == 0)
    {
//    if (indProcesoActual != -1)
//      plot('e', 0, contadorTimer0()) ;
        indProcesoActual = -1 ;              /* printStrWin(win_so, "h") ; */
//    enHalt = TRUE ;
#if (0)
        asm sti
        asm hlt                                 /* detenemos el procesador */
        asm cli
#endif
    }

    tindx = desencolarPC2c((ptrC2c_t)&c2cPFR[TPreparados]) ;
    /*
    if (debugWord == 0x0001) {
      printStrBIOS("\n sigProceso(): ") ;
      printStrBIOS("\n indProcesoActual = ") ;
      printIntBIOS(indProcesoActual, 1) ;
      printStrBIOS(" pindx = ") ;
      printIntBIOS(pindx, 1) ;
      while(TRUE) ;
    }
    */
    return(tindx) ;

}

int activarThread ( tindx_t tindx )
{
    /*
    if (debugWord == 0x0001) {
      printStrBIOS("\n activarProceso(): ") ;
      printStrBIOS("\n indProcesoActual = ") ;
      printIntBIOS(indProcesoActual, 1) ;
      printStrBIOS(" pindx = ") ;
      printIntBIOS(pindx, 1) ;
      while(TRUE) ;
    }
    */
    /*
      printStrWin(win_so, "\nA(") ;
      printDecWin(win_so, pindx, 1) ;
      printStrWin(win_so, ") numPPrep = ") ;
      printDecWin(win_so, numPPrep, 1) ;
      printStrWin(win_so, "\n") ;
    */

    if ((tindx < 0) || (descThread[tindx].tid < 0))
    {
        /*
            printStrWin(win_so, "\n activarProceso: no existe el proceso ") ;
            printDecWin(win_so, descProceso[pindx].pid, 1) ;
            printStrWin(win_so, " con indice ") ;
            printDecWin(win_so, pindx, 1) ;
            printStrWin(win_so, "\n") ;
        */
        return(-1) ;
    }

    if (descThread[tindx].estado != preparado)
    {
        /*
            printStrWin(win_so, "\n el proceso ") ;
            printDecWin(win_so, descProceso[pindx].pid, 1) ;
            printStrWin(win_so, " con indice ") ;
            printDecWin(win_so, pindx, 1) ;
            printStrWin(win_so, " no esta preparado\n") ;
        */
        return(-1) ;
    }

    descThread[tindx].estado = ejecutandose ;
    indThreadActual = tindx ;
    indProcesoActual = descThread[tindx].pindx ;

//  plot('e', 0, contadorTimer0()) ;

    contRodajas++ ;                                                    /*T0*/
#if (0)
    if (hayTic)               /* se llamo a activarProceso desde rti_timer */
        contTicsRodaja = 0 ;
    else
        contTicsRodaja = -1 ;      /* un tic puede estar a punto de llegar */
    hayTic = FALSE ;
#endif
    SS_Thread = seg((pointer_t)(descThread[indThreadActual].trama)) ;
    SP_Thread = off((pointer_t)(descThread[indThreadActual].trama)) ;

    /* SS_Proceso y SP_Proceso son variables globales. Si fueran variables */
    /* locales habria que tener cuidado en el orden de las 3 instrucciones */
    /* ya que se modifica la pila y el orden de las instrucciones seria    */
    /* critico                                                             */

//  enHalt = FALSE ;

    nivelActivacionSO1H = 0 ;              /* esta ejecutandose un proceso */

#if (0)

    asm mov ss,SS_Proceso ;            /* establecemos la pila del proceso */
    asm mov sp,SP_Proceso ;

    asm pop ds            /* establecemos el segmento de datos del proceso */
    asm pop es

    asm popa                      /* restauramos los registros del proceso */

    asm iret                                 /* restauramos IP, CS y Flags */

#endif

    return(0) ;

}

void salvarThread ( void )                        /* indThreadActual != -1 */
{
    descThread[indThreadActual].trama =
        (trama_t *)pointer(SS_Thread, SP_Thread) ;
}

void salvarTareaInterrumpida ( void )            /* indProcesoActual != -1 */
{
    descThread[indThreadActual].trama =
        (trama_t *)pointer(SS_Tarea, SP_Tarea) ;
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

pindx_t crearProceso (       word_t    segmento,
                             word_t    tam,
                             dword_t   tamFich,
                             const char    * programa,
                             const char    * comando,
                             pindx_t   pindx )
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
    descThread[i].trama->DI = 0x0000 ;
    descThread[i].trama->SI = 0x0000 ;
    descThread[i].trama->BP = ((cabecera->SP0) - 6) ;     /* IP, CS, Flags */
    descThread[i].trama->SP = ((cabecera->SP0) - 6) ;     /* IP, CS, Flags */
    descThread[i].trama->BX = 0x0000 ;
    descThread[i].trama->DX = 0x0000 ;
    descThread[i].trama->CX = 0x0000 ;
    descThread[i].trama->AX = 0x0000 ;
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

char strSo1 [4][12] = { "SO1.BIN", "SO1.COM", "SO1.EXE", "SO1.SLX" } ;

char comandoSo1a [tamComando] = "boot de disquete" ;
char comandoSo1b [tamComando] = "SO1H (desde MSDOS)" ;
//char comandoSo1c [tamComando] = "SO1 (desde SYSLINUX)" ;

void inicProcesos ( void )
{

    pindx_t i ;

    ccbAlEpilogo = (ccb_t)MK_P(DS_SO1H, (word_t)&descCcbAlEpilogo) ;

//  /* inicializamos las colas: */

    inicPC2c(&c2cPFR[DPLibres],    &e2PFR.e2DescProceso.Libres,   maxProcesos,     TRUE) ;
    inicPC2c(&c2cPFR[DPOcupados],  &e2PFR.e2DescProceso.Ocupados, maxProcesos + 1, TRUE) ;
    inicPC2c(&c2cPFR[DTLibres],    &e2PFR.e2DescThread.Libres,    maxThreads,      TRUE) ;
    inicPC2c(&c2cPFR[DTOcupados],  &e2PFR.e2DescThread.Ocupados,  maxThreads + 1,  TRUE) ;
    inicPC2c(&c2cPFR[TPreparados], &e2PFR.e2Preparados,           maxProcesos,     FALSE) ;
    inicPC2c(&c2cPFR[TUrgentes],   &e2PFR.e2Urgentes,             maxProcesos,     FALSE) ;
    inicPC2c(&c2cPFR[POrdenados],  &e2PFR.e2POrdenados,           maxProcesos,     FALSE) ;
    inicPC2c(&c2cPFR[TDormidos],   &e2PFR.e2TDormidos,            maxProcesos,     FALSE) ;

    for ( i = maxThreads-1 ; i > 0 ; i-- )      /* todos menos el trhead 0 */
    {
        descThread[i].tid = -1 ;
        descThread[i].estado = libre ;
        descThread[i].trama = (trama_t *)NULL ;
        descThread[i].noStatus = TRUE ;        /* puede morir directamente */
        descThread[i].pindx = -1 ;
        descThread[i].SSThread = 0x0000 ;
        descThread[i].SP0 = 0x0000 ;
    }

    for ( i = maxProcesos-1 ; i > 0 ; i-- )    /* todos menos el proceso 0 */
    {
        descProceso[i].pid = -1 ;
        descProceso[i].uid = -1 ;
        descProceso[i].gid = -1 ;
        descProceso[i].noStatus = TRUE ;       /* puede morir directamente */
        inicPC2c(&descProceso[i].c2cHijos, &e2PFR.e2Hijos, maxProcesos + i, TRUE) ;
        apilarPC2c(i, (ptrC2c_t)&c2cPFR[DPLibres]) ;         /* apilamos i */
        descProceso[i].CSProc = 0x0000 ;
        descProceso[i].tamCodigo = 0x0000 ;
        descProceso[i].desplBSS = 0x0000 ;
        descProceso[i].desplPila = 0x0000 ;
        descProceso[i].tam = 0 ;
        descProceso[i].tamFichero = 0 ;
        descProceso[i].programa[0] = (char)0 ;
//      /* descProceso[i].tCPU = 0 ; */   /* tiempo de CPU en (tics/2**16) */
    }

//  SS_Kernel = SS_SO1H + ((SP0_SO1H + 15)/16) ;/* se inicializa en inicGM */

//  descThread[0].SSThread = SS_SO1H ;          /* se inicializa en inicGM */
//  descThread[0].SP0 = SP0_SO1H ;              /* se inicializa en inicGM */
    descThread[0].tid = 0 ;
    descThread[0].estado = ejecutandose ;
    descThread[0].trama = (trama_t *)&_stop__bss + SP0_SO1H - sizeof(trama_t) ;
    descThread[0].noStatus = TRUE ;            /* puede morir directamente */
    descThread[0].pindx = 0 ;

//  descProceso[0].CSProc = CS_SO1H ; */        /* se inicializa en inicGM */
//  descProceso[0].tam = SS_SO1H - CS_SO1H ; */ /* se inicializa en inicGM */
    descProceso[0].pid = nuevoPid() ;              /* el proceso 0 es SO1H */
    descProceso[0].noStatus = TRUE ;           /* puede morir directamente */
    descProceso[0].ppindx = -1 ;                         /* no tiene padre */
    descProceso[0].hpindx = -1 ;
    inicPC2c(&descProceso[0].c2cHijos, &e2PFR.e2Hijos, maxProcesos + 0, TRUE) ;
    apilarPC2c(0, (ptrC2c_t)&c2cPFR[DPOcupados]) ;           /* apilamos 0 */
    apilarPC2c(0, (ptrC2c_t)&c2cPFR[POrdenados]) ;           /* apilamos 0 */
    descProceso[0].tamCodigo = &_stop__text - &_start__text + sizeof(cabecera_t) ;
    descProceso[0].desplBSS = &_start__bss - ((dword_t)&_start__data & 0xFFFFFFF0) ;
    descProceso[0].desplPila = &_stop__bss - ((dword_t)&_start__data & 0xFFFFFFF0) ;
    descProceso[0].tamFichero = &_stop__data - &_start__text + sizeof(cabecera_t) ;

#if (1)
    printStrVideo("\n sizeof(cabecera_t) = ") ;
    printDecVideo(sizeof(cabecera_t), 1) ;                           /* Ok */
    printStrVideo("\n descProceso[0].CSProc = ") ;
    printHexVideo(descProceso[0].CSProc, 4) ;                        /* Ok */
    printStrVideo("\n descProceso[0].tamCodigo = ") ;
    printHexVideo(descProceso[0].tamCodigo, 4) ;                     /* Ok */
    printStrVideo("\n descProceso[0].desplBSS = ") ;
    printHexVideo(descProceso[0].desplBSS, 4) ;                      /* Ok */
    printStrVideo("\n descProceso[0].desplPila = ") ;
    printHexVideo(descProceso[0].desplPila, 4) ;                     /* Ok */
    printStrVideo("\n descProceso[0].tamFichero = ") ;
    printLDecVideo(descProceso[0].tamFichero, 1) ;                   /* Ok */
#endif

//  /* descProceso[0].tCPU = 0 ; */           /* expresado en tics/(2**16) */

    descProceso[0].nfa = 0 ;
    for ( i = 0 ; i < dfMax ; i++ )               /* inicializacion de tfa */
    {
        descProceso[0].tfa[i].dfs = -1 ;
        descProceso[0].tfa[i].pos = 0 ;
        descProceso[0].tfa[i].modoAp = O_RDONLY ;
    }

    for ( i = 0 ; i < dfsMax ; i++ )      /* inicializacion de descFichero */
        descFichero[i].tipo = flibre ;

    switch (modoSO1())
    {
    case modoSO1_Bin:                                    /* so1.bin (boot) */
        strcpy(descProceso[0].comando, comandoSo1a) ;
        break ;
    case modoSO1_Exe:
        strcpy(descProceso[0].comando, comandoSo1b) ;
        break ;
//  case modoSO1_Bs :                           /* so1.bin (boot) SYSLINUX */
//      strcpy(descProceso[0].comando, comandoSo1c) ;
//      break ;
    default :
        ;
    }
    strcpy(descProceso[0].programa, strSo1[modoSO1()-1]) ;

    indProcesoActual = 0 ;
    indThreadDeSuperficie = 0 ;

    nivelActivacionSO1H = 0 ;

}

bool_t devolverParticion ( pindx_t pindx )
{
    if (!estaPC2c(pindx, (ptrC2c_t)&c2cPFR[POrdenados])) return(FALSE) ;
    eliminarPC2c(pindx, (ptrC2c_t)&c2cPFR[POrdenados]) ;
    return(k_devolverBloque(
               descProceso[pindx].CSProc,
               descProceso[pindx].tam)
          ) ;
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

int eliminarProcIndx ( pindx_t pindx )            /* elimina proceso pindx */
{
    descThread[pindx].estado = libre ;
    descProceso[pindx].pid = -1 ;
    eliminarPC2c(pindx, (ptrC2c_t)&c2cPFR[DPOcupados]) ;
    apilarPC2c(pindx, (ptrC2c_t)&c2cPFR[DPLibres]) ;
    return(0) ;
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
