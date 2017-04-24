/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                recursos.h                               */
/* ----------------------------------------------------------------------- */
/*                  Tabla de Ficheros Abiertos del Sistema                 */
/* ----------------------------------------------------------------------- */

#ifndef RECURS_H
#define RECURS_H

#include "..\so1hpub.h\def_proc.h"

void inicRecursos ( void ) ;

rindx_t crearRec ( descRecurso_t * dR ) ;

dfs_t crearFich ( const char *  nombre,
                  rindx_t       rindx,
                  word_t        menor,
                  tipoFichero_t tipo ) ;

int destruirFich ( dfs_t dfs ) ;

int destruirRec ( const char * nombre ) ;

void link_recurs ( void ) ;

#endif /* RECURS_H */

