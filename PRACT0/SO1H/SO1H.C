/***************************************************************************/
/*                                  SO1H.c                                 */
/***************************************************************************/
/*                                                                         */
/***************************************************************************/

#include "..\so1hpub.h\tipos.h"                                  /* word_t */
#include "..\so1hpub.t\huge_t.c"              /* test_global, test_funcion */
#include "..\so1hpub.h\bios_0.h"            /* clrScrBIOS, goToXYBIOS, ... */
#include "..\so1hpub.t\bios_0_t.c"                          /* test_BIOS_0 */
#include "..\so1hpub.h\biosdata.h"       /* ptrBiosArea, ptrFechaBios, ... */
#include "..\so1hpub.t\biosdata_t.c"                      /* test_BIOSDATA */

#include "..\so1hpub.h\telon.h"   /*  */

#include "..\so1h.h\ajustes.h"  /* modoSO1, guardarDS_SO1, IMRInicial, ... */
#include "..\so1h.t\ajustes_t.c"                           /* test_ajustes */


void main ( void ) {

#ifndef TEST 

//test_spin() ;
  test_global() ;
  test_funcion() ;
  test_puntero() ;
  salvarPantallaInicial() ;
  test_BIOS_0() ;
  test_BIOSDATA() ;
  restaurarPantallaInicial() ;
  test_ajustes() ;

#endif 
  
  test_spin() ;  

}

