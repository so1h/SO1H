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

#define atexit( finish ) {                                                   \
  manejador_t far * manejador =                                              \
    (manejador_t far *)pointer(                                              \
       _DS,                                                                  \
       valor_SPInicial-6                                    /* SPInicial-6 */\
    ) ;                                                                      \
  *manejador = finish ;                                                      \
}

#endif /* AJUSTUSR_H */

