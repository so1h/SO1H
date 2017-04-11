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
  con SO1H0.BIN y con los drivers que se quieran acompañar (DRV1.BIN, 
  DRV2.BIN, ... , DRVN.BIN) y con un disco ram
  
  SO1H_0.BIN + SO1H.BIN + drivers + disco ram = SO1HIMG.SYS 
  SO1H_0.EXE + SO1H.BIN + drivers + disco ram = SO1HIMG.EXE

  El MBR/PBR o MSDOS llevan a cabo la carga de SO1HIMG.SYS o SO1HIMG.EXE
  respectivamente, dejando en memoria RAM todos esos ficheros.
  
  SO1H_0 toma en control inicialmente (en startBin, o en start) y 
  toma nota de la unidad de arranque BIOS y el modo de arranque.
  
  SO1H_0 debe contener una tabla (directorio) que le indica el nombre
  y tamanio de todos los ficheros: SO1H_0, SO1H, DRV1.BIN,
  DRV2.BIN, ..., y DRVN.BIN. También debe conocer el tamanio de las
  pilas que necesitan todos esos programas, asi como el tamanio 
  de la pila del nucleo SO1H.  
  
  SO1H_0 debe reubicarse a una dirección superior que no entre en conflicto 
  con la ubicacion final de los procesos correspondientes a todos esos
  ficheros, de cuya creacion debe ocuparse. Ademas SO1H_0 debe llevar
  a cabo todas las inicializaciones. En concreto: se crean los procesos 
  necesarios para albergar todos esos programas (inicProcesos), se crean los
  recursos minimos (inicRecursos), y se incializa la lista
  de bloques libres (inicGM) para contener los bloques de memoria
  que queden libres tras la creacion de los procesos con sus 
  correspondientes pilas. Al terminar SO1H_0 debe haber puesto en la cola 
  de preparados a SO1H y dejado (bloqueados, pendientes de su desinstalacion)
  a todos los procesos drivers.
  
  Para poder ocuparse de las incializaciones SO1H_0 debe disponer de 
  un puntero a descSO1H (descriptor del sistema declarado en DEF_PROC.H) 
  de manera que SO1H0 pueda llevar a cabo todas las inicializaciones
  como si fuera el nucleo SO1H.
  
  Cuando SO1H_0 de alguna manera devuelve el control a SO1H la memoria 
  que ocupa se devuelve como memoria libre a la lista de bloques libres (GM).
  De esta manera el codigo de inicializacion se esfuma con el 
  consiguiente ahorro de memoria.
  
*/

#include "..\so1hpub.h\def_proc.h"
#include "..\so1h_0.h\dirf.h"                                   /* ptrDirf */

#include "..\so1hpub.h\bios_0.h"            /* clrScrBIOS, goToXYBIOS, ... */
#include "..\so1hpub.h\telon.h"                   /* salvarPantallaInicial */
#include "..\so1hpub.h\debug.h"        /* assert, mostrarFlags, valorFlags */
#include "..\so1h.h\so1dbg.h"             /* leerScancode, esperarScancode */
#include "..\so1h.h\s0.h"                /* mirarLoQueHay, MostrarLoQueHay */

#include "..\so1hpub.h\memvideo.h"           /* goToXYVideo, printCarVideo */
#include "..\so1hpub.h\bios_crt.h"                          /* inicBiosCrt */
#include "..\so1hpub.h\printvid.h"                        /* printStrVideo */
#include "..\so1hpub.h\seccion.h"                      /* _start__text ... */

descSO1H_t * ptrDescSO1H ;

int main ( word_t CS0 ) 
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

	dword_t dw = (
	(
	    ((dword_t)(CSInicial()) << 4) + 
		(dword_t)(((int)&_start__bss) - ((int)&_start__text)) + 
	    (dword_t)32 + 
	    (dword_t)15
	) & (dword_t)0xFFFFFFF0) ;

	ptrDirf = dw ;
	
	dword_t numEDF = ptrDirf[1].tam/sizeof(entradaDF_t) ; 
	
    printStrVideo("\n CSInicial = ") ;
    printHexVideo(CSInicial(), 4) ;
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

//  reubicar	



	
	while (TRUE) ;
	
//	memcpy(0x90000, &_start__text-32, &_stop__bss-&_start__text+32) ;
	
	
#if (0)
	if ((&_start__text-32) != (void *)0x90000)
	{
		memcpy(0x90000, &_start__text-32, &_stop__bss-&_start__text+32) ;
asm
(
    " extern __start              \n" /* funcion a la que ceder el control */
//                                          /* cedemos el control a _start */
    "   mov ebx,__start           \n"  /* _start es la funcion que reubica */
    "   ror ebx,4                 \n"                      /* ver c0dh.asm */
    "   mov ax,0x9000             \n"
    "   add ax,bx                 \n"
    "   push ax                   \n"
    "   shr ebx,28                \n"              /* CS = _start >> 4     */
    "   push bx                   \n"              /* IP = _start & 0x000F */
    "   retf                      \n"
) ; 		
	}	
#endif		
	
	return(0) ;
}	
