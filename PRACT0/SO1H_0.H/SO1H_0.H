/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                 so1h_0.h                                */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

#ifndef SO1H_0_H
#define SO1H_0_H

#include <so1hpub.h\tipos.h>                                    /* dword_t */
#include <so1h_0.h\dirf.h>                                  /* entradaDF_t */

extern dword_t dirInicial ;

extern dword_t dirCargaFichero ;

typedef struct {
    entradaDF_t entradaDF ;
	dword_t origen ;
	dword_t destino ;
} reubicacion_t ;	       /* extension de entradaDF_t para la reubicacion */

#define maxEDF 10                  /* numero maximo de entradas admisibles */

extern reubicacion_t reubicacion [ maxEDF ] ;

extern dword_t numEDF ;                         /* numero real de entradas */

#endif /* SO1H_0_H */