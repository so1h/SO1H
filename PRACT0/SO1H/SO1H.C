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

#include <so1hpub.h\tipos.h>                                     /* word_t */
#include <so1hpub.h\bios_0.h>               /* clrScrBIOS, goToXYBIOS, ... */
#include <so1hpub.h\biosdata.h>          /* ptrBiosArea, ptrFechaBios, ... */
#include <so1hpub.h\telon.h>                      /* salvarPantallaInicial */
#include <so1hpub.h\debug.h>           /* assert, mostrarFlags, valorFlags */
#include <so1hpub.h\pic.h>                      /* valorIMR, establecerIMR */
#include <so1h.h\ajustsp.h>                                  /* SP0_Kernel */
#include <so1h.h\ajustes.h>            /* modoSO1, unidadBIOS, IMRInicial, */
//                                                          /* obtenerMapa */
#include <so1h.h\so1dbg.h>                /* leerScancode, esperarScancode */
#include <so1h.h\s0.h>                   /* mirarLoQueHay, MostrarLoQueHay */

#include <so1hpub.h\memvideo.h>              /* goToXYVideo, printCarVideo */
#include <so1hpub.h\bios_crt.h>                             /* inicBiosCrt */
#include <so1hpub.h\printvid.h>                           /* printStrVideo */
#include <so1hpub.h\seccion.h>                         /* mostrarSecciones */
#include <so1hpub.h\ll_s_exc.h>                               /* nVIntSO1H */

#include <so1h.h\gm.h>                           /* inicGM, k_buscarBloque */
#include <so1h.h\ints.h>                          /* inicTVI, redirigirInt */
#include <so1h.h\procs.h>                 /* inicProcesos, indThreadActual */
#include <so1h.h\llamadas.h>                                   /* isr_SO1H */
#include <so1h.h\recurs.h>                                 /* inicRecursos */

#include <so1hpub.h\ll_s_thr.h>                            /* thread_yield */

#include <so1h.h\demo_0.h>                                       /* demo_0 */

#define pSV(x) printStrVideo(x)                                   /* macro */
//#define E(x) x
#define E(x) { pSV("\n ") ; pSV(#x) ; pSV(" ... ") ; x ; }        /* macro */

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
        printStrVideo("=> SO1H v 0.1.2 ") ;
//      printStrVideo("=> SO1H v 0.1.0 (C) P.P.Lopez.R. & J.Lozano.D.P.") ;
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

//  /* establecemos el vector de interrupcion de llamadas al sistema SO1   */

    printStrVideo("\n redirigirInt(nVIntSO1H, isr_SO1H)") ;
    redirigirInt(nVIntSO1H, isr_SO1H) ;
    printStrVideo(" nVIntSO1H = 0x") ;
    printHexVideo(nVIntSO1H, 2) ;
    printStrVideo(" isr_SO1H = 0x") ;
    printLHexVideo((dword_t)isr_SO1H, 5) ;

    printStrVideo("\n Pulse una tecla para continuar ... ") ;

//	demo_0() ;
//	demo_1() ;
//	demo_2() ;
//	demo_3() ;                                   /* 24 thread horizontales */
//	demo_4() ;                                   /* 80 threads verticales  */
//	demo_5("", 0, 0, 24, 79) ; /* 80 threads verticales con frase configurable  */
//	demo_5("0123456789, 0, 0, 24, 79") ;
//	demo_5("0 1 2 3 4 5 6 7 8 9 ", 0, 0, 24, 79) ;
//	demo_5("ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0, 0, 24, 79) ;
//	demo_5("A B C D E F G H I J K L M N O P Q R S T U V W X Y Z ", 0, 0, 24, 79) ;
//	demo_5(" ODIO ETERNO A LOS ROMANOS", 0, 0, 24, 79) ;
//	demo_5("  O D I O  E T E R N O  A  L O S  R O M A N O S", 0, 0, 24, 79) ;
//	demo_5("        U N I V E R S I D A D  P O L I T E C N I C A  D E  M A D R I D        ",
//	       0, 0, 24, 79) ;
	demo_5("       U N I V E R S I D A D _ P O L I T E C N I C A _ D E _  M A D R I D      ",
	       3, 0, 21, 79) ;
	
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

#if (1)

    {
		printStrVideo("\n") ;

        mostrarListaLibres() ;
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
    }

    leerScancode() ;                          /* para detener la ejecucion */
    leerScancode() ;                            /* con las ints. inhibidas */

#endif	
	
    establecerIMR(IMRInicial) ;        /* mascara de interrupcion del 8259 */

    tirarS0(loQueHay) ;

}

