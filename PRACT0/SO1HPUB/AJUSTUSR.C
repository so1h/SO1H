/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                ajustusr.c                               */
/* ----------------------------------------------------------------------- */
/*       Ajuste inicial del modelo de programacion para los procesos       */
/* ----------------------------------------------------------------------- */

/* Los ficheros ejecutables correspondientes a los procesos son ficheros   */
/* EXE estandar de msdos, aunque renombrados con la extension BIN.         */
/* El punto de entrada de estos ficheros es una funcion _start que es una  */
/* función contenida en el fichero c0dh.asm de Smaller C. c0dh.asm se      */
/* encarga de la reubicación.                                              */

/* La función _start tras reubicar las variables globales cede el control  */
/* a una función llamada __start__. Dependiendo del modelo de programacion */
/* seleccionado en el fichero X:\SO1H\PRACT0\MKFILE0 mediante la macro     */
/* MODEL (huge, dosh o dosu) la función __start__ se proporciona en este   */
/* mismo fichero (en el caso de huge) o se toma de la biblioteca lcdh.a    */
/* (en el caso de dosh o dosu).                                            */
/*                                                                         */
/* En todos los casos, al final __start__ cede el control a main.          */

#include <so1hpub.h\main.h>

#ifndef _DOS

void __start__ ( void )                           /* se llama desde _start */
{
    main() ;
}

#endif

#if (0)

#include <so1pub.h\scanner.h>                                /* tamComando */
#include <so1pub.h\ll_s_so1.h>                          /* terminarProceso */
#include <so1pub.h\ajustusr.h>

#define SPInicial 0x7FFE      /* Valor inicial puntero de pila del proceso */
                                                     /* podria redefinirse */
#define maxArgs 20

#pragma option -w-use     /* warning: 'cmdLine' is declared but never used */

static char cmdLine [ tamComando ] = "" ;     /* no cambiar (crearProceso) */

char * argv [ maxArgs ] = { "" } ;            /* no cambiar (crearProceso) */

/* primerDato, cmdLine y argv deben estar inicializados (DATA) (no BSS)    */

/* main: funcion externa a este modulo a la que se le cede el control      */

/* void main ( void ) ; */
/* void main ( int argc, char * argv [ ] ) ; */

void main ( ) ;                                                 /* forward */

static void finish ( void ) ;                   /* main debe retornar aqui */

void startBin ( void ) {    /* Inicializacion de los registros de segmento */
  asm("call _finish") ;
}                                                                   /* ret */

void finish ( void ) {                          /* main debe retornar aqui */
  exit(0) ;                        /* no cambiar (crearProceso) despl 0022 */
}

/* En cuanto a la llamada a main se hace en ensamblador para evitar que el */
/* compilador de error si ponemos main() para llamar a main(argc, argv)    */
/* sin indicar los dos argumentos que tiene declarados la función main.    */
/* El truco es que dichos argumentos argc y (char * *)&argv los va a       */
/* colocar el sistema operativo en el momento de la creación del proceso   */
/* es decir en la función preEjecutar del fichero EJECUTAR.C.              */

#endif
