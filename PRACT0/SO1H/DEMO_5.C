/* ----------------------------------------------------------------------- */
/*                                demo_5.c                                 */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

#include <so1hpub.h\ll_s_thr.h>                            /* thread_yield */

#include <so1hpub.h\def_pant.h>                   /* maxFilas, maxColumnas */ 
#include <so1hpub.h\pantalla.h>
#include <so1hpub.h\memvideo.h>              /* goToXYVideo, printCarVideo */
#include <so1hpub.h\printvid.h>                           /* printStrVideo */        
#include <so1hpub.h\biosdata.h>                             /* ptrBiosArea */
#include <so1hpub.h\bios_0.h>                           /* leerCarListoBDA */
#include <so1hpub.h\carsctrl.h>                                     /* ESC */
#include <so1h.h\gm.h>                                     /* tamBloqueMax */
#include <string.h>                                              /* strlen */

#define numFilas 25
#define numColumnas 80

static int numThreads ;

static int f_1, c_1, f_2, c_2 ;

static int alto, ancho ;

static bool_t fin = FALSE ; 

static char renglon [ numColumnas ] ;

static char numOrden [ numColumnas ] ;

static void * funcion ( void * arg )
{
    int i, k, kant ; 
	int incremento ;
	int lentitud ;
	int pasos ;
	int f ;
	int c ;
	int fant ;
	char letra ;
	byte_t atributo ;

    pantalla_t * ptrPant = (pantalla_t *)0xB8000 ; 	
	
//  c = *((int *)arg) ;
    c = (int)arg ;

	pasos = 0 ;
	k = alto/2 ;
    kant = k ;
	incremento = 1 ;
//	lentitud = 1 ;                                              /* 1 .. 79 */
//	lentitud = numColumnas-1 ;                                  /* 1 .. 79 */
	lentitud = numThreads-1 ;                                   /* 1 .. 79 */                                                   /* columna */
	letra = renglon[c] ;
	atributo = 2 + (c % 5) ;

    while (!fin) 
	{
        if (pasos % (numOrden[c]+lentitud) == 0) 
		{
			f = f_1 + k ;
			fant = f_1 + kant ;
			ptrPant->t[fant][c].car = ' ' ; 
			ptrPant->t[fant][c].atr = 007 ; 
			ptrPant->t[f][c].car = letra ; 
			ptrPant->t[f][c].atr = atributo ;
			kant = k ;
			k = k + incremento ;
			if (k >= alto) 
			{ 
				incremento = -1 ;
				k = alto - 1 ;
			}
			if (k <= -1) 
			{	
		        incremento = 1 ;
				k = 0 ;
			}
		}
		pasos++ ;
        thread_yield() ;
    }
    thread_exit((void *)c) ;                                    /* llamada */
//  return((void *)c) ;              /* llamada implicita (so1hpub\main.c) */	
}

static void funcioncilla ( void * arg ) 
{
	int i = (int)arg ;
	while (!fin) {
	   (((dword_t *)0xB8000)[i])++ ;
	   thread_yield() ;	
	}
}

static void retardarTics ( dword_t tics ) 
{
	dword_t tics_0 = ptrBiosArea->BIOS_timer ;
	while (ptrBiosArea->BIOS_timer <= (tics_0 + tics)) ;
}

