/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                               manej_03.c                                */
/* ----------------------------------------------------------------------- */
/*       manejadores de las llamadas al sistema de soporte de drivers      */
/* ----------------------------------------------------------------------- */

/* ----------------------------------------------------------------------- */
/* AX: 0300H ==> obtenInfoSO1                                              */
/* AX: 0301H ==> crearRecurso                                              */
/* AX: 0302H ==> crearFichero                                              */
/* AX: 0303H ==> esperarDesinstalacion                                     */
/* AX: 0304H ==> destruirRecurso                                           */
/* AX: 0305H ==> encolarCcbRecurso                                         */
/* AX: 0306H ==> eliminarCcbRecurso                                        */
/* ----------------------------------------------------------------------- */

#include <so1h.h\ints.h>
#include <so1h.h\procs.h>
#include <so1h.h\blockpr.h>
#include <so1h.h\recurs.h>                                     /* crearRec */
#include <so1hpub.h\seccion.h>                             /* _start__text */

#if (0)

#include <so1pub.h\copia.h>
#include <so1pub.h\strings.h>
#include <so1pub.h\ll_s_so1.h>
#include <so1pub.h\ccb.h>
#include <so1pub.h\bios_0.h>
#include <so1.h\ajustes.h>
#include <so1.h\ajustsp.h>
#include <so1.h\interrup.h>
#include <so1.h\procesos.h>
#include <so1.h\blockpr.h>
#include <so1.h\recursos.h>
#include <so1.h\gm.h>

#endif

void cargarDescSO1H ( descSO1H_t * descSO1H )
{

//  /* en principio ccbAlEpilogo se inicializa en procs_0 para el caso de  */
//  /* SO1H. No obstante en el caso de SO1HIMG como las inicializaciones   */
//  /* no las hace SO1H_K sino SO1H_0 se debe ejecutar en este momento la  */
//  /* inicilizacion del puntero ccbAlEpilogo que se utiliza en el campo   */
//  /* descSO1H->ptrCcbAlEpilogo.                                          */  

	ccbAlEpilogo = (ccb_t)&descCcbAlEpilogo ;   /* necesario si no procs_0 */

    descSO1H->ptrIndProcesoActual      = (pindx_t *)&indProcesoActual ;
    descSO1H->ptrTramaThread           = (trama_t * *)&tramaThread ;
    descSO1H->ptrActivarAlEpilogo      = (bool_t *)&activarAlEpilogo1 ;
    descSO1H->ptrDescProceso           = (descProceso_t *)&descProceso ;
    descSO1H->tamDescProceso           = sizeof(descProcesoExt_t) ;
    descSO1H->ptrDescFichero           = (descFichero_t *)&descFichero ;
    descSO1H->ptrDescRecurso           = (descRecurso_t *)&descRecurso ;
    descSO1H->ptrC2cPFR                = (c2c_t *)&c2cPFR ;
    descSO1H->ptrE2PFR                 = (e2PFR_t *)&e2PFR ;
    descSO1H->ptrNivelActivacionSO1H   = (int *)&nivelActivacionSO1H ;
    descSO1H->ptrEnHalt                = (bool_t *)&enHalt ;
    descSO1H->ptrHayTic                = (bool_t *)&hayTic ;
    descSO1H->ptrCcbAlEpilogo          = (ccb_t *)&ccbAlEpilogo ; 
    descSO1H->ptrSS_Thread             = (word_t *)&SS_Thread ;
    descSO1H->ptrSP_Thread             = (word_t *)&SP_Thread ;
    descSO1H->ptrSS_Kernel             = (word_t *)&SS_Kernel ;
//descSO1H->SP0_Kernel               = (word_t *)SP0_Kernel ;
//descSO1H->SP0_So1                  = SP0_SO1 ;
    descSO1H->ptrContRodajas           = (dword_t *)&contRodajas ;
    descSO1H->ptrContTicsRodaja        = (int *)&contTicsRodaja ;
    descSO1H->ptrVIOrg                 = (rti_t *)&VIOrg ;
    descSO1H->sigThread                =
        (sigThread_t)MK_P((word_t)&_start__text, (word_t)sigThread) ;
    descSO1H->activarThread            =
        (activarThread_t)MK_P((word_t)&_start__text, (word_t)activarThread) ;
    descSO1H->buscarNuevoThreadActual  =
        (buscarNuevoThreadActual_t)MK_FP((word_t)&_start__text, (word_t)buscarNuevoThreadActual) ;
    descSO1H->bloquearThreadActual     =
        (bloquearThreadActual_t)MK_FP((word_t)&_start__text, (word_t)bloquearThreadActual) ;
}

