/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                 so1h_0.c                                */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

/*

  SO1H_K.BIN       corresponde al nucleo
  SO1H_0.(SYS/EXE) corresponde a las inicializaciones del nucleo
                   incluyendo la carga de drivers

  Los ficheros SO1HIMG.(SYS/EXE) se construyen concatenando SO1H_0.(SYS/EXE)
  con SO1H_K.BIN y con los drivers que se quieran acompañar (DRV1.BIN,
  DRV2.BIN, ... , DRVN.BIN) y con un disco ram (DISCO.RD).

  SO1H_0.SYS + SO1H_K.BIN + drivers + disco ram = SO1HIMG.SYS
  SO1H_0.EXE + SO1H_K.BIN + drivers + disco ram = SO1HIMG.EXE

  El MBR/PBR o MSDOS llevan a cabo la carga de SO1HIMG.SYS o SO1HIMG.EXE
  respectivamente, dejando en memoria RAM todos esos ficheros.

  SO1H_0 toma en control inicialmente (en startBin, o en start) y
  toma nota de la unidad de arranque BIOS y el modo de arranque.

  En SO1HIMG tras SO1H_0 y antes de SO1H_K debe aparecer una tabla
  (directorio) que le indica a SO1H_0 el nombre y tamanio de todos
  los ficheros: SO1H_0, SO1H_K, DRV1.BIN, DRV2.BIN, ..., DRVN.BIN y
  DISCO.RD. También debe aparecer en esa tabla el tamanio de las
  pilas que necesitan todos esos programas.

  SO1H_0 debe reubicarse a una dirección superior que no entre en conflicto
  con la ubicacion final de los procesos correspondientes a todos esos
  ficheros, de cuya creacion debe ocuparse. Ademas SO1H_0 debe llevar
  a cabo todas las inicializaciones. En concreto: se crean los procesos
  necesarios para albergar todos esos programas (inicProcesos), se crean
  los recursos minimos (inicRecursos), y se inicializa la lista
  de bloques libres (inicGM) para contener los bloques de memoria
  que queden libres tras la creacion de los procesos con sus
  correspondientes pilas. Al terminar SO1H_0 debe haber puesto en la cola
  de preparados a SO1H_K o a un proceso INIC y dejado (bloqueados, pendientes
  de su desinstalacion) a todos los procesos drivers.

  Para poder ocuparse de las incializaciones SO1H_0 debe disponer de
  un puntero a descSO1H (descriptor del sistema declarado en DEF_PROC.H)
  de manera que SO1H_0 pueda llevar a cabo todas las inicializaciones
  como si fuera el nucleo SO1H_K.

  Cuando SO1H_0 de alguna manera devuelve el control a SO1H_K o al proceso
  INIC la memoria que ocupa se devuelve como memoria libre a la lista de
  bloques libres (GM). De esta manera el codigo de inicializacion se esfuma
  de la memoria con el consiguiente ahorro de ese recurso.

*/

#include <so1hpub.h\def_proc.h>                              /* cabecera_t */
#include <so1hpub.h\bios_0.h>               /* clrScrBIOS, goToXYBIOS, ... */
#include <so1hpub.h\telon.h>                      /* salvarPantallaInicial */
#include <so1hpub.h\debug.h>           /* assert, mostrarFlags, valorFlags */
#include <so1hpub.h\memvideo.h>              /* goToXYVideo, printCarVideo */
#include <so1hpub.h\bios_crt.h>                             /* inicBiosCrt */
#include <so1hpub.h\printvid.h>                           /* printStrVideo */
#include <so1hpub.h\seccion.h>                         /* _start__text ... */

#include <so1h.h\so1dbg.h>                /* leerScancode, esperarScancode */
#include <so1h.h\s0.h>                   /* mirarLoQueHay, MostrarLoQueHay */

#include <so1h_0.h\so1h_0.h>          /* dirInicial, maxEDF, reubicacion_t */
#include <so1h_0.h\dirf.h>                                  /* entradaDF_t */
#include <so1h_0.h\inick.h>                                  /* inicKernel */

#include <string.h>                                             /* memmove */

dword_t dirInicial ;        /* direccion correspondiente a CS:0000 de SO1H */

dword_t dirCargaFichero ;                 /* direccion de carga de SO1HIMG */

dword_t dirFinal ;                              /* primera direccion libre */

