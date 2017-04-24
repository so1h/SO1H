/* ----------------------------------------------------------------------- */
/*                                 ints.h                                  */
/* ----------------------------------------------------------------------- */
/*                  rutinas de tratamiento de interrupcion                 */
/* ----------------------------------------------------------------------- */

#ifndef INTS_H
#define INTS_H

#include "..\so1hpub.h\tipos.h"    
#include "..\so1hpub.h\const.h"

extern rti_t VIOrg [ nVIntMax ] ;   /* vectores de interrupcion originales */

extern rindx_t recVInt [ nVIntMax ] ;      /* recurso que posee ese vector */

void redirigirInt ( byte_t nVInt, isr_t isr ) ;

void redirigirIntHardware ( byte_t irq, isr_t isr ) ;

void restablecerInt ( int nVInt ) ;

void inicTVI ( void ) ;

void link_ints ( void ) ;

#endif /* INTS_H */
