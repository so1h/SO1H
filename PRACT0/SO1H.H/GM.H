/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                   gm.h                                  */
/* ----------------------------------------------------------------------- */
/*   Gestor de Memoria: Particiones variables (Lista de bloques libres)    */
/* ----------------------------------------------------------------------- */

#ifndef GM_H
#define GM_H

#include <so1hpub.h\tipos.h>                                     /* word_t */
#include <so1hpub.h\def_mem.h>                              /* ptrBloque_t */

#define tamParagrafo 16          /* un paragrafo son 16 bytes consecutivos */
//                           /* comenzando en una direccion multiplo de 16 */

extern word_t tamBloqueMax ;   /* mayor bloque de memoria libre disponible */

extern ptrBloque_t listaLibres ;       /* apunta a la cabecera de la lista */

word_t k_buscarBloque ( word_t tam ) ;

bool_t k_devolverBloque ( word_t segmento, word_t tam ) ;

extern rindx_t rec_gm ;

void inicGM ( void ) ;

void mostrarListaLibres ( void ) ;

void link_gm_k ( void ) ;

#endif /* GM_H */