dword_t numEDF ;                        /* numero real de entradas de dirf */

dword_t numER ;              /* numero de entradas de la tabla reubicacion */  

#define maxER 8                /* numero maximo de entradas de reubicacion */

reubicacion_t TR [ maxER ] ;                          /* tabla reubicacion */

reubicacion_t * reubicacion = &TR ;                   /* tabla reubicacion */

int main ( void )
{
    word_t loQueHay ;
	
    asm("cli") ;             /* se inhiben las interrupciones (SO1H_0.EXE) */

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
    case modoSO1_Bin :       /* SO1H_0.BIN arrancado desde un disco (BIOS) */
    case modoSO1_Exe :                                       /* SO1H_0.EXE */
        mostrarFlags() ;
        printStrVideo("=> SO1H v 0.1.2 ") ;
//      printStrVideo("=> SO1H v 0.1.0 (C) P.P.Lopez.R. & J.Lozano.D.P.") ;
        printLnVideo() ;
        assert((valorFlags() & 0x0200) == 0x0000,
               "\a\n ERROR: ints. no inhibidas") ;    /* '\a' == BEL */
    }

    leerScancode() ;                          /* para detener la ejecucion */
    leerScancode() ;                            /* con las ints. inhibidas */

//  leer tabla dirf

/*  la instrucción siguiente daba problemas con Smaller C porque en la     */
/*  funcion CSInicial simplemente se ponía el resultado en ax de manera    */
/*  que la palabra alta de eax (que es lo que realmente devuelve la        */
/*  funcion) no se borraba. El problema se arreglo en CSInicial moviendo a */
/*  eax el resultado en vez de a ax.                                       */

    dirInicial = (dword_t)(((dword_t)(CSInicial())) << 4) + sizeof(cabecera_t) ;

/*  CSInicial() indica el segmento de la cabecera del programa en el caso  */
/*  so1himg.exe. En el caso so1himg.sys simula lo mismo apuntando al       */
/*  que correspondería a la cabecera si la hubiera.                        */
/*  dirInicial apunta en todos los casos al primer byte de código.         */

	entradaDF_t * ptrDirf = (
	(
	    dirInicial +
		(dword_t)(((int)&_start__bss) - ((int)&_start__text)) +
	    (dword_t)15
	) & (dword_t)0xFFFFFFF0) ;

	numEDF = ptrDirf[1].tam/sizeof(entradaDF_t) ;

    assert((numEDF <= maxER+2),
           "\a\n ERROR: SO1HIMG (numEDF > maxEDF)") ;       /* '\a' == BEL */

    printStrVideo("\n CSInicial = ") ;
    printHexVideo(CSInicial(), 4) ;
    printStrVideo(" dirInicial = ") ;
    printLHexVideo(dirInicial, 8) ;
//  printStrVideo(" ") ;
//  printLHexVideo(*((dword_t *)dirInicial), 8) ; /* primera doble palabra de codigo */
	printStrVideo(" ptrDirf = ") ;
	printLHexVideo((dword_t)ptrDirf, 8) ;
    printStrVideo(" numEDF = ") ;
	printLDecVideo((dword_t)numEDF, 1) ;
	printStrVideo("\n\n dirf: ") ;
	printStrVideo(
	    "\n"
		"\n"
        " ind        nombre               comando        pos   tam  start  SS  SP0  t \n"
	    " --- -------------------- -------------------- ----- ----- ----- ---- ---- - \n") ;
   	for ( int i = 0 ; i < numEDF ; i++ ) {
		printDecVideo(i, 4) ;
		printStrVideo(" ") ;
        printStrHastaVideo(ptrDirf[i].nombre, 20, TRUE) ;
		printStrVideo(" ") ;
        printStrHastaVideo(ptrDirf[i].comando, 20, TRUE) ;
        printStrVideo(" ") ;
        printLHexVideo(ptrDirf[i].pos, 5) ;
        printLDecVideo(ptrDirf[i].tam, 6) ;
        printStrVideo(" ") ;
        printLHexVideo(ptrDirf[i].start, 5) ;
        printStrVideo(" ") ;
//	    printLHexVideo(ptrDirf[i].otro, 8) ;
//      printStrVideo(" ") ;
	    printHexVideo(ptrDirf[i].SS, 4) ;
        printStrVideo(" ") ;
	    printHexVideo(ptrDirf[i].SP0, 4) ;
        printStrVideo(" ") ;
	    printDecVideo(ptrDirf[i].tipo, 1) ;
		printLnVideo() ;
	}

