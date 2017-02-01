/***************************************************************************/
/*                                BIOS_0_T.C                               */
/***************************************************************************/
/*                                                                         */
/***************************************************************************/

#include "..\so1hpub.t\def_test.h"                                 /* TEST */

#ifdef TEST

#include "..\so1hpub.h\tipos.h"                                  /* word_t */
#include "..\so1hpub.h\bios_0.h"            /* clrScrBIOS, goToXYBIOS, ... */
#include "..\so1hpub.h\biosdata.h"                         /* ptrFechaBios */

void test_BIOSDATA ( void )
{

    int i = 0 ;

    printStrBIOS("\n Fecha BIOS = ") ;

    printStrHastaBIOS((char *)ptrFechaBios, 8, FALSE) ;

    printLnBIOS() ;

    printStrBIOS("\n sizeof(BIOSAREA_t) = ") ;

    printDecBIOS(sizeof(BIOSAREA_t), 1) ;

    printLnBIOS() ;

    for ( i = 0 ; i < 4 ; i++ )
    {
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

    printStrBIOS("\n Pulse una tecla ... ") ;

    leerTeclaBIOS() ;

}

#endif
