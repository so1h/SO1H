/*

Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
   this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.

*/

/* ----------------------------------------------------------------------- */
/*                                 so1h_k.c                                */
/* ----------------------------------------------------------------------- */
/*                                  kernel                                 */
/* ----------------------------------------------------------------------- */

#include <so1hpub.h\tipos.h>
#include <so1hpub.h\def_proc.h>                              /* descSO1H_t */

#include <so1h.h\gm.h>      /* vale todo salvo inicGM y mostrarListaLibres */
#include <so1h.h\ints.h>                        /* vale todo salvo inicTVI */
#include <so1h.h\procs.h>                  /* vale todo salvo inicProcesos */
#include <so1h.h\recurs.h>                 /* vale todo salvo inicRecursos */
#include <so1h.h\blockpr.h>                                   /* vale todo */
#include <so1h.h\llamadas.h>                                   /* isr_SO1H */

extern void cargarDescSO1H ( descSO1H_t * descSO1H ) ;         /* MANEJ_03 */

int main ( void )     /* resultado: direccion de la funcion cargarDescSO1H */
{
//  return(0x12345678) ;
    return(&cargarDescSO1H) ;      /* funcion cargarDescSO1H en MANEJ_03.C */

	link_gm_k() ;               /* para obligar a que se enlace gm_k.o     */
	link_ints() ;               /* para obligar a que se enlace ints.o     */
	link_procs_k() ;            /* para obligar a que se enlace procs_k.o  */
	link_recurs_k() ;           /* para obligar a que se enlace recurs_k.o */
	link_llamadas() ;           /* para obligar a que se enlace llamadas.o */

}
