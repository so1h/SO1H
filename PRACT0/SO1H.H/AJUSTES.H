/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                ajustes.h                                */
/* ----------------------------------------------------------------------- */
/*            Ajuste inicial del modelo de programacion de so1h            */
/* ----------------------------------------------------------------------- */

#ifndef AJUSTES_H
#define AJUSTES_H

#include <so1hpub.h\tipos.h>

void startBin ( void ) ;          /* punto de entrada para so1h.bin (boot) */

modoSO1_t modoSO1 ( void ) ;     /* modo en que se ejecuta SO1H: bin o exe */

byte_t unidadBIOS ( void ) ;       /* numero BIOS de la unidad de arranque */

extern word_t CS_SO1H ;              /* segmento de codigo (text)  de SO1H */

extern word_t RO_SO1H ;              /* segmento de datos (rodata) de SO1H */

extern word_t DS_SO1H ;              /* segmento de datos (data)   de SO1H */

extern word_t BSS_SO1H ;             /* segmento de datos (bss)    de SO1H */

extern word_t SS_SO1H ;              /* segmento de pila           de SO1H */

extern word_t SS_Kernel ;            /* segmento de pila del kernel   SO1H */

extern word_t IMRInicial ;     /* mascara de interrupcion inicial del 8259 */

void obtenerMapa ( void ) ;         /* obtiene CS_SO1H, DS_SO1H y BSS_SO1H */

#endif /* AJUSTES_H */



