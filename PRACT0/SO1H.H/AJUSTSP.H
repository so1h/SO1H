/* ----------------------------------------------------------------------- */
/*                                 ajustsp.h                               */
/* ----------------------------------------------------------------------- */
/*                       Ajuste del tamaño de la pila                      */
/* ----------------------------------------------------------------------- */

#ifndef AJUSTSP_H
#define AJUSTSP_H

#define SP0_SO1H  0x8000       /* puntero de pila inicial del sistema SO1H */

#define SPInicial 0x6000               /* puntero de pila del proceso SO1H */

asm("%define SPInicial 0x6000") ;      /* puntero de pila del proceso SO1H */

#if (0)

#define SP0_GP    0x067FE                    /* puntero de pila inicial GP */

#define SP0_SF    0x05FFE                    /* puntero de pila inicial SF */

#endif 

#endif /* AJUSTSP_H */



