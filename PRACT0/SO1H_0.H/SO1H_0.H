/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                 so1h_0.h                                */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

/* SO1H_0 toma el control tras la carga de SO1HIMG (EXE o SYS) y tras      */
/* reubicarse en la direccion 0x90000 localiza la tabla dirf que esta tras */
/* el codigo de SO1H_0 en SO1HIMG. La entradas de esa tabla se copian a    */
/* una tabla reubicacion salvo las entradas 0 (de SO1H_0) y 1 (de dirf), y */
/* añadiendose para cada entrada los campos origen y destino que indican   */
/* la ubicación actual del fichero en memoria y el destino donde deben     */
/* ubicarse para crear con ellos los procesos que van a ejecutarse en un   */
/* primer momento. Una vez completada la tabla reubicacion SO1H lleva a    */
/* cabo la reubicacion dejando los espacios necesario para las pilas de    */
/* los procesos que se van a crear.                                        */                                                    

#ifndef SO1H_0_H
#define SO1H_0_H

#include <so1hpub.h\tipos.h>                                    /* dword_t */
#include <so1h_0.h\dirf.h>                                  /* entradaDF_t */

extern dword_t dirInicial ; /* direccion correspondiente a CS:0000 de SO1H */

extern dword_t dirCargaFichero ;          /* direccion de carga de SO1HIMG */

extern dword_t dirFinal ;                       /* primera direccion libre */

/* tipo correspondiente a la tabla reubicacion */

typedef struct {
    entradaDF_t entradaDF ;
	dword_t origen ;
	dword_t destino ;
} reubicacion_t ;	       /* extension de entradaDF_t para la reubicacion */

extern reubicacion_t * reubicacion ;                  /* tabla reubicacion */

extern dword_t numER ;       /* numero de entradas de la tabla reubicacion */  

/* reubicacion[0] corresponde a SO1H_K.BIN
/* reubicacion[1] corresponde a un primer programa de usuario (driver)     */
/* ...                                                                     */
/* reubicacion[numER-2] corresponde al ultimo programa de usuario (driver) */
/* reubicacion[numER-1] corresponde al disco RAM.                          */

#endif /* SO1H_0_H */