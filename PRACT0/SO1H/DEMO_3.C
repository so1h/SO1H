/* ----------------------------------------------------------------------- */
/*                                demo_3.c                                 */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

#include <so1hpub.h\ll_s_thr.h>                            /* thread_yield */

#include <so1hpub.h\pantalla.h>
#include <so1hpub.h\memvideo.h>              /* goToXYVideo, printCarVideo */
#include <so1hpub.h\printvid.h>                           /* printStrVideo */        
#include <so1hpub.h\biosdata.h>                             /* ptrBiosArea */
#include <so1hpub.h\bios_0.h>                           /* leerCarListoBDA */
#include <so1hpub.h\carsctrl.h>                                     /* ESC */

static bool_t fin = FALSE ; 

static void * funcion ( void * arg )
{
    int i, j, k, kant ; 
	int incremento ;
	int lentitud ;
	int f ;
	int c ;
	int cant ;
	char letra ;
	byte_t atributo ;

    pantalla_t * ptrPant = (pantalla_t *)0xB8000 ; 	
	
//  i = *((int *)arg) ;
    i = (int)arg ;

	k = 0 ;
    kant = 0 ;
	incremento = 1 ;
	lentitud = 2 ;
	f = i % 25 ;                                                   /* fila */
	letra = 'A' + i ;
	atributo = (i % 5) + 2 ;

	j = 0 ;
    while (!fin) 
	{
        if (j % (i+lentitud) == 0) 
		{
			c = k % 80 ;
			cant = kant % 80 ;
			ptrPant->t[f][cant].car = ' ' ; 
			ptrPant->t[f][cant].atr = 007 ; 
			ptrPant->t[f][c].car = letra ; 
			ptrPant->t[f][c].atr = atributo ;
			kant = k ;
			k = k + incremento ;
			if (k == 80) 
			{ 
				incremento = -1 ;
				k = 79 ;
			}
			if (k == -1) 
			{	
		        incremento = 1 ;
				k = 0 ;
			}
		}
        thread_yield() ;
		j++ ;
    }
    thread_exit((void *)i) ;                                    /* llamada */
//  return((void *)i) ;              /* llamada implicita (so1hpub\main.c) */	
}

void retardarTics ( dword_t tics ) 
{
	dword_t tics_0 = ptrBiosArea->BIOS_timer ;
	while (ptrBiosArea->BIOS_timer <= (tics_0 + tics)) {
    }		
}

#define numThreads 25

void demo_3 ( void )
{
	
	asm("sti") ;                          /* permitimos las interrupciones */
	
    printCarVideo('\f') ;                          /* borramos la pantalla */
	
    for ( int i = 20 ; i < 60 ; i++ )
    {
        pantalla_t * ptrPant = (pantalla_t *)0xB8000 ; 	
        pantallazo(ptrPant, 50, (char)254, atrNormal, 21, 20, 21, i) ;
		retardarTics(0) ;
	}
	    
    printCarVideo('\f') ;                          /* borramos la pantalla */
	
	fin = FALSE ;
	
	for ( int i = 0 ; i < numThreads ; i++ )
    {
        tid_t tid ;
//		thread_attribs_t attribs = { 0x4000, 0x0001 } ;
        thread_attribs_t attribs = { 0x4000, 0x0000 } ;

//      printStrVideo("\n thread_create(&tid, NULL, funcion, i) ") ;
//      thread_create(&tid, NULL, funcion, i) ;
//      printStrVideo("\n thread_create(&tid, &attribs, funcion, i) ") ;
        thread_create(&tid, &attribs, funcion, i) ;             /* llamada */
    }

    while (leerCarListoBDA() != ESC) 
		thread_yield() ;
 
    fin = TRUE ;	
	
    for ( int i = 1 ; i < (numThreads+1) ; i++ )
    {
        tid_t tid0, tid ;
        void * ptrVoid ;
        void * * res ;
        tid0 = -1 ;                                    /* cualquier thread */
        res = NULL ;                          /* no se espera un resultado */
        tid = thread_join(tid0, res) ;                          /* llamada */
    }	
	
	asm("cli") ;                           /* inhibimos las interrupciones */
	
    printStrVideo("\n Pulse una tecla para continuar ... ") ;

}

