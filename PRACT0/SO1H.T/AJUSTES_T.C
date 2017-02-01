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
	
    printStrBIOS("\n unidadBIOS() = ") ;
//  while (TRUE) ;
    printHexBIOS(unidadBIOS(), 2) ; 
    printLnBIOS() ;  
  
}

#endif
