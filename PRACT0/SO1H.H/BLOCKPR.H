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

extern int nivelActivacionSO1H ;               /* 0 => proceso, 1 => tarea */

extern bool_t enHalt ;            /* se interrumpio en el hlt de sigThread */

extern bool_t activarAlEpilogo1 ;

//           /* activar al epilogo (de nivel 1) el primer thread preparado */

extern bool_t hayTic ;             /* se acaba de producir un tic de reloj */

//   /* hayTic se utiliza en activarThread para determinar mejor la rodaja */

//               /* prologo de una rti o llamada al sistema (int nVIntSO1) */

#define prologo_rti_sin_PUSHA()                                   /* macro */\
                                                                             \
  asm push es ;                                                              \
  asm push ds ;                                                              \
                                                                             \
  establecerDS_SO1H_0() ;       /* establecer el segmento de datos de SO1H */\
                                                                             \
  if (++nivelActivacionSO1H == 1) {                                          \
    asm mov SS_Thread,ss ;                 /* salvamos la pila del proceso */\
    asm mov SP_Thread,sp ;                                                   \
    asm mov ss,DS_SO1H ;                    /* establecemos la pila de SO1 */\
    asm mov sp,SP0_SO1H ;                                                    \
  }                                /* en otro caso la pila es ya la de SO1 */\
                                                              /* fin macro */

#define prologo_rti()                                             /* macro */\
                                                                             \
  asm pusha ;          /* apilamos todos los registros del proceso (80286) */\
                                         /* ax, cx, dx, bx, sp, bp, si, di */\
  prologo_rti_sin_PUSHA() ;
                                                              /* fin macro */

#define epilogo_rti()                                             /* macro */\
                                                                             \
  if ((nivelActivacionSO1H == 1) || enHalt) {                                \
    if (ccbAlEpilogo->num > 0) atenderCcb(ccbAlEpilogo) ;                    \
    if (c2cPFR[PUrgentes].numElem > 0)                                       \
      prepararDesbloqueadosUrgentes() ;                                      \
    if (activarAlEpilogo1) {                                                 \
      activarAlEpilogo1 = FALSE ;                                            \
      activarProceso(sigThread()) ;                                          \
    }                                                                        \
  }                                                                          \
  if (nivelActivacionSO1H-- == 1) {                                          \
    asm mov ss,SS_Thread ;              /* establecemos la pila del thread */\
    asm mov sp,SP_Thread ;                                                   \
  }                                                                          \
  asm pop ds ;              /* restauramos el segmento de datos del thread */\
  asm pop es ;                                                               \
                                                                             \
  asm popa ;        /* restauramos todos los registros del proceso (80286) */\
                                         /* di, si, bp, sp, bx, dx, cx, ax */\
  asm iret ;                                                                 \
                                                              /* fin macro */

void prepararDesbloqueadosUrgentes ( void ) ;

  /* un proceso puede terminar durante una llamada o durante una rti       */
  /* o ser expulsado */

void buscarNuevoProcesoActual ( void ) ;

  /* en principio solo se bloquean procesos desde las llamadas al sistema  */
  /* pero vamos a contemplar bloqueos incluso desde una rti                */

void bloquearProcesoActual ( rindx_t rindx ) ;

  /* NOTA: estas funciones se declaran far con el fin de poder ser         */
  /* llamadas desde drivers. Cuando se utilicen en hay que incluir este    */
  /* fichero de cabeceras, porque sino el compilador considera que son     */
  /* funciones near por defecto. El linker no se enteraría del error, pero */
  /* en ejecución sucedería que no accederíamos correctamente a los        */
  /* parametros, ya que la dirección de retorno metida en la pila sería    */
  /* de tamaño palabra en vez de doble palabra.                            */

#endif /* BLOCKPR_H */



