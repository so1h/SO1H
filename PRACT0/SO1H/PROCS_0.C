/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                procs_0.c                                */
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

char strSo1h [4][12] = { "SO1H.BIN", "SO1H.EXE", "SO1H.SLX" } ;

char comandoSo1a [tamComando] = "boot de disquete" ;

char comandoSo1b [tamComando] = "SO1H (desde MSDOS)" ;

//char comandoSo1c [tamComando] = "SO1 (desde SYSLINUX)" ;

void inicProcesos ( void )
{

    pindx_t i ;

    ccbAlEpilogo = (ccb_t)&descCcbAlEpilogo ;

//  /* inicializamos las colas: */

    inicPC2c(&c2cPFR[DPLibres],    &e2PFR.e2DescProceso.Libres,   maxProcesos,     FALSE) ;
    inicPC2c(&c2cPFR[DPOcupados],  &e2PFR.e2DescProceso.Ocupados, maxProcesos + 1, TRUE) ;
    inicPC2c(&c2cPFR[DTLibres],    &e2PFR.e2DescThread.Libres,    maxThreads,      FALSE) ;
    inicPC2c(&c2cPFR[DTOcupados],  &e2PFR.e2DescThread.Ocupados,  maxThreads + 1,  TRUE) ;
    inicPC2c(&c2cPFR[TPreparados], &e2PFR.e2Preparados,           maxThreads,      FALSE) ;
    inicPC2c(&c2cPFR[TUrgentes],   &e2PFR.e2Urgentes,             maxThreads,      FALSE) ;
    inicPC2c(&c2cPFR[POrdenados],  &e2PFR.e2POrdenados,           maxProcesos,     FALSE) ;
    inicPC2c(&c2cPFR[TDormidos],   &e2PFR.e2TDormidos,            maxThreads,      FALSE) ;

//  /* inicializamos descProceso[0]: proceso SO1H y nucleo */

    descProceso[0].pid = nuevoPid() ;              /* el proceso 0 es SO1H */
    descProceso[0].uid = 0 ;                                       /* root */
    descProceso[0].gid = 0 ;                                       /* root */
    descProceso[0].noStatus = TRUE ;           /* puede morir directamente */
    descProceso[0].ppindx = -1 ;                         /* no tiene padre */
    descProceso[0].hpindx = -1 ;        /* no espera a que termine un hijo */
    inicPC2c(&descProceso[0].c2cHijos, &e2PFR.e2Hijos, maxProcesos + 0, FALSE) ;
    inicPC2c(&descProceso[0].c2cThreads, &e2PFR.e2Threads, maxThreads + 0, FALSE) ;
    descProceso[0].CSProc = CS_SO1H ;
    descProceso[0].tam = SS_SO1H - CS_SO1H ;
    descProceso[0].tamCodigo = &_stop__text - &_start__text + sizeof(cabecera_t) ;
    descProceso[0].desplBSS = &_start__bss - ((dword_t)&_start__data & 0xFFFFFFF0) ;
    descProceso[0].desplPila = &_stop__bss - ((dword_t)&_start__data & 0xFFFFFFF0) ;
    descProceso[0].tamFichero = &_stop__data - &_start__text + sizeof(cabecera_t) ;
//  descProceso[0].programa[0] = (char)0 ;
//  descProceso[0].tCPU = 0 ;             /* tiempo de CPU en (tics/2**16) */

    apilarPC2c(0, (ptrC2c_t)&c2cPFR[DPOcupados]) ;           /* apilamos 0 */
    apilarPC2c(0, (ptrC2c_t)&c2cPFR[POrdenados]) ;           /* apilamos 0 */

//  /* inicializamos descThread[0]: thread SO1H */

    descThread[0].SSThread = SS_SO1H ;
    descThread[0].SP0 = SP0_SO1H ;
    descThread[0].tid = nuevoTid() ;
    descThread[0].estado = ejecutandose ;
//  descThread[0].trama = (trama_t *)NULL ;              /* (en ejecucion) */
    descThread[0].noStatus = TRUE ;            /* puede morir directamente */
//  descThread[0].status = 0 ;
    descThread[0].ptindx = -1 ;           /* no lo creo ningun otro thread */
    descThread[0].htindx = -1 ;                   /* no espera ningun join */
    descThread[0].pindx = 0 ;
//  descThread[0].tCPU = 0 ;              /* tiempo de CPU en (tics/2**16) */

    apilarPC2c(0, (ptrC2c_t)&c2cPFR[DTOcupados]) ;           /* apilamos 0 */
    apilarPC2c(0, (ptrC2c_t)&descProceso[0].c2cThreads) ;    /* apilamos 0 */

//  /* inicializamos la pila del nucleo SS_Kernel y SP0_Kernel (ajustsp.h) */

    SS_Kernel = SS_SO1H + ((SP0_SO1H + 15)/16) ;        /* pila del nucleo */

//  /* inicializamos el resto de descriptores de proceso */

    for ( i = maxProcesos-1 ; i > 0 ; i-- )    /* todos menos el proceso 0 */
    {
        descProceso[i].pid = -1 ;
        descProceso[i].uid = -1 ;
        descProceso[i].gid = -1 ;
        descProceso[i].ppindx = -1 ;                     /* no tiene padre */
        descProceso[i].hpindx = -1 ;    /* no espera a que termine un hijo */
//      descProceso[i].noStatus = TRUE ;       /* puede morir directamente */
//      inicPC2c(&descProceso[i].c2cHijos, &e2PFR.e2Hijos, maxProcesos + i, TRUE) ;
//      inicPC2c(&descProceso[i].c2cThreads, &e2PFR.e2Threads, maxThreads + i, TRUE) ;
        descProceso[i].CSProc = 0x0000 ;
        descProceso[i].tam = 0 ;
        descProceso[i].tamCodigo = 0x0000 ;
        descProceso[i].desplBSS = 0x0000 ;
        descProceso[i].desplPila = 0x0000 ;
        descProceso[i].tamFichero = 0 ;
        descProceso[i].programa[0] = (char)0 ;
//      descProceso[i].tCPU = 0 ;         /* tiempo de CPU en (tics/2**16) */

        apilarPC2c(i, (ptrC2c_t)&c2cPFR[DPLibres]) ;         /* apilamos i */
    }

//  /* inicializamos el resto de descriptores de thread */

    for ( i = maxThreads-1 ; i > 0 ; i-- )      /* todos menos el trhead 0 */
    {
        descThread[i].tid = -1 ;
        descThread[i].estado = libre ;
//      descThread[i].trama = (trama_t *)NULL ;
//      descThread[i].noStatus = TRUE ;        /* puede morir directamente */
//      descThread[i].status = 0 ;
//      descThread[i].ptindx = -1 ;       /* no lo creo ningun otro thread */
//      descThread[i].htindx = -1 ;               /* no espera ningun join */
        descThread[i].pindx = -1 ;
        descThread[i].SSThread = 0x0000 ;
        descThread[i].SP0 = 0x0000 ;
//      descThread[i].tCPU = 0 ;          /* tiempo de CPU en (tics/2**16) */

        apilarPC2c(i, (ptrC2c_t)&c2cPFR[DTLibres]) ;         /* apilamos i */
    }

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

}

