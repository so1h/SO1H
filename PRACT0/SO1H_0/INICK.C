/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                  inick.c                                */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

#include <so1hpub.h\def_proc.h> /* descSO1H_t, camposDescSO1H, dirDescSO1H */
#include <so1h_0.h\so1h_0.h>          /* dirInicial, reubicacion_t, numEDF */
#include <so1h_0.h\procs_x.h>            /* camposDescSO1H, inicProcesos_x */
#include <string.h>                                              /* strlen */
#include <ctype.h>                                              /* toupper */

void inicKernel ( void )
{

//  llama a la funcion _start de so1h_k para hacer la reubicacion
//  (solo puede llamarse una vez a _start para reubicar)

    dword_t dirStartKernel ;

    dirStartKernel = 
        dirInicial + 
		reubicacion[0].entradaDF.start ;
		
    printStrVideo("\n\n dirStartKernel = ") ;
    printLHexVideo(dirStartKernel, 8) ;

    typedef int ( * main_t ) ( void ) ;

    typedef void ( * cargarDescSO1H_t ) ( descSO1H_t * descSO1H ) ;

    dword_t dirCargarDescSO1H ;

    dirCargarDescSO1H =
        ((main_t)dirStartKernel)() ;        /* llamamos a _start de so1h_k */
//                                                  /* _start llama a main */
//              /* main devuelve la direccion de la funcion cargarDescSO1H */

    printStrVideo("\n\n dirCargarDescSO1H = ") ;
    printLHexVideo(dirCargarDescSO1H, 8) ;

//  /* dirDescSO1H es realmente una macro declarada en def_proc.h          */
//  /* #define dirDescSO1H ((descSO1H_t *)&ptrIndProcesoActual)            */
//  /* ptrIndProcesoActual esta declarado en procs_x.c con la macro        */
//  /* camposDescSO1H(volatile)                                            */

    ((cargarDescSO1H_t)dirCargarDescSO1H)(dirDescSO1H) ;       /* descSO1H */

    printStrVideo("\n dirDescSO1H = ") ;
    printLHexVideo(dirDescSO1H, 8) ;

    printStrVideo("\n ptrIndProcesoActual = ") ;
    printLHexVideo(ptrIndProcesoActual, 8) ;
	
    printStrVideo("\n *ptrIndProcesoActual = ") ;
    printIntVideo(*ptrIndProcesoActual, 1) ;
	

    while (TRUE) ;
    asm("nop") ;

    inicProcesos_x() ;

//  inicializar el nucleo ==> PROCESOS.C
//  reservar espacio y crear el proceso so1_k y demas procesos
//  reservar espacio para el disco ram
//  poner en preparados a los drivers de so1himg y al proceso inicial
//  finalmente: activarThread(sigThread())

    return ;

}