extern void so1_manejador_03 ( )                       /* ah = 8 ; int SO1 */
{
#if (1)
    switch (tramaThread->AL)
    {

    case 0x00 :                                                    /* 0x0300 */
    {
        descSO1H_t * descSO1H ;                                /* obtenInfoSO1 */
        descSO1H = (descSO1H_t *)MK_P(tramaThread->ES, tramaThread->BX) ;
        cargarDescSO1H(descSO1H) ;
        break ;
    }
    case 0x01 :                                                    /* 0x0301 */
    {
        descRecurso_t * dR ;                                   /* crearRecurso */
        rindx_t rindx ;
        dR = (descRecurso_t *)MK_P(tramaThread->ES, tramaThread->BX) ;
        rindx = crearRec(dR) ;
        tramaThread->AX = rindx ;
        break ;
    }
    case 0x02 :                                                    /* 0x0302 */
    {
        char * nombre ;                                        /* crearFichero */
        rindx_t rindx ;
        word_t menor ;
        tipoFichero_t tipo ;
        nombre = (char *)pointer(tramaThread->ES, tramaThread->BX) ;
        rindx = tramaThread->CX ;
        menor = tramaThread->DX ;
        tipo = tramaThread->SI ;
        tramaThread->AX = crearFich(nombre, rindx, menor, tipo) ;
        break ;
        }                                                              /* 0x0303 */
    case 0x03 :                                     /* esperarDesinstalacion */
    {
        bloquearThreadActual(rec_desinstalacion) ;
        break ;
        }                                                              /* 0x0304 */
    case 0x04 :                                           /* destruirRecurso */
    {
        tramaThread->AX =
            destruirRec((char *)pointer(tramaThread->ES, tramaThread->BX)) ;
        break ;
        }                                                              /* 0x0305 */
    case 0x05 : ;                                       /* encolarCcbRecurso */
    case 0x06 :                                        /* eliminarCcbRecurso */
    {
        callBack_t cb ;
        rindx_t rindx ;
        bool_t enc = FALSE ;
        int res ;
        rindx = c2cPFR[DROcupados].primero ;                  /* ver si existe */
        while (rindx != c2cPFR[DROcupados].cabecera)
        {
//    if (iguales(descRecurso[rindx].nombre,
//                (char *)pointer(tramaThread->CX, tramaThread->BX))) {
            if (strcmp(descRecurso[rindx].nombre,
                       (char *)pointer(tramaThread->CX, tramaThread->BX)) == 0)
            {
                enc = TRUE ;
                break ;                                          /* sale del bucle */
            }
            rindx = c2cPFR[DROcupados].e[rindx].sig ;
        }
        if (!enc) res = -1 ;                           /* el recurso no existe */
        else
        {
            cb = (callBack_t)pointer(tramaThread->ES, tramaThread->DX) ;
            switch (tramaThread->AL)
            {
            case 0x05 :
                res = encolarCcb(cb, descRecurso[rindx].ccb) ;   /* 0, -1, ..., -3 */
                break ;
            case 0x06 :
                res = eliminarCcb(cb, descRecurso[rindx].ccb) ;  /* 0, -1, ..., -4 */
                break ;
            }
            if (res < 0) res-- ;
        }
        tramaThread->AX = res ;
        break ;
    }
    default :
        ;
    }
#endif
}

