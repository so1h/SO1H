/* ----------------------------------------------------------------------- */
/*                                matrix.h                                 */
/* ----------------------------------------------------------------------- */
/*                     numero de matricula del alumno                      */
/* ----------------------------------------------------------------------- */

#ifndef MATRIX_H
#define MATRIX_H

//#define NUM_MATRICULA 0x0123
asm("%define NUM_MATRICULA 0x0123") ;

#define PARAR_EL_SISTEMA FALSE                             /* FALSE o TRUE */
//#define PARAR_EL_SISTEMA TRUE                            /* FALSE o TRUE */

#if (PARAR_EL_SISTEMA)
#define ACCION while (TRUE) ;
#else
#define ACCION asm("nop \n nop") ;
#endif

#define macroEmboscada()                        \
{                                               \
    static word_t cont_LL_S_SO1 = 1 ;           \
	word_t pindx ;                              \
    if (cont_LL_S_SO1++ >= (NUM_MATRICULA-1)) { \
        ACCION ;                                \
		pindx = indProcesoActual ;              \
        asm("mov ax,[bp-4]") ;       /* pindx */\
    }                                           \
}

#endif /* MATRIX_H */