//  reubicar entradas de la 2 a numEDF-1

    dword_t dirReub = dirInicial ;

	if (modoSO1() != modoSO1_Exe)
		dirCargaFichero = dirInicial ;
	else
		dirCargaFichero = dirInicial - sizeof(cabecera_t) ;

//  leerScancode() ;                          /* para detener la ejecucion */
//  leerScancode() ;                            /* con las ints. inhibidas */

//  printStrVideo("\n") ;

	for ( int i = 2 ; i < numEDF ; i++ ) {

	    printStrVideo("\n reubicando i = ") ;
	    printLIntVideo(i, 1) ;
	    printStrVideo(" nombre = ") ;
	    printStrVideo(ptrDirf[i].nombre) ;

//	    while(TRUE) ;

		memcpy(&reubicacion[i-2].entradaDF, &ptrDirf[i], sizeof(entradaDF_t)) ;
	    reubicacion[i-2].origen = dirCargaFichero + ptrDirf[i].pos ;
	    reubicacion[i-2].destino = dirReub ;
		if ((ptrDirf[i].tipo == proceso_DF) ||
		    (ptrDirf[i].tipo == so1h_k_DF))
		    dirReub = dirReub +
		              (((dword_t)ptrDirf[i].SS) << 4) +
    			      ((ptrDirf[i].SP0 + 15) & (dword_t)0xFFFFFFF0) ;
	    else
		    dirReub = dirReub +
    			      ((ptrDirf[i].tam + 15) & (dword_t)0xFFFFFFF0) ;

	}

    dirFinal = dirReub ;

	numER = numEDF - 2 ; 
	
	printStrVideo("\n\n dirInicial = ") ;
	printLHexVideo(dirInicial, 8) ;
	printStrVideo(" dirFinal = ") ;
	printLHexVideo(dirFinal, 8) ;

//  Primero reubicamos el contenido propiamente dicho de los ficheros para */
//  luego poner a cero las areas correspondientes a los bss y a las pilas. */
//  Si se hace todo en el mismo bucle puede ocurrir que se ponga a cero el */
//  contenido de los ficheros tras su reubicacion.                         */
//  La funcion memcpy da problemas cuando el destino cae dentro del area   */
//  que se va a copiar, por lo que es necesario utilizar memmove en vez de */
//  memcpy.                                                                */

    printStrVideo("\n") ;

	for ( int j = 0 ; j < numER ; j++ ) {
//     	memcpy(reubicacion[j].destino,        /* memcpy(d,o,n) d > o falla */
    	memmove(reubicacion[j].destino,       /* memmove(d,o,n) siempre ok */
        		reubicacion[j].origen,
			    reubicacion[j].entradaDF.tam) ;

	    printStrVideo("\n nombre = ") ;
	    printStrHastaVideo(reubicacion[j].entradaDF.nombre, 20, TRUE) ;
	    printStrVideo(" origen = ") ;
    	printLHexVideo(reubicacion[j].origen, 8) ;
	    printStrVideo(" destino = ") ;
	    printLHexVideo(reubicacion[j].destino, 8) ;
	    printStrVideo(" tam = ") ;
	    printLDecVideo(reubicacion[j].entradaDF.tam, 1) ;
    }

	for ( int j = 0 ; j < numER ; j++ ) {      /* inicializamos bss y pila */
		if ((reubicacion[j].entradaDF.tipo == proceso_DF) ||
		    (reubicacion[j].entradaDF.tipo == so1h_k_DF))
		{
		    memset                         /* inicializamos a ceros el bss */
		    (
		        reubicacion[j].destino + reubicacion[j].entradaDF.tam,
			    0,
		        (((dword_t)reubicacion[j].entradaDF.SS) << 4) - reubicacion[j].entradaDF.tam
	        ) ;

    		memset            /* inicializamos a ceros el area de pila bss */
	    	(
		        reubicacion[j].destino + (((dword_t)reubicacion[j].entradaDF.SS) << 4),
			    0,
			    ((dword_t)reubicacion[j].entradaDF.SP0 + 15) & (dword_t)0xFFFFFFF0
		    ) ;
		}

	}

	inicKernel() ; /* a partir de dirInicial, dirFinal, reubicacion, numER */

    return(0) ;
}
