/*

Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, 
   this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE 
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
POSSIBILITY OF SUCH DAMAGE.

*/

/***************************************************************************/
/*                                  SO1H.c                                 */
/***************************************************************************/
/*                                                                         */
/***************************************************************************/

#include "..\so1hpub.h\tipos.h"                                  /* word_t */
#include "..\so1hpub.h\bios_0.h"            /* clrScrBIOS, goToXYBIOS, ... */
#include "..\so1hpub.h\biosdata.h"       /* ptrBiosArea, ptrFechaBios, ... */
#include "..\so1hpub.h\telon.h"              /* salvarPantallaInicial, ... */
#include "..\so1hpub.h\debug.h"        /* assert, mostrarFlags, valorFlags */
#include "..\so1hpub.h\pic.h"                   /* valorIMR, establecerIMR */
#include "..\so1h.h\ajustes.h"        /* unidadBIOS, modoSO1, obtenerMapa, */
//                                       /* guardarDS_SO1, IMRInicial, ... */
#include "..\so1h.h\so1dbg.h"             /* leerScancode, esperarScancode */
#include "..\so1h.h\s0.h"                /* mirarLoQueHay, MostrarLoQueHay */

void main ( void )
{
    word_t loQueHay ;
	int i ;
	
    asm("cli") ;                          /* se inhiben las interrupciones */
    
	if (modoSO1() == modoSO1_Exe) salvarPantallaInicial() ;
	
    mirarLoQueHay((word_t *)&loQueHay) ;
    mostrarLoQueHay(loQueHay) ;	
	
//  leerScancode() ;                          /* para detener la ejecucion */
//  leerScancode() ;                            /* con las ints. inhibidas */

    switch (modoSO1())
    {
    case modoSO1_Bin : /* SO1.BIN arrancado desde un disco/disquete (BIOS) */
    case modoSO1_Exe :                                          /* SO1.EXE */
        mostrarFlags() ;
        printStrBIOS("=> SO1H v0.1.0 (C) P.P.Lopez.R. & J.Lozano.D.P.") ;
        printLnBIOS() ;
        assert((valorFlags() & 0x0200) == 0x0000,
               "\a\n so1(): ERROR ints. no inhibidas") ;    /* '\a' == BEL */
    }
	
    if ((modoSO1() == modoSO1_Bin) || (modoSO1() == modoSO1_Bs))
    {
        printStrBIOS("\n unidadBIOS = 0x") ;
        printHexBIOS(unidadBIOS(), 2) ;
        printLnBIOS() ;		
//      inicSF(unidadBIOS()) ;  /* asigna memoria a segBuferSO1 y FAT (GM) */
//      assert(inicMinisfFAT() == 0, "\a\n so1(): ERROR minisfFAT") ;
//      inicTablaFichAbiertos() ;
    }
//  else
//      assert(inicMinisfMSDOS() == 0, "\a\n so1(): ERROR minisfMSDOS") ;	
	
    IMRInicial = valorIMR() ;          /* tomamos nota del IMR (pic 8259A) */
	
	printStrBIOS("\n valorIMR() = ") ; 
	printHexBIOS(valorIMR(), 4) ; 
	printStrBIOS(" = ") ; 
	for ( i = 0 ; i < 4 ; i++ ) {
	  printBinBIOS((valorIMR() >> 12-i*4) & 0x000F , 4) ; 
	  printStrBIOS(" ") ; 
	} 
	printLnBIOS() ; 
	
    obtenerMapa() ;                          /* CS_SO1H, DS_SO1H, BSS_SO1H */
    guardarDS_SO1H_1() ;                             /* segDatos = DS_SO1H */

//	/* aqui hay que meter el codigo correspondiente a las inicializaciones */
//	/* y a la creacion del proceso inicial.                                */
	
    leerScancode() ;                          /* para detener la ejecucion */
    leerScancode() ;                            /* con las ints. inhibidas */

    establecerIMR(IMRInicial) ;        /* mascara de interrupcion del 8259 */

    if (modoSO1() == modoSO1_Exe) {
		restaurarPantallaInicial() ;
        leerScancode() ;                      /* para detener la ejecucion */
        leerScancode() ;                        /* con las ints. inhibidas */
    }
	
    tirarS0(loQueHay) ;
	
}
