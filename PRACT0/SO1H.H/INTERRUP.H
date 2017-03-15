/* ----------------------------------------------------------------------- */
/*                               interrup.h                                */
/* ----------------------------------------------------------------------- */
/*                  rutinas de tratamiento de interrupcion                 */
/* ----------------------------------------------------------------------- */

#ifndef INTERRUP_H
#define INTERRUP_H

#include "..\so1hpub.h\tipos.h"    
#include "..\so1hpub.h\const.h"

extern rti_t VIOrg [ nVIntMax ] ;   /* vectores de interrupcion originales */

extern rindx_t recVInt [ nVIntMax ] ;      /* recurso que posee ese vector */

void rti_00 ( void ) ;

void inicTVI ( void ) ;

void redirigirInt ( byte_t nVInt, isr_t isr ) ;

void redirigirIntHardware ( byte_t irq, isr_t isr ) ;

void restablecerInt ( int nVInt ) ;

#endif /* INTERRUP_H */
