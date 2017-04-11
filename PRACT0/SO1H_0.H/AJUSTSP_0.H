/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                ajustsp_0.h                              */
/* ----------------------------------------------------------------------- */
/*                       Ajuste del tamaño de la pila                      */
/* ----------------------------------------------------------------------- */

#ifndef AJUSTSP_0_H
#define AJUSTSP_0_H

#include "..\so1hpub.h\seccion.h"                          /* _start__text */
#include "..\so1hpub.h\def_proc.h"                           /* cabecera_t */

/* SO1H se ejecuta como si fuera un proceso que se ocupa de todas las      */
/* inicializaciones y de crear el proceso inicial. La pila de este proceso */
/* tiene su segmento (SS_SO1H) apuntando tras el final del BSS, y su       */
/* puntero de pila inicial (SP0_SO1H) con el valor indicado en el          */
/* desplazamiento 0x0010 de la cabecera EXE, en el caso de SO1H.exe, y con */
/* el valor indicado en el desplazamiento 0x004B del segmento de codigo en */
/* el caso de SO1H.bin. En la creacion de SO1H.exe y SO1H.bin (en el       */
/* MAKEFILE correspondiente) debera tenerse cuidado de que en los dos      */
/* desplazamientos 0x0010 y 0x004B figure el mismo valor.                  */

#define SP0_SO1H_0             /* puntero de pila inicial del proceso SO1H */\
                                                                             \
    *((word_t *)(&_start__text - sizeof(cabecera_t) + 0x003C))

/* La siguiente definicion es simplemente para que en ajustes.c SP0_SO1H   */
/* tenga un valor por defecto, aunque el valor real se establecera en el   */
/* MAKEFILE correspondiente o mediante un programa SPINIC que permita      */
/* modificar SP0_SO1H en los desplazamientos 0x0010 y 0x004B.              */

asm
(
    "%define SP0_SO1H_0 0xFFFE"         /* puntero de pila inicial de SO1H */
) ;        

/* Cuando se active SO1H como nucleo del sistema operativo en respuesta a  */
/* una llamada al sistema (interrupcion software int 0x60) o en respuesta  */
/* a una interrupcion, debera utilizar una pila diferente. Esta pila sera  */
/* inicializada por el proceso SO1H reservando un bloque de memoria nuevo  */
/* del tamaño declarado aqui como SP0_Kernel.                              */

#define SS_SO1H_0             /* segmento de pila inicial del proceso SO1H */\
                                                                             \
    *((word_t *)(&_start__text - sizeof(cabecera_t) + 0x0037))

asm
(
    "%define SS_SO1H_0 0x9000"         /* segmento de pila inicial de SO1H */
) ;        

#endif /* AJUSTSP_H */



