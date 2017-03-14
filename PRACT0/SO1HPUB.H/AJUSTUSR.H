/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                ajustusr.h                               */
/* ----------------------------------------------------------------------- */
/*       Ajuste inicial del modelo de programacion para los procesos       */
/* ----------------------------------------------------------------------- */

#ifndef AJUSTUSR_H
#define AJUSTUSR_H

#if (0)

En la cabecera EXE (comparando con so1h.map) aparecen los campos:

  bytesUltSector
  sectores_totales ==> tam = (sectores_totales-1)*512 + bytesUltSector

  numParCabecera = 0x20

  [CS0:IP0]   (CS0 << 4) + IP0 + (0x20 (=tamaño de la cabecera)) = _start

               dirección (sin reubicar) de la rutina que lleva a cabo la reubicación

  [SS0:SP0]    dirección (sin reubicar) de la pila (SS0+(0x20 >> 4)) SP0

La cabecera no esta disponible para el programa SO1H.exe, pero si para
SO1H.bin. Por lo tanto en los programas de usuario va a poder utilizarse
esa información.

#endif

#define atexit( finish ) {                                                   \
  manejador_t far * manejador =                                              \
    (manejador_t far *)pointer(                                              \
       _DS,                                                                  \
       valor_SPInicial-6                                    /* SPInicial-6 */\
    ) ;                                                                      \
  *manejador = finish ;                                                      \
}

#endif /* AJUSTUSR_H */

