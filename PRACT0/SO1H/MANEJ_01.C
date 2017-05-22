/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                               manej_01.c                                */
/* ----------------------------------------------------------------------- */
/*          manejador de las llamadas al sistema del grupo AH = 01         */
/* ----------------------------------------------------------------------- */

/* ----------------------------------------------------------------------- */
/* AX = 0x0100 createProcess                                               */
/* AX = 0x0101 fork                                                        */
/* AX = 0x0102 exec                                                        */
/* AX = 0x0103 waitpid                                                     */
/* AX = 0x0104 exit                                                        */
/* AX = 0x0105 getpid                                                      */
/* AX = 0x0106 getpindx                                                    */
/* AX = 0x0107 getppid()                                                   */
/* AX = 0x0108 getuid()                                                    */
/* AX = 0x0109 setuid(uid)                                                 */
/* AX = 0x010a getgid()                                                    */
/* AX = 0x010b setuid(gid)                                                 */
/* AX = 0x010c kill                                                        */
/* ----------------------------------------------------------------------- */

#include <so1hpub.h\tipos.h>
#include <so1hpub.h\printvid.h>
#include <so1h.h\procs.h>
#include <so1h.h\blockpr.h>
#include <so1hpub.h\ll_s_thr.h>                        /* thread_attribs_t */
#include <so1h.h\dokill.h>                                       /* dokill */
#include <so1h.h\ejecutar.h>

#if (0)

#include <so1pub.h\strings.h>
#include <so1pub.h\ptrc2c.h>
#include <so1.h\ajustes.h>
#include <so1.h\bios.h>

#endif

void bloquearEsperandoHijo ( pindx_t hpindx )
{
    descProceso[indProcesoActual].hpindx = hpindx ;
    bloquearThreadActual(rec_hijo) ;
}

