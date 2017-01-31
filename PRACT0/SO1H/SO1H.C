/***************************************************************************/
/*                                  SO1H.c                                 */
/***************************************************************************/
/*                                                                         */
/***************************************************************************/

#include "..\so1hpub.h\tipos.h"                                  /* word_t */
#include "..\so1hpub.h\bios_0.h"            /* clrScrBIOS, goToXYBIOS, ... */
#include "..\so1hpub.h\biosdata.h"       /* ptrBiosArea, ptrFechaBios, ... */

#include "..\so1hpub.h\telon.h"   /*  */

#include "..\so1h.h\ajustes.h"   /* modoSO1, guardarDS_SO1, IMRInicial, CS_SO1H */

char global [ ] =                                       /* global variable */

  "  GLOBAL: Global variable. I am here." ;

void funcion ( char * str, int fila ) {

  word_t * ptrBufer = 0x0B8000 + fila*(2*80) ;
  int i = 0 ;

  while (str[i] != '\0') {
      *ptrBufer++ = 0x0700 | global[i] ;
      i++ ;
  }

}

void testPrintBIOS ( void ) {

  int i = 0 ;

  clrScrBIOS() ;

  goToXYBIOS( 0, 0) ; printCarBIOS('A') ;
  goToXYBIOS( 0,79) ; printCarBIOS('B') ;
  goToXYBIOS(24, 0) ; printCarBIOS('C') ;
  goToXYBIOS(24,78) ; printCarBIOS('D') ;

  goToXYBIOS( 6, 0) ;

  printStrBIOS("\n Pulse una tecla ... \n") ;

  leerTeclaBIOS() ;

  printStrBIOS("\n Hola mundo. \n") ;

  printStrBIOS("\n Fecha BIOS = ") ;

  printStrHastaBIOS((char *)ptrFechaBios, 8, FALSE) ;

  printLnBIOS() ;

  printStrBIOS("\n sizeof(BIOSAREA_t) = ") ;

  printDecBIOS(sizeof(BIOSAREA_t), 1) ;

  printLnBIOS() ;

  for ( i = 0 ; i < 4 ; i++ ) {
      printStrBIOS(" ptrBiosArea->COM_base[i] = ") ;
      printHexBIOS(ptrBiosArea->COM_base[i], 4) ;
      printLnBIOS() ;
  }

  printStrBIOS("\n basemem_K = ") ;

  printHexBIOS(ptrBiosArea->basemem_K, 4) ;

  printLnBIOS() ;

  printStrBIOS("\n VIDEO_mode = ") ;

  printDecBIOS(ptrBiosArea->VIDEO_mode, 1) ;

  printLnBIOS() ;

  printStrBIOS("\n pagActiva = ") ;

  printDecBIOS(ptrBiosArea->VIDEO_pagActiva, 1) ;

  printLnBIOS() ;

  printStrBIOS("\n Pulse una tecla ... \n") ;

  leerTeclaBIOS() ;

}

void testAjustes ( void ) {
	
  printStrBIOS("\n unidadBIOS() = ") ;
//while (TRUE) ;
  printHexBIOS(unidadBIOS(), 2) ; 
  printLnBIOS() ;  
  
}

void main ( void ) {

  word_t * ptr      = 0x0B8000 ;
  word_t * ptrBufer = 0x0B8000 ;
  int i = 0 ;
  
  salvarPantallaInicial() ;

  testPrintBIOS() ;
  
  restaurarPantallaInicial() ;
  
  testAjustes() ;

  return ;
  
  while (global[i] != '\0') {
      *ptrBufer++ = 0x0700 | global[i] ;
      i++ ;
  }

  funcion(global, 2) ;

  funcion(global, 4) ;

  while (TRUE) {
    ptr[0]++  ;
  }
}

