/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                blockpr.h                                */
/* ----------------------------------------------------------------------- */
/*             Operaciones relacionadas con el bloqueo de threads          */
/* ----------------------------------------------------------------------- */

#ifndef BLOCKPR_H
#define BLOCKPR_H

#include "..\so1hpub.h\tipos.h"
#include "..\so1hpub.h\def_proc.h"

#include "..\so1h.h\ajustes.h"                      /* establecerDS_SO1H_0 */

extern word_t SS_Thread ;      /* pila thread que hace una llamada al s.o. */

extern word_t SP_Thread ;                    /* o que ha sido interrumpido */

extern word_t SS_Tarea ;            /* pila tarea que ha sido interrumpida */

extern word_t SP_Tarea ;

extern int nivelActivacionSO1H ;                /* 0 => thread, 1 => tarea */

extern int nVIntActual ;       /* numero de v.i. de la interrupcion actual */

extern bool_t enHalt ;            /* se interrumpio en el hlt de sigThread */

extern bool_t activarAlEpilogo1 ;

//           /* activar al epilogo (de nivel 1) el primer thread preparado */

extern bool_t hayTic ;             /* se acaba de producir un tic de reloj */

//   /* hayTic se utiliza en activarThread para determinar mejor la rodaja */

void setKernelStack ( void ) ;   /* supone apilados sp y ss (en ese orden) */            

void setThreadStack ( word_t SS_Thread, word_t SP_Thread ) ;

dword_t reg_DL ( void ) ;

//               /* prologo de una rti o llamada al sistema (int nVIntSO1) */

#define prologo_rti_sin_PUSHA()                                   /* macro */\
                                                                             \
asm                                                                          \
(                                                                            \
    "   push es \n"                                                          \
    "   push ds \n"                                                          \
) ;                                                                          \
  if (++nivelActivacionSO1H == 1)                                            \
  {                                                                          \
asm                                                                          \
(                                                                            \
    "   push esp     \n"                         /* setKernelStack(ss, sp) */\
    "   mov ax,ss    \n"                                                     \
    "   movzx eax,ax \n"                                                     \
    "   push eax     \n"                   /* orden de apilamiento critico */\
) ;                                                                          \
    setKernelStack() ;                                                       \
  }                               /* en otro caso la pila es ya la de SO1H */\
//                                                            /* fin macro */\
															  
#define prologo_rti()                                             /* macro */\
                                                                             \
asm                                                                          \
(                                                                            \
    "   pusha \n"      /* apilamos todos los registros del proceso (80286) */\
) ;                                      /* ax, cx, dx, bx, sp, bp, si, di */\
    prologo_rti_sin_PUSHA() ;                                 /* fin macro */

//               /* epilogo de una rti o llamada al sistema (int nVIntSO1) */

#define epilogo_rti()                                             /* macro */\
                                                                             \
  if ((nivelActivacionSO1H == 1) || enHalt) {                                \
    if (ccbAlEpilogo->num > 0) atenderCcb(ccbAlEpilogo) ;                    \
    if (c2cPFR[TUrgentes].numElem > 0)                                       \
      prepararDesbloqueadosUrgentes() ;                                      \
    if (activarAlEpilogo1) {                                                 \
      activarAlEpilogo1 = FALSE ;                                            \
      activarThread(sigThread()) ;                                           \
    }                                                                        \
  }                                                                          \
  if (nivelActivacionSO1H-- == 1) {                                          \
    setThreadStack(SS_Thread, SP_Thread) ;                                   \
  }                                                                          \
asm                                                                          \
(                                                                            \
    "   pop ds \n"          /* restauramos el segmento de datos del thread */\
    "   pop es \n"                                                           \
                                                                             \
    "   popa   \n"  /* restauramos todos los registros del proceso (80286) */\
                                         /* di, si, bp, sp, bx, dx, cx, ax */\
    "   iret   \n"                                                           \
) ;                                                           /* fin macro */	
																
void prepararDesbloqueadosUrgentes ( void ) ;

/* un thread puede terminar durante una llamada o durante una rti          */
/* o ser expulsado */

void buscarNuevoThreadActual ( void ) ;

/* en principio solo se bloquean threads desde las llamadas al sistema     */
/* pero vamos a contemplar bloqueos de threads incluso desde una rti       */

void bloquearThreadActual ( rindx_t rindx ) ;

/* NOTA: estas funciones serán llamadas no solo desde procesos/threads,    */
/* sino tambien desde drivers.                                             */

#endif /* BLOCKPR_H */



