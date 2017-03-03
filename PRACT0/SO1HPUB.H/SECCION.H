/* ----------------------------------------------------------------------- */
/*                                seccion.h                                */
/* ----------------------------------------------------------------------- */
/*                (fuente: SmallerC/v0100/tests/strtstp.c)                 */
/* ----------------------------------------------------------------------- */

#ifndef SECCION_H
#define SECCION_H

#include "..\so1hpub.h\tipos.h"

extern char _start__text ;
extern char _stop__text ;
extern char _start__rodata ;
extern char _stop__rodata ;
extern char _start__data ;
extern char _stop__data ;
extern char _start__bss ;
extern char _stop__bss ;
extern char _start_allcode__ ;
extern char _stop_allcode__ ;
extern char _start_alldata__ ;
extern char _stop_alldata__ ;

void mostrarSeccion ( dword_t start, dword_t stop, char * descripcion ) ;

void mostrarSecciones ( void ) ;

#endif /* SECCION_H */