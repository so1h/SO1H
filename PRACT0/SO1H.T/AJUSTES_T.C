/***************************************************************************/
/*                                AJUSTES_T.C                              */
/***************************************************************************/
/*                                                                         */
/***************************************************************************/

#include "..\so1hpub.t\def_test.h"                                 /* TEST */

#ifdef TEST

#include "..\so1hpub.h\tipos.h"                                  /* word_t */
#include "..\so1hpub.h\bios_0.h"        /* printStrBIOS, printHexBIOS, ... */
#include "..\so1h.h\ajustes.h"                               /* unidadBIOS */

void test_ajustes ( void )
{

    printStrBIOS("\n sizeof(modoSO1_t) = ") ;
    printHexBIOS(sizeof(modoSO1_t), 4) ;
    printLnBIOS() ;
    printStrBIOS("\n modoSO1 = ") ;
    printHexBIOS(modoSO1(), 4) ;
    printLnBIOS() ;

    printStrBIOS("\n unidadBIOS() = ") ;
    printHexBIOS(unidadBIOS(), 2) ;
    printLnBIOS() ;

    obtenerMapa() ;

    printStrBIOS("\n CS_SO1H  = ") ;
    printHexBIOS(CS_SO1H, 4) ;
    printLnBIOS() ;
    printStrBIOS("\n DS_SO1H  = ") ;
    printHexBIOS(DS_SO1H, 4) ;
    printLnBIOS() ;
    printStrBIOS("\n BSS_SO1H = ") ;
    printHexBIOS(BSS_SO1H, 4) ;
    printLnBIOS() ;

    guardarDS_SO1H_1() ;
   
    printStrBIOS("\n CS_SO1H  = ") ;
    printHexBIOS(valorSegDatos(), 4) ;
    printLnBIOS() ;

}

#endif
