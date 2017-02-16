/***************************************************************************/
/*                                STRING_T.C                               */
/***************************************************************************/
/*                                                                         */
/***************************************************************************/

#include "..\so1hpub.t\def_test.h"                                 /* TEST */

#ifdef TEST

#include "..\so1hpub.h\tipos.h"
#include "..\so1hpub.h\colores.h"
#include <string.h>                                      /* memset, strcpy */

void test_string ( void )
{

    char str [ 256 ] ;

    /* ver en Smaller C mem.c: void* memset(void* s, int c, unsigned n)        */

    memset(0x000B8000,       0x00, 25*80*2) ;
    memset(0x000B8000,      negro, 25*80*2) ;
    memset(0x000B8000,       azul, 25*80*2) ;
    memset(0x000B8000,      ciano, 25*80*2) ;
    memset(0x000B8000,  grisClaro, 25*80*2) ;
    memset(0x000B8000,       0x07, 25*80*2) ;      /* 0x07 atributo normal */

    strcpy(str, "patata") ;

}

#endif