void demo_5 ( char * frase, int f1, int c1, int f2, int c2 ) 
{	
    
//	thread_attribs_t attribs = { 0x0400, 0x0000 } ;           /* no status */
//	thread_attribs_t attribs = { 0x0080, 0x0000 } ;           /* no status */
	thread_attribs_t attribs = { 0x0200, 0x0000 } ;           /* no status */
	tid_t tid ;
	int i, j, cont ;

	f_1 = f1 ;
	c_1 = c1 ;
	f_2 = f2 ;
	c_2 = c2 ;
	alto = f2 - f1 + 1 ;
	ancho = c2 - c1 + 1 ;
	
    pantalla_t * ptrPant = (pantalla_t *)0xB8000 ; 	
	
	asm("sti") ;                          /* permitimos las interrupciones */
	
    printCarVideo('\f') ;                          /* borramos la pantalla */
	
	if (strlen(frase) > 0) 
    	for ( i = 0 ; i < numColumnas ; i++ ) 
	        renglon[i] = frase[i % strlen(frase)] ;
	else
    	for ( i = 0 ; i < numColumnas ; i++ ) 
	        renglon[i] = 'o' ;
		
    for ( i = 20 ; i < 60 ; i++ )
    {
        pantallazo(ptrPant, 50, (char)254, atrNormal, 21, 20, 21, i) ;
		retardarTics(0) ;
		if (leerCarListoBDA() == ESC) 
			break ;
	}
	    
    printCarVideo('\f') ;                          /* borramos la pantalla */
	
	numThreads = 0 ;
	
	for ( int i = 0 ; i < numColumnas ; i++ )
    {
		if (renglon[i] != ' ') {
     		if (renglon[i] == '_') renglon[i] = ' ' ;
            thread_create(&tid, &attribs, funcion, i) ;         /* llamada */
			numOrden[i] = numThreads ;
			numThreads++ ;
		}
    }

	fin = FALSE ;
	
    while (leerCarListoBDA() != ESC) 
		thread_yield() ;	
    fin = TRUE ;	
	
    for ( i = 0 ; i < numThreads ; i++ )
        tid = thread_join(-1, NULL) ;                           /* llamada */
	
	pantallazo(ptrPant, numFilas, ' ', atrNormal, 0, 0, numFilas-1, numColumnas-1) ;
    printCarVideo('\f') ;                          /* borramos la pantalla */
	
    printStrVideo("\n Pulse una tecla para crear el numero maximo de threads ... ") ;
	
    while (leerCarListoBDA() == (char)0) ; 
	
    printStrVideo(
	    "\n\n thread_create(&tid, { 0x200, 0x0000 }, funcioncilla,     ) Ok "
	) ;

	cont = 0 ;
	while (thread_create(&tid, &attribs, funcioncilla, cont) >= 0) 
	{
		for ( j = 0 ; j < 9 ; j++ ) printCarVideo('\b') ;
		cont++ ;
		printDecVideo(cont, 4) ;
        printStrVideo(") Ok ") ;
    }
    printStrVideo("\n\n He podido crear ") ;
    printDecVideo(cont, 1) ;
    printStrVideo(" threads ") ;
	printStrVideo("\n") ;
	
#if (1)

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

#endif		
	
    printStrVideo("\n\n Pulse una tecla para permitir su ejecucion ") ;

	fin = FALSE ;

    while (leerCarListoBDA() == (char)0) ; 
	
	pantallazo(ptrPant, numFilas, ' ', atrNormal, 0, 0, numFilas-1, numColumnas-1) ;
	
    while (leerCarListoBDA() != ESC) 
		thread_yield() ;	

	pantallazo(ptrPant, numFilas, ' ', atrNormal, 0, 0, numFilas-1, numColumnas-1) ;
	
	printCarVideo('\f') ;

    printStrVideo("\n Pulse una tecla para destruirlos ") ;
	
    while (leerCarListoBDA() == (char)0) ; 
	
	printStrVideo(
	    "\n\n Destruyendo tid = thread_join(-1, NULL)     "
	) ;

	fin = TRUE ;

    while (cont > 0) 
    {		
      tid = thread_join(-1, NULL) ;                             /* llamada */
	  printStrVideo("\b\b\b\b") ;
	  printDecVideo(tid, 4) ;
	  cont-- ;
	}
		
    printStrVideo("\n\n Todos los threads han sido destruidos ") ;
	
    printStrVideo("\n\n Pulse una tecla para continuar \n") ;
	
//  while (leerCarListoBDA() == (char)0) ; 

	asm("cli") ;                           /* inhibimos las interrupciones */
	
}

