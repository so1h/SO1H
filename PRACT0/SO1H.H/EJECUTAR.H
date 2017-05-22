/* ----------------------------------------------------------------------- */
/*                               ejecutar.h                                */
/* ----------------------------------------------------------------------- */
/*            busqueda, carga y ejecucion de comandos externos             */
/* ----------------------------------------------------------------------- */

#ifndef EJECUTAR_H
#define EJECUTAR_H

#include <so1hpub.h\tipos.h>                             /* pid_t, pindx_t */

pid_t kk_fork ( void ) ;

pindx_t preEjecutar ( const char *  nombre,
                      const char *  comando,
                      pindx_t pindx ) ;

#define preEjecutarMacro(nombre, comando, pindx)                              \
    preEjecutar((char *)nombre, (char *)comando, pindx) ;

#endif /* EJECUTAR_H */