void so1_manejador_01 ( void )                        /* ah = 01 ; int SO1 */
{

    static int i ;
    static pid_t pid ;
    static pid_t hpid ;
    static pindx_t pindx ;
    static pindx_t hpindx ;
    static bool_t noStatus ;

    switch (tramaThread->AL)
    {

    case 0x00 :                          /* createProcess */ /* 0x0100 */
#if (0)
        printStrBIOS("\n manej_00 createProcess ") ;
//printStrBIOS(" pid = ") ;
//printDecBIOS(descProceso[indProcesoActual].pid, 1) ;
#endif
    case 0x01 :                                   /* fork */ /* 0x0101 */

        if (c2cPFR[DPOcupados].numElem >= (maxProcesos-1))
        {
            tramaThread->DX = -10 ;                 /* codigo de error */
            break ;
        }

//          descProceso[indProcesoActual].trama = tramaThread ;
        descThread[indThreadActual].trama = tramaThread ;

        if (tramaThread->AL == 0x01)                           /* fork */
            pindx = kk_fork() ;
        else
        {
            /* createProcess */
            pindx = preEjecutarMacro(
                        MK_FP(tramaThread->CX, tramaThread->BX),  /* CX:BX nombre  */
                        MK_FP(tramaThread->ES, tramaThread->DX),  /* ES:DX comando */
                        -1                                    /* createProcess: -1 */
                    ) ;
        }

        if (pindx >= 0)
        {

            /* avisar por consola cuando quede un unico descProceso libre */

            if (c2cPFR[DPOcupados].numElem == (maxProcesos-2))
            {

                printStrBIOS("\n solo queda un descriptor de proceso libre ") ;
//                  printStrBIOS("\n c2cPFR[DPOcupados].numElem = ") ;
//                  printDecBIOS(c2cPFR[DPOcupados].numElem, 1) ;
//                  printStrBIOS(" maxProcesos = ") ;
//                  printDecBIOS(maxProcesos, 1) ;
//                  printStrBIOS(" pindx = ") ;
//                  printDecBIOS(pindx, 1) ;
            }

            /* imponemos que se ejecute a continuacion en la CPU primero el    */
            /* proceso hijo pindx y luego el proceso padre indProcesoActual.   */
            /* Para ello apilamos en la cola intermedia PUrgentes, la cual el  */
            /* planificador incorpora a la cola de preparados desapilando de   */
            /* PUrgentes y apilando en PPreparados.                            */
            /* esto es crucial en las inicializaciones (INICCODE.C).           */

//              descProceso[pindx].estado = preparado ;
            descThread[pindx].estado = preparado ;
//              encolarPC2c(pindx, (ptrC2c_t)&c2cPFR[PUrgentes]) ;
            apilarPC2c(pindx, (ptrC2c_t)&c2cPFR[TUrgentes]) ;

//              descProceso[indProcesoActual].estado = preparado ;
            descThread[indThreadActual].estado = preparado ;
//              encolarPC2c(indProcesoActual, (ptrC2c_t)&c2cPFR[PUrgentes]) ;
            apilarPC2c(indThreadActual, (ptrC2c_t)&c2cPFR[TUrgentes]) ;

            /* se ejecutara pindx antes que indProcesoActual */
            if (tramaThread->AL == 0x01)                       /* fork */
                descThread[pindx].trama->DX = 0x0000 ;      /* hijo DX */
            tramaThread->DX = descProceso[pindx].pid ;     /* padre DX */
            buscarNuevoThreadActual() ; /* ¡no se retorna de esta funcion! */
        }                           /* =============================== */
        else
            tramaThread->DX = pindx ;                /* codigo de error */
        break ;

    case 0x02 :                                   /* exec */ /* 0x0102 */
#if (0)
        printStrBIOS("\n manej_00 exec ") ;
#endif
        pindx = preEjecutarMacro(
                    MK_FP(tramaThread->CX, tramaThread->BX),  /* CX:BX nombre  */
                    MK_FP(tramaThread->ES, tramaThread->DX),  /* ES:DX comando */
                    indProcesoActual                 /* exec: indProcesoActual */
                ) ;

#if (0)
        printStrBIOS("\n pindx = ") ;
        printIntBIOS(pindx, 1) ;
        printStrBIOS(" pid = ") ;
        printIntBIOS(descProceso[pindx].pid, 1) ;
        printStrBIOS(" estado = ") ;
        printIntBIOS(descProceso[pindx].estado, 1) ;
        printStrBIOS("\n CSProc = 0x") ;
        printHexBIOS(descProceso[pindx].CSProc, 4) ;
        printStrBIOS("\n programa = ") ;
        printStrBIOS("\"") ;
        printStrHastaBIOS(descProceso[pindx].programa, 12, FALSE) ;
        printStrBIOS("\"") ;
        printStrBIOS("\n comando = \"") ;
        printStrBIOS((char *)&descProceso[pindx].comando) ;
        printStrBIOS("\"") ;
#endif

        if (pindx < -5)                                 /* error fatal */
        {
//             descProceso[indProcesoActual].estado = bloqueado ;
            descThread[indThreadActual].estado = bloqueado ;
            descThread[indThreadActual].esperandoPor = rec_zombie ;
            eliminarProcIndx(indProcesoActual) ;
            eliminarPC2c(descProceso[indProcesoActual].ppindx,
                         (ptrC2c_t)&descProceso[indProcesoActual].c2cHijos) ;
            buscarNuevoThreadActual() ;  /* ¡no se retorna de esta funcion! */
        }                           /* =============================== */
        else if (pindx < 0)                              /* error leve */
            break ;                      /* el procesoActual se retoma */
        else   /* el proceso recubierto pasa a (comienza su) ejecucion */
            activarThread(pindx) ;    /* no se retorna de esta funcion */

    /* 0x0103 */
    case 0x03 :                                             /* waitpid */
        hpid = tramaThread->BX ;                       /* pid del hijo */
        hpindx = indice(hpid) ;
        if ((hpid >= 0) && (hpindx == -1))           /* hpid no existe */
            tramaThread->BX = -1 ;                       /* pidDifunto */
        else
        {
            if (hpid == -1)                    /* buscar hijos zombies */
            {
                i = 0 ;
                while ((i < maxProcesos) &&
                        ((descProceso[i].ppindx != indProcesoActual) ||   /* hijo */
                         (descThread[i].estado != bloqueado) ||
                         (descThread[i].esperandoPor != rec_zombie)))  /* zombie */
                    i++ ;
                if (i < maxProcesos) hpindx = i ;/* primer hijo zombie */
                else hpindx = -1 ;
            }
            if ((hpindx != -1) &&     /* terminar de matar hijo zombie */
                    (descProceso[hpindx].ppindx == indProcesoActual) &&
                    (descThread[hpindx].estado == bloqueado) &&
                    (descThread[hpindx].esperandoPor == rec_zombie))
            {
                tramaThread->AX = descProceso[hpindx].status ;  /* status */
                tramaThread->BX = descProceso[hpindx].pid ; /* pidDifunto */
                eliminarProcIndx(hpindx) ;

                eliminarPC2c(hpindx, (ptrC2c_t)&descProceso[indProcesoActual].c2cHijos) ;

            }
            else
            {
                /* no hay hijo(s) zombies */
                noStatus = tramaThread->DX ;
                if (hpid != -1)
                {
                    if (noStatus)
                    {
                        descProceso[hpindx].noStatus = TRUE ;
                        tramaThread->BX = 0 ;            /* pidDifunto */
                    }
                    else bloquearEsperandoHijo(hpindx) ;
                }
                else if (noStatus)
                {
                    i = 0 ;
                    while (i < maxProcesos)
                    {
                        if (descProceso[i].ppindx == indProcesoActual)       /* hijo */
                            descProceso[i].noStatus = TRUE ;
                        i++ ;
                    }
                    tramaThread->BX = 0 ;                           /* pidDifunto */
                }
                else
                {
                    i = 0 ;
                    while ((i < maxProcesos) &&
                            (descProceso[i].ppindx != indProcesoActual))    /* hijo */
                        i++ ;
                    if (i < maxProcesos)                         /* hay algun hijo */
                    {
                        descProceso[indProcesoActual].hpindx = -1 ;
                        /*
                                      if (indProcesoActual == indProcesoDeSuperficie)
                                        focalizarWin(descProceso[i].win) ;
                        */
                        bloquearThreadActual(rec_hijo) ;
                    }
                    else                                           /* no hay hijos */
                        tramaThread->BX = -1 ;                        /* pidDifunto */
                }
            }
        }
        break ;
    /* 0x0104 */
    case 0x04 :                                                /* exit */
        doKill(indProcesoActual) ;
        break ;
    /* 0x0105 */
    case 0x05 :                                              /* getpid */
        tramaThread->BX = descProceso[indProcesoActual].pid ;
        break ;
    /* 0x0106 */
    case 0x06 :                                            /* getpindx */
        tramaThread->BX = indProcesoActual ;
        break ;
    /* 0x0107 */
    case 0x07 :                                             /* getppid */
        tramaThread->BX =
            descProceso[descProceso[indProcesoActual].ppindx].pid ;
        break ;
    /* 0x0108 */
    case 0x08 :                                              /* getuid */
        tramaThread->BX =
            descProceso[indProcesoActual].uid ;
        break ;
        /* 0x0109 */                                                                 /* 0x0008 */
    case 0x09 :                                              /* setuid */
        descProceso[indProcesoActual].uid = tramaThread->BX ;
        break ;
    /* 0x010a */
    case 0x0a :                                              /* getgid */
        tramaThread->BX =
            descProceso[indProcesoActual].gid ;
        break ;
    /* 0x010b */
    case 0x0b :                                              /* setgid */
        descProceso[indProcesoActual].gid = tramaThread->BX ;
        break ;
    /* 0x010c */
    case 0x0c :                                                /* kill */
        pid = (pid_t)tramaThread->DX ;
        if (pid >= 0)
        {
            /* matar el proceso pid */
            i = indice(pid) ;
            tramaThread->BX = (word_t)((i != -1) ? matarProcIndx(i) : -2) ;
        }
        else
        {
            /* matar todos los procesos */
            for ( i = 1 ; i < maxProcesos ; i++ )
                matarProcIndx(i) ;
            tramaThread->BX = 0 ;
            if (indProcesoActual > 0)
                buscarNuevoThreadActual() ;
        }
        break ;

    default :
        ;

    }

}

