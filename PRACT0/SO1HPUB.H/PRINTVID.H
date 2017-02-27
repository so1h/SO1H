/* ----------------------------------------------------------------------- */
/*                                printvid.h                               */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

#ifndef PRINTVID_H
#define PRINTVID_H

#include "..\so1hpub.h\tipos.h"

int printCarVideo ( char car ) ;                          /* en memvideo.h */

int printLnVideo ( void ) ;

int printStrVideo ( char * str ) ;

int printStrHastaVideo ( char * str, word_t n, bool_t lleno ) ;

int printDecVideo ( word_t num, word_t l ) ;

int printLDecVideo ( dword_t num, word_t l ) ;

int printIntVideo ( int num, word_t l ) ;

int printLIntVideo ( long int num, word_t l ) ;

int printHexVideo ( word_t num, word_t l ) ;

int printLHexVideo ( dword_t num, word_t l ) ;

int printBinVideo ( word_t num, word_t l ) ;   

int printLBinVideo ( dword_t num, word_t l ) ; 

int printPtrVideo ( pointer_t ptr ) ;

int printByteVideo ( byte_t b ) ;

int printWordVideo ( word_t w ) ;

int printCadVideo ( char * cad ) ;

#endif /* PRINTVID_H */
