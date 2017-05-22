/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                 main.h                                  */
/* ----------------------------------------------------------------------- */
/*                       Un primer sistema operativo                       */
/* ----------------------------------------------------------------------- */

#include <so1hpub.h\main.h>
#include <so1hpub.h\ll_s_thr.h>                             /* thread_exit */
#include <so1hpub.h\printvid.h>

void finProceso ( void )    /* fin por defecto de un proceso (thread main) */
{
    dword_t reg_EAX ;
    asm("mov [bp-4],eax") ; /* reg_AX */
    printStrVideo("\n\n fin del proceso con pid = ") ;
//  printDecVideo(getpid(), 1) ;
//	printStrVideo(" codigo de terminacion (EAX) = ") ;
//	printDecVideo(reg_EAX, 1) ;
//  exit((int)reg_AX) ;
}                                                            /* ver atexit */

void finThread ( void )             /* fin por defecto de un thread creado */
{
    dword_t reg_EAX ;
    asm("mov [bp-4],eax") ; /* reg_AX */
//	printStrVideo("\n\n fin del thread con tid = ") ;
//  printDecVideo(thread_self(), 1) ;
//	printStrVideo(" codigo de terminacion (EAX) = ") ;
//	printDecVideo(reg_EAX, 1) ;
    thread_exit((void *)reg_EAX) ;                              /* llamada */
}

