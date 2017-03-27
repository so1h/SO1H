/* ----------------------------------------------------------------------- */
/*                                 main.h                                  */
/* ----------------------------------------------------------------------- */
/*                       Un primer sistema operativo                       */
/* ----------------------------------------------------------------------- */

#ifndef MAIN_H
#define MAIN_H

void _start ( void ) ;        /* funcion a la que hay que ceder el control */
//                                 /* inicialmente ya que se encarga de la */ 
//                                               /* reubicación (estática) */

void __start__ ( void ) ;       /* al final de _start se llama a __start__ */
//                                /* al final de __start__ se llama a main */

void main ( void ) ;

void finProceso ( void ) ;  /* fin por defecto de un proceso (thread main) */

void finThread ( void ) ;                  /* fin por defecto de un thread */

#endif /* MAIN_H */
