/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                               ll_s_thr.h                                */
/* ----------------------------------------------------------------------- */
/* Subconjunto de rutinas de interfaz de las llamadas al sistema           */
/* correspondiente a los threads, que son las primeras que se implementan  */
/* en SO1H.                                                                */
/* ----------------------------------------------------------------------- */

#ifndef LL_S_THR_H
#define LL_S_THR_H

#include <so1hpub.h\tipos.h>                                    /* dword_t */
#include <so1hpub.h\def_proc.h>                                   /* tid_t */

/* ----------------------------------------------------------------------- */
/* -                                                                     - */
/* -     Llamadas al sistema implementada mediante traps (int 0x60)      - */
/* -     ==========================================================      - */
/* ----------------------------------------------------------------------- */
/* AX = 0x0000 : err = thread_create(&tid, &attribs, &funcion, &arg)       */
/* AX = 0x0001 : tid = thread_join(tid, &res)                              */
/* AX = 0x0002 :       thread_exit(&res)                                   */
/* AX = 0x0003 :       thread_yield()                                      */
/* AX = 0x0004 : tid = thread_self()                                       */
/* ----------------------------------------------------------------------- */

/* Numero de vector de interrupcion utilizado por el sistema SO1.          */

#define nVIntSO1H    0x60

#define opcionNoStatus (word_t)0x0001     /* no se espera a su terminacion */

typedef struct
{
    word_t SP0 ;                          /* tamanio de la pila del thread */
    word_t opciones ;             /* bits con opciones como optionNoStatus */
} thread_attribs_t ;                 /* atributos de creacion de un thread */

int thread_create ( tid_t * tid,
                    thread_attribs_t * attribs,
                    void * ( * funcionInicial ),
                    void * arg ) ;

/* ----------------------------------------------------------------------- */
/* Mediante esta llamada el proceso solicita la creacion de un nuevo       */
/* thread con esos atributos (attribs) que ejecute la funcion indicada     */
/* tomando como parametro arg. Si attribs == NULL el sistema tomara como   */
/* atributos los atributos por defecto. Si el sistema consigue crear ese   */
/* nuevo thread la llamada thread_create devolvera como resultado un 0 y   */
/* en la direccion apuntada por tid devolvera el identificador del nuevo   */
/* thread (si tid != NULL). Si el sistema no puede crear el nuevo thread   */
/* la llamada devolvera como resultado un codigo de error indicando la     */
/* razon por la que no ha podido crearse el thread.                        */
/* ----------------------------------------------------------------------- */


tid_t thread_join ( tid_t tid, void * * res ) ;

/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */


void thread_exit ( void * res ) ;

/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */


int thread_yield ( void ) ;

/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */


tid_t thread_self ( void ) ;

/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */


#endif /* LL_S_THR_H */
