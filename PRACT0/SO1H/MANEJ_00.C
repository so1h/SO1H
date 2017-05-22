/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                               manej_00.c                                */
/* ----------------------------------------------------------------------- */
/*          manejador de las llamadas al sistema del grupo AH = 00         */
/* ----------------------------------------------------------------------- */

/* ----------------------------------------------------------------------- */
/*            llamadas al sistema correspondientes a los threads:          */
/* ----------------------------------------------------------------------- */
/* AX = 0x0000 : err = thread_create(&tid, &attribs, &funcion, &arg)       */
/* AX = 0x0001 : tid = thread_join(tid, &res)                              */
/* AX = 0x0002 :       thread_exit(&res)                                   */
/* AX = 0x0003 :       thread_yield()                                      */
/* AX = 0x0004 : tid = thread_self()                                       */
/* ----------------------------------------------------------------------- */

#include <so1hpub.h\tipos.h>
#include <so1hpub.h\printvid.h>
#include <so1h.h\procs.h>
#include <so1h.h\blockpr.h>
#include <so1hpub.h\ll_s_thr.h>                        /* thread_attribs_t */


static int thr_join ( tid_t tid, void * * res )
{

    tindx_t tindx ;

    ptrC2c_t ptrC2cThreads =         /* cola de threads del proceso actual */

        (ptrC2c_t)&descProceso[indProcesoActual].c2cThreads ;

    if (tid == -1)                /* mirar si ya ha terminado algun thread */
    {
        tindx = ptrC2cThreads->e[indThreadActual].sig ;

        for ( int i = 0 ; i < ptrC2cThreads->numElem ; i++ )
        {
            if ((descThread[tindx].estado == bloqueado) &&
                    (descThread[tindx].esperandoPor == rec_thr_zombie))
            {
                if (res != NULL)
                    *(void * *)res = (void *)(descThread[tindx].status) ;
                eliminarThreadIndx(tindx) ;
                eliminarPC2c(tindx, ptrC2cThreads) ;
                return(descThread[tindx].tid) ;
            }
            tindx = ptrC2cThreads->e[tindx].sig ;
        }
        bloquearThreadActual(rec_thr_hijo) ;              /* no se retorna */
    }

    if (tid < 0) return (-1) ;                             /* error en tid */

    tindx = indice(tid) ;

    if (tindx == -1) return(-2) ;                  /* error: tid no existe */

    if (descThread[tindx].noStatus) return(-3) ; /* error: tid no joinable */

    if ((descThread[tindx].estado == bloqueado) &&
            (descThread[tindx].esperandoPor == rec_thr_zombie))
    {
        if (res != NULL)
            *(void * *)res = descThread[tindx].status ;
        eliminarThreadIndx(tindx) ;
        eliminarPC2c(tindx, ptrC2cThreads) ;
        return(tid) ;
    }
    else
    {
        bloquearThreadActual(rec_thr_hijo) ;
    }

}

static int thr_exit ( void * res )                    /* el thread termina */
{

    if (indThreadActual == descProceso[indProcesoActual].c2cThreads.primero)
    {
        /* simular exit(*(int *)tramaProceso->EBX) ; */ /* no se retorna aqui */
    }

    ptrC2c_t ptrC2cThreads =         /* cola de threads del proceso actual */

        (ptrC2c_t)&descProceso[indProcesoActual].c2cThreads ;

    if (!descThread[indThreadActual].noStatus)
    {

        tindx_t tindx = ptrC2cThreads->primero ;

        for ( int i = 0 ; i < ptrC2cThreads->numElem ; i++ )
        {
            if ((descThread[tindx].estado == bloqueado) &&
                    (descThread[tindx].esperandoPor == rec_thr_hijo) &&
                    ((descThread[tindx].trama->ECX == indThreadActual) ||
                     (descThread[tindx].trama->ECX == -1)))
            {
                descThread[tindx].trama->EAX =
                    descThread[indThreadActual].tid ;           /* difunto */
                *(void * *)(descThread[tindx].trama->EBX) = res ;   /* res */
                descThread[tindx].estado = preparado ;
                encolarPC2c(tindx, (ptrC2c_t)&c2cPFR[TUrgentes]) ;/* sigue */
                break ;
            }

            tindx = ptrC2cThreads->e[tindx].sig ;
        }

        if (tindx == ptrC2cThreads->cabecera)  /* no hay threads esperando */
        {
            descThread[indThreadActual].status = tramaThread->EBX ;
            terminarThreadIndx(indThreadActual) ;
            bloquearThreadActual(rec_thr_zombie) ;        /* no se retorna */
        }

    }
    eliminarPC2c(indThreadActual, ptrC2cThreads) ;
    matarThreadIndx(indThreadActual) ;
    buscarNuevoThreadActual() ;

}

void so1_manejador_00 ( void )                       /* ah = 00 ; int SO1H */
{

    switch (tramaThread->AL)
    {

    case 0x00 :                                       /* thread_create */
    {
        tid_t * tid = tramaThread->ESI ;                /* tid */
        thread_attribs_t * attribs = tramaThread->EDX ; /* atr */
        void * ( * funcionInicial ) = tramaThread->ECX ;  /* f */
        void * arg = tramaThread->EBX ;                 /* arg */
        word_t SP0 ;
        if (attribs == NULL)
            SP0 = 0x4000 ;   /* tamanio por defecto de la pila */
        else
            SP0 = attribs->SP0 ;
        tindx_t tindx =
            crearThread
            (
                funcionInicial,
                SP0,
                arg,
                indProcesoActual
            ) ;
        if (tindx >= 0)
        {
            tramaThread->EAX = 0 ;                       /* Ok */
            *tid = descThread[tindx].tid ;
            if ((attribs != NULL) &&
                    (!(attribs->opciones & opcionNoStatus)))
                descThread[tindx].noStatus = FALSE ; /* status */
        }
        else
            tramaThread->EAX = tindx ;        /* codigo de error */
        break ;
    }
    case 0x01 :                                         /* thread_join */

//printStrVideo("\n thread_join tid = ") ;
//printLIntVideo(tramaThread->ECX, 1) ;
//printStrVideo(" res = ") ;
//printLIntVideo(tramaThread->EBX, 1) ;

        tramaThread->EAX =
            thr_join
            (
                tramaThread->ECX,              /* tid_t    tid */
                tramaThread->EBX               /* void * * res */
            ) ;
        break ;

    case 0x02 :                                         /* thread_exit */

//printStrVideo("\n thread_exit indThreadActual = ") ;
//printLIntVideo(indThreadActual, 1) ;
//printStrVideo(" res = ") ;
//printLIntVideo(tramaThread->EBX, 1) ;

        thr_exit(tramaThread->EBX) ;             /* void * res */
        break ;

    case 0x03 :                                        /* thread_yield */

        descThread[indThreadActual].trama = tramaThread ;
        descThread[indThreadActual].estado = preparado ;
        encolarPC2c(indThreadActual, (ptrC2c_t)&c2cPFR[TPreparados]) ;
        buscarNuevoThreadActual() ;
        break ;

    case 0x04 :                                         /* thread_self */

        tramaThread->EAX = descThread[indThreadActual].tid ;
        break ;

    default :
        ;

    }

}

