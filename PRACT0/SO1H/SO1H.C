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

/* ----------------------------------------------------------------------- */
/*                                  SO1H.c                                 */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

#include "..\so1hpub.h\tipos.h"                                  /* word_t */
#include "..\so1hpub.h\bios_0.h"            /* clrScrBIOS, goToXYBIOS, ... */
#include "..\so1hpub.h\biosdata.h"       /* ptrBiosArea, ptrFechaBios, ... */
#include "..\so1hpub.h\telon.h"                   /* salvarPantallaInicial */
#include "..\so1hpub.h\debug.h"        /* assert, mostrarFlags, valorFlags */
#include "..\so1hpub.h\pic.h"                   /* valorIMR, establecerIMR */
#include "..\so1h.h\ajustsp.h"                               /* SP0_Kernel */
#include "..\so1h.h\ajustes.h"         /* modoSO1, unidadBIOS, IMRInicial, */
//                                                          /* obtenerMapa */
#include "..\so1h.h\so1dbg.h"             /* leerScancode, esperarScancode */
#include "..\so1h.h\s0.h"                /* mirarLoQueHay, MostrarLoQueHay */

#include "..\so1h.h\gm.h"                        /* inicGM, k_buscarBloque */
#include "..\so1hpub.h\memvideo.h"           /* goToXYVideo, printCarVideo */
#include "..\so1hpub.h\bios_crt.h"                          /* inicBiosCrt */
#include "..\so1hpub.h\printvid.h"                        /* printStrVideo */
#include "..\so1hpub.h\seccion.h"                      /* mostrarSecciones */
#include "..\so1h.h\interrup.h"                   /* inicTVI, redirigirInt */
#include "..\so1hpub.h\ll_s_exc.h"                            /* nVIntSO1H */
#include "..\so1h.h\procesos.h"           /* inicProcesos, indThreadActual */
#include "..\so1h.h\llamadas.h"                                /* isr_SO1H */

#define pSV(x) printStrVideo(x)                                   /* macro */
//#define E(x) x
#define E(x) { pSV("\n ") ; pSV(#x) ; pSV(" ... ") ; x ; }        /* macro */

void * funcion ( void * arg ) {
    while (TRUE) {
//      printCarVideo(*((char *)arg)) ;
	    (*((char *)(0xB8000+2*78)))++ ;
//		asm("mov ax,0x0b02") ;
//      asm("int 0x60") ;
//	    (*((char *)(0xB8000+2*(78-*((int *)(arg))))))++ ;
	}
asm
(
    "   db 'funcion' "   
) ;
}

