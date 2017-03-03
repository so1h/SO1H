/* ----------------------------------------------------------------------- */
/*                                seccion.c                                */
/* ----------------------------------------------------------------------- */
/*                (fuente: SmallerC/v0100/tests/strtstp.c)                 */
/* ----------------------------------------------------------------------- */

#include "..\so1hpub.h\tipos.h"
#include "..\so1hpub.h\printvid.h"
#include "..\so1hpub.h\seccion.h"

void mostrarSeccion ( dword_t start, dword_t stop, char * descripcion )
{
    printStrVideo(" ") ;
    printLHexVideo(start, 8) ;
    printStrVideo(" - ") ;
    printLHexVideo(stop-1, 8) ;
    printStrVideo(descripcion) ;
}

void mostrarSecciones ( void )
{
    printLnVideo() ;
    mostrarSeccion(&_start_allcode__, &_stop_allcode__, " all code: \n") ;
    mostrarSeccion(&_start__text    , &_stop__text    , "   .text   \n") ;
    mostrarSeccion(&_start_alldata__, &_stop_alldata__, " all data: \n") ;
    mostrarSeccion(&_start__rodata  , &_stop__rodata  , "   .rodata \n") ;
    mostrarSeccion(&_start__data    , &_stop__data    , "   .data   \n") ;
    mostrarSeccion(&_start__bss     , &_stop__bss     , "   .bss    \n") ;
}

