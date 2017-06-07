/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                  dirf.h                                 */
/* ----------------------------------------------------------------------- */
/*                          Directorio de ficheros                         */
/* ----------------------------------------------------------------------- */

/* El fichero de imagen de carga del sistema SO1HIMG.EXE o SO1HIMG.SYS     */
/* contiene varios ficheros: SO1H_0 (EXE o SYS), SO1H_K.BIN, programas de  */
/* usuario o drivers y una imagen de disco ram. Entre SO1H_0 y SO1H_K se   */
/* dispone una tabla (dirf) que proporciona informacion de cada uno de los */
/* ficheros presentes en SO1HIMG. El tipo entradaDF_t describe como son    */
/* entradas de esta tabla.                                                 */ 

#ifndef DIRF_H
#define DIRF_H

#include <so1hpub.h\tipos.h>

#define lMaxNombreDF 16

typedef char nombreDF_t [ lMaxNombreDF ] ;

#define lMaxComandoDF 40

typedef char comandoDF_t [ lMaxComandoDF ] ;

typedef enum
{
    so1h_0_DF, datos_DF, so1h_k_DF, proceso_DF, dram_DF
} tipoDF_t ;

typedef struct {
  nombreDF_t  nombre ;                    /* nombre del fichero   20 bytes */
  comandoDF_t comando ;                   /* comando              40 bytes */
  dword_t     pos ;                       /* posicion del fichero  4 bytes */
  dword_t     tam ;                       /* tamanio del fichero   4 bytes */
  dword_t     start ;                     /* punto de entrada      4 bytes */
  dword_t     otro ;                      /* otro                  4 bytes */
  word_t      SS ;                        /* SS (sin reubicar)     2 bytes */
  word_t      SP0 ;                       /* tamanio de su pila    2 bytes */
  tipoDF_t    tipo ;                      /* tipo de fichero       4 bytes */
} entradaDF_t ;                                        /* total = 80 bytes */

#endif /* DIR_F */



