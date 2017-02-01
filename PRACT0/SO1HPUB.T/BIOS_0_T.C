/***************************************************************************/
/*                                BIOS_0_T.C                               */
/***************************************************************************/
/*                                                                         */
/***************************************************************************/

#include "..\so1hpub.t\def_test.h"                                 /* TEST */

#ifdef TEST

#include "..\so1hpub.h\tipos.h"                                  /* word_t */
#include "..\so1hpub.h\bios_0.h"            /* clrScrBIOS, goToXYBIOS, ... */

void test_BIOS_0 ( void )
{

    int i = 0 ;

    printStrBIOS("\n Pulse una tecla para borrar la pantalla ... ") ;

    leerTeclaBIOS() ;

    clrScrBIOS() ;

    printStrBIOS("\n \"") ;
    printStrHastaBIOS("0123456789ABCFEF", 10, FALSE) ;
    printCarBIOS('\"') ;
    printStrBIOS("\n \"") ;
    printStrHastaBIOS("0123456789ABCFEF", 10, TRUE ) ;
    printCarBIOS('\"') ;
    printStrBIOS("\n \"") ;
    printStrHastaBIOS("0123456789ABCFEF", 20, FALSE) ;
    printCarBIOS('\"') ;
    printStrBIOS("\n \"") ;
    printStrHastaBIOS("0123456789ABCFEF", 20, TRUE ) ;
    printCarBIOS('\"') ;

    printLnBIOS() ;

    printStrBIOS("\n Pulse una tecla para escribir en las 4 esquinas ... ") ;

    leerTeclaBIOS() ;

    clrScrBIOS() ;

    goToXYBIOS( 0, 0) ;
    printCarBIOS('A') ;
    goToXYBIOS( 0,79) ;
    printCarBIOS('B') ;
    goToXYBIOS(24, 0) ;
    printCarBIOS('C') ;
    goToXYBIOS(24,78) ;
    printCarBIOS('D') ;

    goToXYBIOS( 6, 0) ;

    printStrBIOS("\n Pulse una tecla para escribir numeros ... ") ;

    leerTeclaBIOS() ;

    clrScrBIOS() ;

    printStrBIOS("\n printDecBIOS( 0xFFFF, 1) =  ") ;
    printDecBIOS( 0xFFFF, 1) ;
    printStrBIOS("\n printHexBIOS( 0xFFFF, 4) =  ") ;
    printHexBIOS( 0xFFFF, 4) ;
    printStrBIOS("\n printIntBIOS(-0x8000, 1) = ") ;
    printIntBIOS(-0x8000, 1) ; /* error */
    printStrBIOS("\n printIntBIOS( 0x8000, 1) =  ") ;
    printIntBIOS( 0x8000, 1) ; /* error */
    printStrBIOS("\n printIntBIOS( 0x7FFF, 1) =  ") ;
    printIntBIOS( 0x7FFF, 1) ;

    printLnBIOS() ;

    printStrBIOS("\n printLDecBIOS( 0xFFFFFFFF, 1) =  ") ;
    printLDecBIOS( 0xFFFFFFFF, 1) ;
    printStrBIOS("\n printLHexBIOS( 0xFFFFFFFF, 8) =  ") ;
    printLHexBIOS( 0xFFFFFFFF, 8) ;
    printStrBIOS("\n printLIntBIOS(-0x80000000, 1) = ") ;
    printLIntBIOS(-0x80000000, 1) ; /* error */
    printStrBIOS("\n printLIntBIOS( 0x80000000, 1) =  ") ;
    printLIntBIOS( 0x80000000, 1) ; /* error */
    printStrBIOS("\n printLIntBIOS( 0x7FFFFFFF, 1) =  ") ;
    printLIntBIOS( 0x7FFFFFFF, 1) ;

    printLnBIOS() ;

    printStrBIOS("\n Pulse una tecla para continuar ... ") ;

    leerTeclaBIOS() ;

}

#endif
