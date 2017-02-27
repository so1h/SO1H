/* ----------------------------------------------------------------------- */
/*                                 ajustsp.h                               */
/* ----------------------------------------------------------------------- */
/*                       Ajuste del tamaño de la pila                      */
/* ----------------------------------------------------------------------- */

#ifndef AJUSTSP_H
#define AJUSTSP_H

#define SP0_SO1H  0x08000      /* puntero de pila inicial del sistema SO1H */

#if (0)

#define SP0_GP    0x067FE                    /* puntero de pila inicial GP */

#define SP0_SF    0x05FFE                    /* puntero de pila inicial SF */

#define SPInicial 0x057FE           /* puntero de pila del proceso inicial */

#endif 

//                             /* DATA = A5A BSS = 211C total: 4B48 < 57FF */

#endif /* AJUSTSP_H */



