/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                blockpr.c                                */
/* ----------------------------------------------------------------------- */
/*             Operaciones relacionadas con el bloqueo de threads          */
/* ----------------------------------------------------------------------- */

#include "..\so1h.h\ajustsp.h"
#include "..\so1h.h\main.h"
#include "..\so1h.h\ajustes.h"                      /* establecerDS_SO1H_1 */
#include "..\so1h.h\blockpr.h"

#include "..\so1hpub.h\bios_0.h"

#include "..\so1h.h\procesos.h"

word_t SS_Thread ;             /* pila thread que hace una llamada al s.o. */

word_t SP_Thread ;                           /* o que ha sido interrumpido */

word_t SS_Tarea ;                   /* pila tarea que ha sido interrumpida */

word_t SP_Tarea ;

int nivelActivacionSO1H = 0 ;                  /* 0 => proceso, 1 => tarea */

bool_t enHalt = FALSE ;           /* se interrumpio en el hlt de sigThread */

bool_t activarAlEpilogo1 = FALSE ;

//           /* activar al epilogo (de nivel 1) el primer thread preparado */

bool_t hayTic = FALSE ;         /* no se acaba de producir un tic de reloj */

//  /* hayTic se utiliza en activarProceso para determinar mejor la rodaja */

void prepararDesbloqueadosUrgentes ( void )
{
    while (c2cPFR[TUrgentes].numElem > 0)
        apilarPC2c(
            desapilarPC2c((ptrC2c_t)&c2cPFR[TUrgentes]),
            (ptrC2c_t)&c2cPFR[TPreparados]
        ) ;
//  encolarPC2c(
//    desencolarPC2c((ptrC2c_t)&c2cPFR[TUrgentes]),
//    (ptrC2c_t)&c2cPFR[TPreparados]
//  ) ;
}

///* un thread puede terminar durante una llamada o durante una rti        */
///* o ser expulsado */

void buscarNuevoThreadActual ( void ) {                     /* nivel 1 o 2 */

//establecerDS_SO1H_0() ;        /* establecer el segmento de datos de SO1 */
//establecerDS_Kernel_0() ;      /* establecer el segmento de datos de SO1 */
                           /* esta funcion puede ser llamada por un driver */
/*
printStrWin(win_so, "\n nivelActivacionSO1 = ") ;
printDecWin(win_so, nivelActivacionSO1, 1) ;
*/
  if (nivelActivacionSO1H == 1) {        /* printStrWin(win_so, "\nbNP") ; */
//  asm mov sp,SP0_SO1                                   /* reset pila SO1 */
    if (ccbAlEpilogo->num > 0) atenderCcb(ccbAlEpilogo) ;
    prepararDesbloqueadosUrgentes() ;
/*  printStrWin(win_so, "\n antes activarProceso ") ; */
    activarThread(sigThread()) ;
  }
  else activarAlEpilogo1 = TRUE ;

}

  /* en principio solo se bloquean procesos desde las llamadas al sistema  */
  /* pero vamos a contemplar bloqueos incluso desde una rti                */

void bloquearProcesoActual ( rindx_t rindx ) {            /* nivel 1 (o 2) */
 
//establecerDS_Kernel_0() ;      /* establecer el segmento de datos de SO1 */
//                         /* esta funcion puede ser llamada por un driver */
    descThread[indThreadActual].trama = tramaThread ;
    descThread[indThreadActual].estado = bloqueado ;
    descThread[indThreadActual].esperandoPor = rindx ;

    buscarNuevoThreadActual() ;

}








