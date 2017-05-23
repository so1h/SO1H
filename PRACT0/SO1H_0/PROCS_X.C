/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                procs_x.c                                */
/* ----------------------------------------------------------------------- */
/*                      Gestion de procesos y threads                      */
/* ----------------------------------------------------------------------- */

#include <so1hpub.h\def_proc.h> /* descSO1H_t, camposDescSO1H, dirDescSO1H */
#include <so1h_0.h\so1h_0.h>          /* dirInicial, reubicacion_t, numEDF */
#include <so1h_0.h\procs_x.h>   

/* campos de descSO1H declarados como variables: NO MODIFICAR */

camposDescSO1H(volatile) 

/* fin campos de descSO1H declarados como variables */

void inicProcesos_x ( void ) 
{
    pindx_t i ;
	int ind ;                          /* indice para la tabla reubicacion */
	
//  /* inicializamos las colas: */

    inicPC2c(&ptrC2cPFR[DPLibres],    &ptrE2PFR->e2DescProceso.Libres,   maxProcesos,     FALSE) ;
    inicPC2c(&ptrC2cPFR[DPOcupados],  &ptrE2PFR->e2DescProceso.Ocupados, maxProcesos + 1, TRUE) ;
    inicPC2c(&ptrC2cPFR[DTLibres],    &ptrE2PFR->e2DescThread.Libres,    maxThreads,      FALSE) ;
    inicPC2c(&ptrC2cPFR[DTOcupados],  &ptrE2PFR->e2DescThread.Ocupados,  maxThreads + 1,  TRUE) ;
    inicPC2c(&ptrC2cPFR[TPreparados], &ptrE2PFR->e2Preparados,           maxProcesos,     FALSE) ;
    inicPC2c(&ptrC2cPFR[TUrgentes],   &ptrE2PFR->e2Urgentes,             maxProcesos,     FALSE) ;
    inicPC2c(&ptrC2cPFR[POrdenados],  &ptrE2PFR->e2POrdenados,           maxProcesos,     FALSE) ;
    inicPC2c(&ptrC2cPFR[TDormidos],   &ptrE2PFR->e2TDormidos,            maxProcesos,     FALSE) ;

	for ( ind = 2 ; ind < (numEDF-2) ; ind++ ) {       /* reubicacion[ind] */

    	i = ind - 2 ;                      /* inicializamos descProceso[i] */
        ptrDescProceso[i].pid = i ;                          /* nuevoPid() */    
        ptrDescProceso[i].uid = 0 ;                                /* root */
        ptrDescProceso[i].gid = 0 ;                                /* root */
        ptrDescProceso[i].noStatus = TRUE ;    /* puede morir directamente */
        ptrDescProceso[i].ppindx = -1 ;                  /* no tiene padre */
        ptrDescProceso[i].hpindx = -1 ; /* no espera a que termine un hijo */
        inicPC2c(&ptrDescProceso[i].c2cHijos, &ptrE2PFR->e2Hijos, maxProcesos + i, FALSE) ;
        inicPC2c(&ptrDescProceso[i].c2cThreads, &ptrE2PFR->e2Threads, maxThreads + i, FALSE) ;
		
        ptrDescProceso[i].CSProc = reubicacion[ind].destino - sizeof(cabecera_t) ;
        ptrDescProceso[i].tam = reubicacion[ind].entradaDF.SS ;
//      ptrDescProceso[i].tamCodigo =                              /* ???? */
//      ptrDescProceso[i].desplBSS =                               /* ???? */
//      ptrDescProceso[i].desplPila =                              /* ???? */
        ptrDescProceso[i].tamFichero = reubicacion[ind].entradaDF.tam ;
//      ptrDescProceso[i].programa[0] = (char)0 ;
//      ptrDescProceso[i].tCPU = 0 ;      /* tiempo de CPU en (tics/2**16) */
        
		apilarPC2c(i, (ptrC2c_t)&ptrC2cPFR[DPOcupados]) ;    /* apilamos i */
        apilarPC2c(i, (ptrC2c_t)&ptrC2cPFR[POrdenados]) ;    /* apilamos i */
		
//      /* inicializamos descThread[i] */

//      ptrDescThread[i].SSThread =                                /* ???? */ 
        ptrDescThread[i].SP0 = reubicacion[ind].entradaDF.SP0 ;
        ptrDescThread[i].tid = i ;                           /* nuevoTid() */
        ptrDescThread[i].estado = ejecutandose ;                   /* ???? */
//      ptrDescThread[i].trama = (trama_t *)NULL ;       /* (en ejecucion) */
        ptrDescThread[i].noStatus = TRUE ;     /* puede morir directamente */
//      ptrDescThread[i].status = 0 ;
        ptrDescThread[i].ptindx = -1 ;    /* no lo creo ningun otro thread */
        ptrDescThread[i].htindx = -1 ;            /* no espera ningun join */
        ptrDescThread[i].pindx = i ;
//      ptrDescThread[i].tCPU = 0 ;       /* tiempo de CPU en (tics/2**16) */

        apilarPC2c(i, (ptrC2c_t)&ptrC2cPFR[DTOcupados]) ;    /* apilamos 0 */
        apilarPC2c(i, (ptrC2c_t)&ptrDescProceso[i].c2cThreads) ; /* api. 0 */

	}

//  /* inicializamos la pila del nucleo SS_Kernel y SP0_Kernel (ajustsp.h) */

    *ptrSS_Kernel = ((dirInicial - sizeof(cabecera_t)) >> 4) + 
		                reubicacion[2].entradaDF.SS ;   
    *ptrSP0_Kernel = reubicacion[2].entradaDF.SP0 ; /* pila del nucleo */

//  /* inicializamos el resto de descriptores de proceso */
//  /* en orden inverso por estetica */

    for ( i = maxProcesos-1 ; i >= (numEDF - 3) ; i-- )  
    {
        ptrDescProceso[i].pid = -1 ;
        ptrDescProceso[i].uid = -1 ;
        ptrDescProceso[i].gid = -1 ;
        ptrDescProceso[i].ppindx = -1 ;                 /* no tiene padre */
        ptrDescProceso[i].hpindx = -1 ;/* no espera a que termine un hijo */
//      ptrDescProceso[i].noStatus = TRUE ;   /* puede morir directamente */
//      inicPC2c(&ptrDescProceso[i].c2cHijos, &ptrE2PFR->e2Hijos, maxProcesos + i, TRUE) ;
//      inicPC2c(&ptrDescProceso[i].c2cThreads, &ptrE2PFR->e2Threads, maxThreads + i, TRUE) ;
        ptrDescProceso[i].CSProc = 0x0000 ;
        ptrDescProceso[i].tam = 0 ;
        ptrDescProceso[i].tamCodigo = 0x0000 ;
        ptrDescProceso[i].desplBSS = 0x0000 ;
        ptrDescProceso[i].desplPila = 0x0000 ;
        ptrDescProceso[i].tamFichero = 0 ;
        ptrDescProceso[i].programa[0] = (char)0 ;
//      ptrDescProceso[i].tCPU = 0 ;    /* tiempo de CPU en (tics/2**16) */

        apilarPC2c(i, (ptrC2c_t)&ptrC2cPFR[DPLibres]) ;    /* apilamos i */
    }

//  /* inicializamos el resto de descriptores de thread */

    for ( i = maxThreads-1 ; i > 0 ; i-- )      /* todos menos el trhead 0 */
    {
        ptrDescThread[i].tid = -1 ;
        ptrDescThread[i].estado = libre ;
//      ptrDescThread[i].trama = (trama_t *)NULL ;
//      ptrDescThread[i].noStatus = TRUE ;        /* puede morir directamente */
//      ptrDescThread[i].status = 0 ;
//      ptrDescThread[i].ptindx = -1 ;       /* no lo creo ningun otro thread */
//      ptrDescThread[i].htindx = -1 ;               /* no espera ningun join */
        ptrDescThread[i].pindx = -1 ;
        ptrDescThread[i].SSThread = 0x0000 ;
        ptrDescThread[i].SP0 = 0x0000 ;
//      ptrDescThread[i].tCPU = 0 ;          /* tiempo de CPU en (tics/2**16) */

        apilarPC2c(i, (ptrC2c_t)&ptrC2cPFR[DTLibres]) ;         /* apilamos i */
    }

#if (0)	
	
#if (0)
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
    printLnVideo() ;
#endif

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
    case modoSO1_Bin:                                   /* so1h.bin (boot) */
        strcpy(descProceso[0].comando, comandoSo1a) ;
        break ;
    case modoSO1_Exe:                                          /* so1h.exe */
        strcpy(descProceso[0].comando, comandoSo1b) ;
        break ;
//  case modoSO1_Bs :                           /* so1.bin (boot) SYSLINUX */
//      strcpy(descProceso[0].comando, comandoSo1c) ;
//      break ;
    default :
        ;
    }
    strcpy(descProceso[0].programa, strSo1h[modoSO1()-1]) ;

    indProcesoActual = 0 ;

    indThreadActual = 0 ;

    indThreadDeSuperficie = 0 ;

    nivelActivacionSO1H = 0 ;

#endif
	
}

#if (0)
	
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

char strSo1h [4][12] = { "SO1H.BIN", "SO1H.EXE", "SO1H.SLX" } ;

char comandoSo1a [tamComando] = "boot de disquete" ;

char comandoSo1b [tamComando] = "SO1H (desde MSDOS)" ;

//char comandoSo1c [tamComando] = "SO1 (desde SYSLINUX)" ;

#endif