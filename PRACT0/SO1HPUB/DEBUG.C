/* ----------------------------------------------------------------------- */
/*                                  debug.c                                */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

#include "..\so1hpub.h\tipos.h"
#include "..\so1hpub.h\bios_0.h"
#include "..\so1hpub.h\printvid.h"                        /* printStrVideo */

void puntoDeParada ( void ) {
asm 
(
    "   retf                      \n"
	"   db 'Punto De Parada '     \n"
) ;
}

bool_t debug_parar = FALSE ;

void assert ( int condicion, char * str ) {
    if (!condicion) {
        printStrVideo(str) ;
        leerTeclaBIOS() ;
    }
}

word_t valorFlags ( void ) {
//  word_t flags ;
    asm 
	(
        "   pushf         \n"
        "   pop ax        \n"
//      "   mov [bp-4],ax \n" /* flags */
    ) ;
//  return(flags) ;
}

void mostrarFlags ( void ) {
    word_t flags ;
    asm 
    (
        "   pushf         \n"
        "   pop ax        \n"
        "   mov [bp-4],ax \n" /* flags */
    ) ;
    printStrVideo("\n\n flags = ") ;
    printHexVideo(flags, 4) ;
    if (flags & 0x0200) printStrVideo(" ints permitidas ") ;
    else printStrVideo(" ints inhibidas ") ;
    asm 
    (
        "   mov ax,[bp-4] \n" /* flags */
        "   push ax       \n"
        "   popf          \n"
    ) ;
}

