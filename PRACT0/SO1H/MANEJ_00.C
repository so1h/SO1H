/* ----------------------------------------------------------------------- */
/*                               manej_00.c                                */
/* ----------------------------------------------------------------------- */
/*          manejador de las llamadas al sistema del grupo AH = 00         */
/* ----------------------------------------------------------------------- */

/* ----------------------------------------------------------------------- */
/*            llamadas al sistema correspondientes a los threads:          */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */
/* AX = 0x0000 : thread_create                                             */
/* AX = 0x0001 : thread_join                                               */
/* AX = 0x0002 : thread_exit                                               */
/* AX = 0x0003 : thread_yield()                                            */
/* AX = 0x0004 : thread_self()                                             */
/* ----------------------------------------------------------------------- */

#include "..\so1hpub.h\tipos.h"
#include "..\so1hpub.h\printvid.h"
#include "..\so1h.h\procesos.h"
#include "..\so1h.h\blockpr.h"

int doKill ( tindx_t tindx ) {                  /* el thread tindx termina */

//  static pindx_t ppindx ;
    pindx_t pindx ;
	int err = 0 ;

#if (0) 
	
//  ppindx = descProceso[pindx].ppindx ;
    pindx = descThread[tindx].pindx ; 
    if (descThread[tindx].noStatus) {
        eliminarPC2c(tindx, (ptrC2c_t)&descProceso[pindx].c2cThreads) ;
        matarThreadIndx(tindx) ;                     
    }
    else if ((descProceso[ppindx].estado == bloqueado) &&
             (descProceso[ppindx].esperandoPor == rec_hijo) &&
             ((descProceso[ppindx].hpindx == pindx) ||
              (descProceso[ppindx].hpindx == -1))) {
        descProceso[ppindx].trama->AX = tramaProceso->BX ;       /* status */
        descProceso[ppindx].trama->BX = descProceso[pindx].pid ; /* pidDifunto */
        descProceso[ppindx].estado = preparado ;
        encolarPC2c(ppindx, (ptrC2c_t)&c2cPFR[PUrgentes]) ;
        eliminarPC2c(pindx, (ptrC2c_t)&descProceso[ppindx].c2cHijos) ;
        matarProcIndx(pindx) ;           
    }
    else {                                                 /* queda zombie */
        descThread[tindx].estado = bloqueado ;
        descThread[tindx].esperandoPor = rec_zombie ;
        descThread[tindx].status = tramaProceso->BX ;
        terminarThreadIndx(tindx) ;                  
    }

#endif

    if (tindx == indThreadActual)
        buscarNuevoThreadActual() ;
	
    return(err) ;

}

void so1_manejador_00 ( void ) {                     /* ah = 00 ; int SO1H */

    switch (tramaThread->AL) {

        case 0x00 :                                       /* thread_create */
        {
                    tid_t * tid = tramaThread->ESI ;
                    word_t SP0 = tramaThread->DX ;
                    void * ( * funcionInicial ) = tramaThread-> ECX ;
                    void * arg = tramaThread->EBX ;
                    tindx_t tindx =
                        crearThread(funcionInicial, SP0, arg, indProcesoActual) ;
                    *tid = descThread[tindx].tid ;
                    break ;
        }
        case 0x01 :                                         /* thread_join */
#if (0)		
      hpid = tramaProceso->BX ;                            /* pid del hijo */
      hpindx = indice(hpid) ;
      if ((hpid >= 0) && (hpindx == -1))                 /* hpid no existe */
        tramaProceso->BX = -1 ;                              /* pidDifunto */
      else {
        if (hpid == -1) {                          /* buscar hijos zombies */
          i = 0 ;
          while ((i < maxProcesos) &&
                 ((descProceso[i].ppindx != indProcesoActual) ||   /* hijo */
                  (descProceso[i].estado != bloqueado) ||
                  (descProceso[i].esperandoPor != rec_zombie)))  /* zombie */
            i++ ;
          if (i < maxProcesos) hpindx = i ;          /* primer hijo zombie */
          else hpindx = -1 ;
        }
        if ((hpindx != -1) &&             /* terminar de matar hijo zombie */
            (descProceso[hpindx].ppindx == indProcesoActual) &&
            (descProceso[hpindx].estado == bloqueado) &&
            (descProceso[hpindx].esperandoPor == rec_zombie)) {
          tramaProceso->AX = descProceso[hpindx].status ;        /* status */
          tramaProceso->BX = descProceso[hpindx].pid ;       /* pidDifunto */
          eliminarProcIndx(hpindx) ;

          eliminarPC2c(hpindx, (ptrC2c_t)&descProceso[indProcesoActual].c2cHijos) ;

        }
        else {                                   /* no hay hijo(s) zombies */
          noStatus = tramaProceso->DX ;
          if (hpid != -1) {
            if (noStatus) {
              descProceso[hpindx].noStatus = TRUE ;
              tramaProceso->BX = 0 ;                         /* pidDifunto */
            }
            else bloquearEsperandoHijo(hpindx) ;
          }
          else if (noStatus) {
            i = 0 ;
            while (i < maxProcesos) {
              if (descProceso[i].ppindx == indProcesoActual)       /* hijo */
                descProceso[i].noStatus = TRUE ;
              i++ ;
            }
            tramaProceso->BX = 0 ;                           /* pidDifunto */
          }
          else {
            i = 0 ;
            while ((i < maxProcesos) &&
                   (descProceso[i].ppindx != indProcesoActual))    /* hijo */
              i++ ;
            if (i < maxProcesos) {                       /* hay algun hijo */
              descProceso[indProcesoActual].hpindx = -1 ;
/*
              if (indProcesoActual == indProcesoDeSuperficie)
                focalizarWin(descProceso[i].win) ;
*/
              bloquearProcesoActual(rec_hijo) ;
            }
            else                                           /* no hay hijos */
              tramaProceso->BX = -1 ;                        /* pidDifunto */
          }
        }
      }
#endif
                    bloquearThreadActual(rec_thread) ;
                    break ;
        case 0x02 :                                         /* thread_exit */
                    doKill(indThreadActual) ;
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
        default : ;

  }

}

