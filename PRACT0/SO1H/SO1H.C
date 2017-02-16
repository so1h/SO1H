/*
Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

/***************************************************************************/
/*                                  SO1H.c                                 */
/***************************************************************************/
/*                                                                         */
/***************************************************************************/

#include "..\so1hpub.h\tipos.h"                                  /* word_t */
#include "..\so1hpub.h\colores.h"                                  /* azul */
#include "..\so1hpub.t\huge_t.c"              /* test_global, test_funcion */
#include "..\so1hpub.h\bios_0.h"            /* clrScrBIOS, goToXYBIOS, ... */
#include "..\so1hpub.t\bios_0_t.c"                          /* test_BIOS_0 */
#include "..\so1hpub.h\biosdata.h"       /* ptrBiosArea, ptrFechaBios, ... */
#include "..\so1hpub.t\biosdata_t.c"                      /* test_BIOSDATA */

#include "..\so1hpub.h\telon.h"              /* salvarPantallaInicial, ... */

#include "..\so1h.h\s0.h"

#include "..\so1h.h\ajustes.h"        /* unidadBIOS, modoSO1, obtenerMapa, */
/* guardarDS_SO1, IMRInicial, ... */
#include "..\so1h.t\ajustes_t.c"                           /* test_ajustes */

#include <string.h>                                      /* memset, strcpy */

#ifdef _DOS
#include <stdlib.h>                                  /* exit, EXIT_SUCCESS */
#endif

#include "..\so1hpub.t\string_t.c"                          /* test_string */

#include "..\so1hpub.h\msdos.h"                              /* finProgDOS */
#include "..\so1hpub.t\msdos_t.c"                            /* test_msdos */

void main ( void )
{

#ifndef TEST

//  test_spin() ;
    test_global() ;
    test_funcion() ;
    test_puntero() ;
    salvarPantallaInicial() ;
    test_BIOS_0() ;
    test_BIOSDATA() ;
    restaurarPantallaInicial() ;
    test_ajustes() ;
    test_string() ;
    test_msdos() ;

#endif

    obtenerMapa() ;                          /* CS_SO1H, DS_SO1H, BSS_SO1H */
    guardarDS_SO1H_1() ;

    if (hayMSDOS())
    {
        printStrBIOS("\n") ;
        printStrBIOS(" Hay MSDOS \n") ;
    }
    else
    {
        printStrBIOS(" No hay MSDOS \n") ;
    }

    if (modoSO1() == modoSO1_Bin) test_spin() ;

#ifdef _DOS
    exit(EXIT_SUCCESS) ;
#else
    finProgDOS(0) ;
#endif

}
