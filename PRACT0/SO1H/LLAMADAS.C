/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                               llamadas.c                                */
/* ----------------------------------------------------------------------- */
/*                  manejadores de las llamadas al sistema                 */
/* ----------------------------------------------------------------------- */

//#include <so1hpub.h\strings.h>
#include <so1hpub.h\tipos.h>                             /* byte_t, word_t */
#include <so1hpub.h\pic.h>
#include <so1h.h\ajustes.h>
#include <so1h.h\procs.h>
#include <so1h.h\blockpr.h>                         /* nivelActivacionSO1H */
#include <so1hpub.h\printvid.h  >                         /* printStrVideo */
//#include <so1h.h\bios.h>                                 /* printStrBIOS */
//#include <so1h.h\plot.h>
#include <so1h.h\llamadas.h>

#include <so1h.h\matrix.h>                                /* NUM_MATRICULA */

asm                                                      /* implementacion */
(
    " section .text           \n"
    "   global _link_llamadas \n"
    " _link_llamadas:         \n"
) ;

/* ----------------------------------------------------------------------- */
/*        manejadores de las diferentes llamadas al sistema de SO1         */
/* ----------------------------------------------------------------------- */

extern void so1_manejador_00 ( void ) ; /* thread_create, thread_join,     */
/* thread_exit, thread_yield,      */
/* thread_self                     */

extern void so1_manejador_01 ( void ) ;        /* 0: createProcess 1: fork */
//                                           /* 2: exec 3: waitpid 4: exit */
//                                     /* 5: getpid 6: getpindx 7: getppid */
//                      /* 8: getuid 9: setuid a: getgid b: setgid c: kill */

extern void so1_manejador_02 ( void ) ;                /* 0: open 1: close */
//                                      /* 2: leer 3: leerListo 4: leerRaw */
//                                   /* 5: leerRawListo 6: escribir 7: eof */

extern void so1_manejador_03 ( void ) ;                 /* 0: obtenInfoSO1 */
//                                      /* 1: crearRecurso 2: crearFichero */
//                         /* 3: esperarDesinstalacion, 4: destruirRecurso */
//                          /* 5: encolarCcbRecurso, 6: eliminarCcbRecurso */

extern void so1_manejador_0b ( void ) ;

#if (0)

extern void so1_manejador_03 ( void ) ;                      /* 0: retardo */
//                                       /* 1: obtenInfoPS 2: obtenInfoMEM */
//                                     /* 3: obtenInfoFAB 4: obtenInfoINFO */
//                                  /* 5: getdisk 6: findFirst 7: findNext */

#endif

void so1_manejador_Nulo ( void )
{
}

#define m(x) /* nada */

manejador_t manejador [ ] =                        /* tabla de manejadores */
{
    m(0) so1_manejador_00,                  /* thread_create, .. , thread_self */
    m(1) so1_manejador_01,
    m(2) so1_manejador_02,
    m(3) so1_manejador_03,
    m(4) so1_manejador_Nulo,
    m(5) so1_manejador_Nulo,
    m(6) so1_manejador_Nulo,
    m(7) so1_manejador_Nulo,
    m(8) so1_manejador_Nulo,
    m(9) so1_manejador_Nulo,
    m(a) so1_manejador_Nulo,
    m(b) so1_manejador_0b,                                       /* para pruebas */
    m(c) so1_manejador_Nulo,
    m(d) so1_manejador_Nulo,
    m(e) so1_manejador_Nulo,
    m(f) so1_manejador_Nulo
} ;

//#undef m(x)
#undef m

#define maxLlamadas sizeof(manejador)/sizeof(manejador_t)

void isr_SO1H ( void )                        /* Punto de entrada del S.O. */
{

#ifdef NUM_MATRICULA
    macroEmboscada() ;
#endif

    if (nivelActivacionSO1H > 1)
    {
        printStrVideo("\n llamada al sistema desde el nivel ") ;
        printDecVideo(nivelActivacionSO1H-1, 1) ;
        printStrVideo(" (0: usuario, 1: tarea) pindx = ") ;
        printIntVideo(indProcesoActual, 1) ;
        printStrVideo(" tid = ") ;
        printIntVideo(indThreadActual, 1) ;
        printStrVideo(" AX = ") ;
        printHexVideo(tramaThread->AX, 4) ;
        /* while (TRUE) ; */
        asm("cli") ;
        asm("hlt") ;                                     /* paramos la CPU */
    }

//       /* los parametros de entrada de la llamada al sistema estan en la */
//                                                     /* trama de la pila */

    tramaThread = (trama_t *)MK_P(SS_Thread, SP_Thread) ;

    static byte_t codOp ;

    codOp = tramaThread->AH ;                                        /* ah */

    if (codOp < maxLlamadas) manejador[codOp]() ;

    /* los parametros de salida de la llamada al sistema estan en la trama */

}

