/* ----------------------------------------------------------------------- */
/*                                demo_0.c                                 */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

#include <so1hpub.h\ll_s_thr.h>                            /* thread_yield */

#include <so1hpub.h\pantalla.h>
#include <so1hpub.h\memvideo.h>              /* goToXYVideo, printCarVideo */
#include <so1hpub.h\printvid.h>                           /* printStrVideo */        
#include <so1hpub.h\biosdata.h>                             /* ptrBiosArea */

void * funcion ( void * arg )
{
    int i ; 
	dword_t j ;

//  i = *((int *)arg) ;
    i = (int)arg ;
    printStrVideo("\n\n soy el thread con tid = ") ;
    printLIntVideo(thread_self(), 1) ;
    printStrVideo(" arg = ") ;
    printLIntVideo(arg, 1) ;
//  for ( j = 0 ; j < 1000000 ; j ++ )
    for ( j = 0 ; j < 10000 ; j ++ )
    {
//  while (TRUE) {
//      printIntVideo(*((int *)arg), 2) ;
//      (*((char *)(0xB8000+2*78)))++ ;
//      *((char *)(0xB8000+2*78)) = *((char *)arg) ;
//      (*((char *)(0xB8000+2*(78-*((int *)arg)))))++ ;
        (*((char *)(0xB8000+2*(78-2*i))))++ ;
//      thread_yield() ;
        if ( j % 20 == 19)
            thread_yield() ;                                    /* llamada */
    }
    thread_exit((void *)i) ;                                    /* llamada */
//  return((void *)i) ;              /* llamada implicita (so1hpub\main.c) */	
}

void retardarTics ( dword_t tics ) 
{
#if (0)	
	word_t reg_AX ;
#endif
	dword_t tics_0 = ptrBiosArea->BIOS_timer ;
#if (0)	
	asm("pushf") ;                              /* permitir interrupciones */
//	asm("pop [bp-4]") ;
	asm("pop ax") ;
	asm("mov [bp-4],ax") ;
	asm("sti") ;
#endif
	while (ptrBiosArea->BIOS_timer <= (tics_0 + tics)) {
//		printStrVideo("\n ptrBiosArea->BIOS_timer = ") ;
//		printLDecVideo(ptrBiosArea->BIOS_timer, 10) ;
    }		
#if (0)	
	asm("mov ax,[bp-4]") ;                     /* restaurar interrupciones */
	asm("push ax") ;
	asm("popf") ;
#endif
}

//#define numThreads 10
#define numThreads 5

#define ptrPant ((pantalla_t *)0xB8000)

void demo_0 ( void )
{
	
	asm("sti") ;                          /* permitimos las interrupciones */
	
    printCarVideo('\f') ; 
	
    for ( int i = 20 ; i < 60 ; i++ )
    {
        pantallazo(ptrPant, 50, (char)254, atrNormal, 21, 20, 21, i) ;
		retardarTics(0) ;
	}
	    
	for ( int i = 0 ; i < numThreads ; i++ )
    {
        tid_t tid ;
//		thread_attribs_t attribs = { 0x4000, 0x0001 } ;
        thread_attribs_t attribs = { 0x4000, 0x0000 } ;

//      printStrVideo("\n thread_create(&tid, NULL, funcion, i) ") ;
//      thread_create(&tid, NULL, funcion, i) ;
        printStrVideo("\n thread_create(&tid, &attribs, funcion, i) ") ;
        thread_create(&tid, &attribs, funcion, i) ;             /* llamada */

        printStrVideo(" tid = ") ;
        printLIntVideo(tid, 1) ;
//      mostrarListaLibres() ;
    }

//  printCarVideo('\f') ; 

    for ( int i = 1 ; i < (numThreads+1) ; i++ )
    {
        tid_t tid0, tid ;
        void * ptrVoid ;
        void * * res ;
#if (0)
        tid0 = -1 ;                                    /* cualquier thread */
#elsif (0)
        tid0 = i ;
#else
        tid0 = numThreads-i+1 ;  /* espera la terminacion en orden inverso */
#endif

#if (0)
        res = NULL ;                          /* no se espera un resultado */
#else
        res = (void * *)&ptrVoid ;
#endif

        tid = thread_join(tid0, res) ;                          /* llamada */

        printStrVideo(
            "\n"
            " fin llamada thread_join: thread_self tid0 tid   res     ptrVoid  \n"
//        "                          =========== ==== === ========  ======== \n"
            "                          "
        ) ;
        printLIntVideo(thread_self(), 11) ;
        printLIntVideo(tid0, 5) ;
        printLIntVideo(tid, 4) ;
        printCarVideo(' ') ;
        printLHexVideo(res, 8) ;
        printStrVideo("  ") ;
        if (res != NULL)
            printLHexVideo(ptrVoid,8) ;
        else printStrVideo("        ") ;

    }	
	
	asm("cli") ;                           /* inhibimos las interrupciones */
	
    printStrVideo("\n Pulse una tecla para continuar ... ") ;

}

