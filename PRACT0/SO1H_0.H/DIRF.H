/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                  dirf.h                                 */
/* ----------------------------------------------------------------------- */
/*                          Directorio de ficheros                         */
/* ----------------------------------------------------------------------- */

#ifndef DIRF_H
#define DIRF_H

#include "..\so1hpub.h\tipos.h"

typedef void ( * cargarDescSO1H_t )( descSO1H_t * descSO1H ) ;	
	
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

extern entradaDF_t * ptrDirf ;                       /* puntero a la tabla */

extern cargarDescSO1H_t cargarDescSO1H ;                 /* cargarDescSO1H */

#endif /* DIR_F */



