/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                               ll_s_thr.c                                */
/* ----------------------------------------------------------------------- */
/* Subconjunto de rutinas de interfaz de las llamadas al sistema           */
/* correspondiente a los threads, que son las primeras que se implementan  */
/* en SO1H.                                                                */ 
/* ----------------------------------------------------------------------- */

#include "..\so1hpub.h\tipos.h"                                 /* dword_t */
#include "..\so1hpub.h\def_proc.h"                                /* tid_t */

/* ----------------------------------------------------------------------- */
/* -                                                                     - */
/* -     Llamadas al sistema implementada mediante traps (int 0x60)      - */
/* -     ==========================================================      - */
/* ----------------------------------------------------------------------- */

/* Numero de vector de interrupcion utilizado por el sistema SO1.          */

#define nVIntSO1H    0x60


/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

int thread_create ( tid_t * tid, 
                    word_t SP0, 
					void * ( * funcionInicial ), 
					void * arg ) 
{
asm
(
    "   mov ebx,[bp+20] \n" /* arg */
    "   mov ecx,[bp+16] \n" /* funcionInicial */
    "   mov dx, [bp+12] \n" /* SP0 */
    "   mov esi,[bp+ 8] \n" /* tid */
    "   mov ax,0x0000   \n"
    "   int 0x60        \n"
) ;
}

/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */


int thread_join ( tid_t tid, void * * res ) 
{
asm
(
    "   mov ebx,[bp+12] \n" /* res */
    "   mov ecx,[bp+ 8] \n" /* tid */
    "   mov ax,0x0001   \n"
    "   int 0x60        \n"	
) ;
}

/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */


void thread_exit ( void * res ) 
{
asm
(
    "   mov ebx,[bp+8] \n" /*res */
    "   mov ax,0x0002  \n"
    "   int 0x60       \n"	
) ;
}

/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */


int thread_yield ( void ) 
{
asm
(
    "   mov ax,0x0003 \n"
    "   int 0x60      \n"	
) ;
    return(0) ;
}


/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */


tid_t thread_self ( void ) 
{
asm
(
    "   mov ax,0x0004 \n"
    "   int 0x60      \n"	
) ;
}