void main ( void )
{
    word_t loQueHay ; 

    asm("cli") ;                          /* se inhiben las interrupciones */

    if (modoSO1() == modoSO1_Exe) salvarPantallaInicial() ;
    else if (modoSO1() == modoSO1_Bin) clrScrBIOS() ;

    inicMemVideo() ;
    ocultaCursorBIOS() ;  /* parece que no funciona bien en msdos (Takeda) */

    mirarLoQueHay((word_t *)&loQueHay) ;
    mostrarLoQueHay(loQueHay) ;

//  leerScancode() ;                          /* para detener la ejecucion */
//  leerScancode() ;                            /* con las ints. inhibidas */

    switch (modoSO1())
    {
    case modoSO1_Bin : /* SO1.BIN arrancado desde un disco/disquete (BIOS) */
    case modoSO1_Exe :                                          /* SO1.EXE */
        mostrarFlags() ;
        printStrVideo("=> SO1H v 0.1.0 (C) P.P.Lopez.R. & J.Lozano.D.P.") ;
        printLnVideo() ;
        assert((valorFlags() & 0x0200) == 0x0000,
               "\a\n so1(): ERROR ints. no inhibidas") ;    /* '\a' == BEL */
    }

//  leerScancode() ;                          /* para detener la ejecucion */
//  leerScancode() ;                            /* con las ints. inhibidas */

    obtenerMapa() ;                 /* CS_SO1H, DS_SO1H, SS_SO1H, BSS_SO1H */

    printStrVideo(
        "\n"
        " CS_SO1H  RO_SO1H  DS_SO1H  BSS_SO1H  SS_SO1H  \n"
        " -------- -------- -------- --------- -------- \n"
        "   ") ;
    printHexVideo(CS_SO1H, 4) ;
    printStrVideo("     ") ;
    printHexVideo(RO_SO1H, 4) ;
    printStrVideo("     ") ;
    printHexVideo(DS_SO1H, 4) ;
    printStrVideo("     ") ;
    printHexVideo(BSS_SO1H, 4) ;
    printStrVideo("      ") ;
    printHexVideo(SS_SO1H, 4) ;
    printLnVideo() ;

    mostrarSecciones() ;

//  /* aqui hay que meter el codigo correspondiente a las inicializaciones */
//  /* y a la creacion del proceso inicial.                                */

    leerScancode() ;                          /* para detener la ejecucion */
    leerScancode() ;                            /* con las ints. inhibidas */

//  E(inicRecursos()) ;    

	E(inicProcesos()) ;           /* inicializacion del gestor de procesos */ 
	                                          /* y se inicializa SS_Kernel */
    descProceso[indProcesoActual].uid = 0 ;                        /* root */
    descProceso[indProcesoActual].gid = 0 ;                        /* root */

    E(inicGM()) ;                  /* inicialización del gestor de memoria */

    printStrVideo(
        "\n"
        "\n"
        " tamBloqueMax = ") ;
    printDecVideo(tamBloqueMax, 1) ;
    printStrVideo(" paragrafos (") ;
    printHexVideo(tamBloqueMax, 4) ;
    printStrVideo(") = ") ;
    printDecVideo(tamBloqueMax/(1024/16), 1) ;
    printStrVideo(" KBytes") ;

    printLnVideo() ;
    mostrarListaLibres() ;

    printStrVideo(
        "\n"
        " SS_Kernel = ") ;
    printHexVideo(SS_Kernel, 4) ;
    printStrVideo(" SP0_Kernel = ") ;
    printHexVideo(SP0_Kernel, 4) ;
    printLnVideo() ;

    mostrarListaLibres() ;

    leerScancode() ;                          /* para detener la ejecucion */
    leerScancode() ;                            /* con las ints. inhibidas */

#if (0)

    {
        word_t seg = k_buscarBloque(0x20) ;
        mostrarListaLibres() ;
        k_devolverBloque(seg, 0x20) ;
        mostrarListaLibres() ;
    }

    leerScancode() ;                          /* para detener la ejecucion */
    leerScancode() ;                            /* con las ints. inhibidas */

#endif

    if ((modoSO1() == modoSO1_Bin) || (modoSO1() == modoSO1_Bs))
    {
        printStrVideo("\n unidadBIOS = 0x") ;
        printHexVideo(unidadBIOS(), 2) ;
        printLnVideo() ;
//      inicSF(unidadBIOS()) ;  /* asigna memoria a segBuferSO1 y FAT (GM) */
//      assert(inicMinisfFAT() == 0, "\a\n so1(): ERROR minisfFAT") ;
//      inicTablaFichAbiertos() ;
    }
//  else
//      assert(inicMinisfMSDOS() == 0, "\a\n so1(): ERROR minisfMSDOS") ;

    IMRInicial = valorIMR() ;          /* tomamos nota del IMR (pic 8259A) */

    E(inicTVI()) ;    /* inicializamos la tabla de vectores de interrucion */
	
    printStrVideo("\n valorIMR() = ") ;
    printHexVideo(valorIMR(), 4) ;
    printStrVideo(" = ") ;

    for ( int i = 0 ; i < 4 ; i++ )
    {
        printBinVideo((valorIMR() >> 12-i*4) & 0x000F, 4) ;
        printStrVideo(" ") ;
    }
    printLnVideo() ;

//  leerScancode() ;                          /* para detener la ejecucion */
//  leerScancode() ;                            /* con las ints. inhibidas */

//	/* establecemos el vector de interrupcion de llamadas al sistema SO1   */

    printStrVideo("\n redirigirInt(nVIntSO1H, isr_SO1H)") ;
    redirigirInt(nVIntSO1H, isr_SO1H) ;
    printStrVideo(" nVIntSO1H = 0x") ;
    printHexVideo(nVIntSO1H, 2) ;
    printStrVideo(" isr_SO1H = 0x") ;
    printLHexVideo((dword_t)isr_SO1H, 5) ;
	
	/* primera llamada al sistema de prueba: AH = 0x0f (no bloqueante) */ 

	asm("mov ax,0f00h") ;
	asm("int 0x60") ;
	
    printStrVideo("\n\n Se ha retornado de la llamada al sistema ") ;

	/* segunda llamada al sistema de prueba: AH = 0x0b (no bloqueante) */ 
	
	asm("mov ax,0b00h") ;
	asm("int 0x60") ;
	
    printStrVideo("\n\n Se ha retornado de la llamada al sistema ") ;
	
	int n = 1 ;
    printStrVideo("\n\n crearThread(funcion, 0x4000, &n, 0) = ") ;
	printIntVideo(crearThread(funcion, 0x4000, NULL, 0), 1) ;
	printStrVideo("\n\n descThread[1].SSThread = ") ;
	printHexVideo(descThread[1].SSThread, 4) ;
	printStrVideo("\n\n descThread[1].trama = ") ;
	printLHexVideo(descThread[1].trama, 8) ;	
	
	/* tercera llamada al sistema de prueba: AH = 0x0b (bloqueante!!!) */ 
	
	asm("mov ax,0b01h") ;
	asm("int 0x60") ;
	
    printStrVideo("\n\n Se ha retornado de la llamada al sistema ") ;
	

    /*  pasos siguientes:
          PROCESOS.C
          implementar la llamada al sistema fork()
          y las llamadas de drivers
          crear con fork() un proceso (thread) driver del disco/disquete
          implementar exec
    */

//  while (TRUE) ;
    leerScancode() ;                          /* para detener la ejecucion */
    leerScancode() ;                            /* con las ints. inhibidas */

    establecerIMR(IMRInicial) ;        /* mascara de interrupcion del 8259 */

    tirarS0(loQueHay) ;

}

