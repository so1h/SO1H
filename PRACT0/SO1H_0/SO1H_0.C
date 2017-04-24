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

#include "..\so1hpub.h\def_proc.h"                           /* descSO1H_t */
#include "..\so1hpub.h\bios_0.h"            /* clrScrBIOS, goToXYBIOS, ... */
#include "..\so1hpub.h\telon.h"                   /* salvarPantallaInicial */
#include "..\so1hpub.h\debug.h"        /* assert, mostrarFlags, valorFlags */
#include "..\so1hpub.h\memvideo.h"           /* goToXYVideo, printCarVideo */
#include "..\so1hpub.h\bios_crt.h"                          /* inicBiosCrt */
#include "..\so1hpub.h\printvid.h"                        /* printStrVideo */
#include "..\so1hpub.h\seccion.h"                      /* _start__text ... */

#include "..\so1h.h\so1dbg.h"             /* leerScancode, esperarScancode */
#include "..\so1h.h\s0.h"                /* mirarLoQueHay, MostrarLoQueHay */

#include "..\so1h_0.h\dirf.h"                                   /* ptrDirf */

//descSO1H_t * ptrDescSO1H ;                             /* puntero a SO1H_K */

typedef struct {           
    entradaDF_t entradaDF ; 
	dword_t origen ;
	dword_t destino ;
} reubicacion_t ;	       /* extension de entradaDF_t para la reubicacion */
	
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
        printStrVideo("=> SO1H v 0.1.0 (C) P.P.Lopez.R. & J.Lozano.D.P.") ;
        printLnVideo() ;
        assert((valorFlags() & 0x0200) == 0x0000,
               "\a\n so1(): ERROR ints. no inhibidas") ;    /* '\a' == BEL */
    }

    leerScancode() ;                          /* para detener la ejecucion */
    leerScancode() ;                            /* con las ints. inhibidas */
	
//  leer tabla dirf	                                                    

    dword_t dirInicial = ((dword_t)(CSInicial()) << 4) + sizeof(cabecera_t) ;

	dword_t dw = (
	(
	    dirInicial + 
		(dword_t)(((int)&_start__bss) - ((int)&_start__text)) + 
	    (dword_t)15
	) & (dword_t)0xFFFFFFF0) ;

	ptrDirf = dw ;
	
	dword_t numEDF = ptrDirf[1].tam/sizeof(entradaDF_t) ; 
	
    printStrVideo("\n CSInicial = ") ;
    printHexVideo(CSInicial(), 4) ;
    printStrVideo(" dirInicial = ") ;
    printLHexVideo(dirInicial, 8) ;
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

//  reubicar entradas 2 a numEDP

	reubicacion_t reubicacion [ 10 ] ;
	
	dword_t numReub = numEDF - 2 ;
	
    dword_t dirReub = dirInicial ;
	
	for ( int i = 2 ; i < numEDF ; i++ ) {
		memcpy(&reubicacion[i-2].entradaDF, &ptrDirf[i], sizeof(entradaDF_t)) ;
	    reubicacion[i-2].origen = dirInicial + ptrDirf[i].pos ;
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
	
    dword_t dirFinal = dirReub ;
	
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
			
	for ( int i = 0 ; i < (numEDF-2) ; i++ ) {  
//     	memcpy(reubicacion[i].destino,        /* memcpy(d,o,n) d > o falla */
    	memmove(reubicacion[i].destino,       /* memmove(d,o,n) siempre ok */
        		reubicacion[i].origen, 
			    reubicacion[i].entradaDF.tam) ;
				
	    printStrVideo("\n\n nombre = ") ;
	    printStrHastaVideo(reubicacion[i].entradaDF.nombre, 20, TRUE) ;
	    printStrVideo(" origen = ") ;
    	printLHexVideo(reubicacion[i].origen, 8) ;			
	    printStrVideo(" destino = ") ;
	    printLHexVideo(reubicacion[i].destino, 8) ;			
	    printStrVideo(" tam = ") ;
	    printLDecVideo(reubicacion[i].entradaDF.tam, 1) ;			
    }
	
	for ( int i = 0 ; i < (numEDF-2) ; i++ ) { /* inicializamos bss y pila */
		if ((reubicacion[i].entradaDF.tipo == proceso_DF) ||
		    (reubicacion[i].entradaDF.tipo == so1h_k_DF)) 
		{
		    memset                         /* inicializamos a ceros el bss */
		    (
		        reubicacion[i].destino + reubicacion[i].entradaDF.tam, 
			    0,
		        (((dword_t)reubicacion[i].entradaDF.SS) << 4) - reubicacion[i].entradaDF.tam
	        ) ;

    		memset            /* inicializamos a ceros el area de pila bss */
	    	(
		        reubicacion[i].destino + (((dword_t)reubicacion[i].entradaDF.SS) << 4), 
			    0,
			    ((dword_t)reubicacion[i].entradaDF.SP0 + 15) & (dword_t)0xFFFFFFF0
		    ) ;
		}	

	}
    
//  llamar a la funcion _start de so1h_k para hacer la reubicacion
//  (solo puede llamarse una vez a _start para reubicar)
   
    dword_t dirStartKernel ;
	
	dword_t dirCargaDescSO1H ;
	
	descSO1H_t * descSO1H ;
	
	dirStartKernel = 
	    dirInicial + 
	    reubicacion[0].entradaDF.start -
	    sizeof(cabecera_t) ;                  /* queda el resultado en EAX */

	typedef int ( * main_t ) ( void ) ;	
		
	typedef void ( * cargarDescSO1H_t ) ( descSO1H_t * descSO1H ) ;
	
	dirCargaDescSO1H = 
	   ((main_t)dirStartKernel)() ;         /* llamamos a _start de so1h_k */
	
	((cargarDescSO1H_t)dirCargaDescSO1H)(&descSO1H) ;          /* descSO1H */
	
//  inicializar el nucleo ==> PROCESOS.C
//  reservar espacio y crear el proceso so1_k y demas procesos
//	reservar espacio para el disco ram
//  poner en preparados a los drivers de so1himg y al proceso inicial
//  finalmente: activarThread(sigThread())

    while (TRUE) ;
	asm("nop") ;
	
	return(0) ;
}	
