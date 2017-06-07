/* ----------------------------------------------------------------------- */
/*                                def_mem.h                                */
/* ----------------------------------------------------------------------- */
/*           Gestor de Memoria: Metodo de particiones variables            */
/* ----------------------------------------------------------------------- */

#ifndef DEF_MEM_H
#define DEF_MEM_H

#include <so1hpub.h\tipos.h>

#define tamParagrafo 16          /* un paragrafo son 16 bytes consecutivos */
//                           /* comenzando en una direccion multiplo de 16 */

typedef struct
{
    word_t tam ;                       /* tamanio del bloque en paragrafos */
    word_t sig ;                                 /* (seg) bloque siguiente */
    word_t ant ;                                 /* (seg) bloque anterior  */
    word_t aux ;
    unsigned char relleno[8] ;
} bloque_t ;

typedef bloque_t * ptrBloque_t ;

#endif /* DEF_MEM_H */

