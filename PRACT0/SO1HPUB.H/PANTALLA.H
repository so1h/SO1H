/* ----------------------------------------------------------------------- */
/*                               pantalla.h                                */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

#ifndef PANTALLA_H
#define PANTALLA_H

#include "tipos.h"
#include "def_pant.h"

word_t tamPantalla ( byte_t numFilas ) ;

void pantallazo ( pantalla_t * pantalla,
                  word_t numFilas,
                  char car, char atr,
                  byte_t esqSupDeF, byte_t esqSupDeC,
                  byte_t esqInfIzF, byte_t esqInfIzC ) ;

void borrarPantalla ( pantalla_t * pantalla,
                      word_t numFilas ) ;

void borrarCPantalla ( pantalla_t * pantalla,
                       word_t numFilas ) ;

void copiarPantalla ( pantalla_t * p1,
                      pantalla_t * p2,
                      word_t numFilas ) ;

void copiarCPantalla ( pantalla_t * p1,
                       pantalla_t * p2,
                       word_t numFilas ) ;

void scrollPantalla ( pantalla_t * pantalla,
                      word_t numFilas ) ;

void scrollCPantalla ( pantalla_t * pantalla,
                       word_t numFilas ) ;

#endif /* PANTALLA_H */

