/* ----------------------------------------------------------------------- */
/*                                  debug.c                                */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

#include "..\so1hpub.h\tipos.h"
#include "..\so1hpub.h\bios_0.h"

#define _P 50h
#define _u 75h
#define _n 6Eh
#define _t 74h
#define _o 6Fh
#define __ 20h                                             /* espacio  ' ' */
#define _d 64h
#define _e 65h

#define _a 61h
#define _r 72h
#define _S 53h
#define _O 4Fh
#define _1 31h

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
        printStrBIOS(str) ;
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
    printStrBIOS("\n flags = ") ;
    printHexBIOS(flags, 4) ;
    if (flags & 0x0200) printStrBIOS(" ints permitidas ") ;
    else printStrBIOS(" ints inhibidas ") ;
    asm 
    (
        "   mov ax,[bp-4] \n" /* flags */
        "   push ax       \n"
        "   popf          \n"
    ) ;
}

