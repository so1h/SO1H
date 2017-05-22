/* ----------------------------------------------------------------------- */
/*                                printgen.h                               */
/* ----------------------------------------------------------------------- */
/*       rutinas de escritura con parametro una funcion de escritura       */
/*             generica de caracteres individuales (printCar_t)            */
/* ----------------------------------------------------------------------- */

#ifndef PRINTGEN_H
#define PRINTGEN_H

#include <so1hpub.h\tipos.h>

typedef int (* printCar_t) ( char car ) ;               /* tipo printCar_t */

typedef unsigned size_t ;

typedef size_t (* printCarN_t) ( const void * ptr, size_t n ) ;

int printGenLn ( printCar_t p ) ;

int printGenStr ( const char * str, printCar_t p ) ;

int printGenStrHasta ( const char * str, word_t n, bool_t lleno, printCar_t p ) ;

int printGenDec ( word_t num, word_t l, printCar_t p ) ;

int printGenLDec ( dword_t num, word_t l, printCar_t p ) ;

int printGenInt ( short int num, word_t l, printCar_t p ) ;

int printGenLInt ( int num, word_t l, printCar_t p ) ;

int printGenHex ( word_t num, word_t l, printCar_t p ) ;

int printGenLHex ( dword_t num, word_t l, printCar_t p ) ;

int printGenBin ( word_t num, word_t l, printCar_t p ) ;

int printGenLBin ( dword_t num, word_t l, printCar_t p ) ;

int printGenPtr ( pointer_t ptr, printCar_t p ) ;

int printfGen ( const char * formato, printCar_t p, ... ) ;

#endif /* PRINTGEN_H */

