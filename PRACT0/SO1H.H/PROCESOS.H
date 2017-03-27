/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                               procesos.h                                */
/* ----------------------------------------------------------------------- */
/*                      Gestion de procesos y threads                      */
/* ----------------------------------------------------------------------- */

#ifndef PROCESOS_H
#define PROCESOS_H

#include "..\so1hpub.h\def_proc.h"

typedef struct
{
    camposPubProceso        /* campos publicos de un descriptor de proceso */

    /* añadir a partir de aqui nuevos campos */

} descProcesoExt_t ;                    /* descriptor de proceso extendido */

typedef struct
{
    camposPubThread          /* campos publicos de un descriptor de thread */

    /* añadir a partir de aqui nuevos campos */

} descThreadExt_t ;                      /* descriptor de thread extendido */

extern descProcesoExt_t descProceso [ maxProcesos ] ; /* tabla de procesos */

extern descThreadExt_t descThread [ maxThreads ] ;     /* tabla de threads */

extern descFichero_t descFichero [ dfsMax ] ;         /* tabla de ficheros */
//                                                 /* abiertos del sistema */
extern descRecurso_t descRecurso [ maxRecursos ] ;

extern c2c_t c2cPFR [ numColasPFR ] ;                    /* indices cPFR_t */

extern e2PFR_t e2PFR ;

extern ccb_t ccbAlEpilogo ;    /* cola de callBacks al epilogo de las int. */

extern trama_t * tramaThread ;

extern trama_t * tramaTarea ;

/* Pueden ocurrir interrupciones mientras se atiende una llamada al        */
/* sistema. Por eso hay que distinguir entre la pila del proceso que hace  */
/* la llamada y la pila del proceso/sistema interrumpido. Esto ocurre      */
/* por ejemplo cuando durante la llamada al sistema se leen sectores del   */
/* disco con la int 13 del bios. Dicha int 13 permite las interrupciones,  */
/* necesitando la interrupcion de reloj para medir los timeouts. Cuando    */
/* tiene lugar la interrupcion de reloj hay que recordar tanto la pila del */
/* proceso que hizo la llamada al sistema (SS_Proceso) como la del sistema */
/* (SS_ProcInt).                                                           */

extern int indThreadActual ;             /* indice del thread en ejecucion */

extern int indProcesoActual ;  /* ind. del proceso del thread en ejecucion */

extern int indThreadDeSuperficie ;

extern dword_t contRodajas ;                        /* contador de rodajas */

extern int contTicsRodaja ;              /* contador de tics de una rodaja */

extern word_t contadorTimer00 ; /* v. contadorTimer0() al pasar a ej. p.a. */

extern int contOcioso ;                      /* contador para reloj ocioso */

extern c2c_t bloqueadosRaton ;

extern dobleEnlace_t e2BloqueadosRaton [ maxProcesos + 1 ] ;

pid_t nuevoPid ( void ) ;

tid_t nuevoTid ( void ) ;

tindx_t indice ( tid_t tid ) ;

tindx_t sigThread ( void ) ;                    /* planificador de threads */

int activarThread ( tindx_t tindx ) ;

void registrarEnPOrdenados ( pindx_t pindx ) ;

/* crearThread crea un nuevo thread en el proceso pindx                    */

tindx_t crearThread ( funcion_t funcion,             /* funcion a ejecutar */
                      word_t    SP0,           /* SP0 para el nuevo thread */
                      void *    arg,               /* argumento de partida */
                      pindx_t   pindx ) ;            /* proceso contenedor */

pindx_t crearProceso ( word_t       segmento,
                       word_t       tam,
                       dword_t      tamFich,
                       const char * programa,
                       const char   * comando,
                       pindx_t      pindx ) ;

#define crearProcesoMacro(segmento, tam, tamFich, programa, comando, pindx)  \
  crearProceso(segmento, tam, tamFich, programa, comando, pindx)

void inicProcesos ( void ) ;

void resetPids ( void ) ;

void resetTids ( void ) ;

int terminarThreadIndx ( tindx_t tindx ) ;         /* termina thread pindx */

int eliminarThreadIndx ( tindx_t tindx ) ;         /* elimina thread pindx */

int terminarProcIndx ( pindx_t pindx ) ;          /* termina proceso pindx */

int eliminarProcIndx ( pindx_t pindx ) ;          /* elimina proceso pindx */

int matarThreadIndx ( tindx_t tindx ) ;               /* mata thread tindx */

int matarProcIndx ( pindx_t pindx ) ;                /* mata proceso pindx */

#endif /* PROCESOS_H */







