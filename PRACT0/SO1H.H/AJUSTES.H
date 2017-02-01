/* ----------------------------------------------------------------------- */
/*                                ajustes.h                                */
/* ----------------------------------------------------------------------- */
/*    Ajuste de los registros de segmento y salto al programa principal    */
/* ----------------------------------------------------------------------- */

#ifndef AJUSTES_H
#define AJUSTES_H

#include "..\so1hpub.h\tipos.h"
//#include <so1pub.h\def_proc.h>

//#define ptrMagicByteSO1 ((pointer_t)(MK_FP(CS_SO1, 0x0000)))

//#define ptrMagicByteUsr ((pointer_t)(MK_FP(CS_SO1, (word_t)startCabecera)))


void startBin ( void ) ;      /* punto de entrada so1.bin (boot) o so1.com */

//void startExe ( void ) ;                       /* punto de entrada so1.exe */

//void startCommon ( void ) ;

//void startCabecera ( void ) ;

//void tomarIP ( void ) ;

void finish ( void ) ;

void segDatos ( void ) ;

modoSO1_t modoSO1 ( void ) ;  /* modo en que se ejecuta SO1: bin, exe, ... */

//word_t desplCab ( void ) ;  /* desplazam. de la cabecera (cab en startBin) */

byte_t unidadBIOS ( void ) ;       /* numero BIOS de la unidad de arranque */

extern word_t CS_SO1H ;                      /* segmento de codigo de SO1H */

extern word_t DS_SO1H ;                       /* segmento de datos de SO1H */

extern word_t BSS_SO1H ;                           /* comienzo BSS de SO1H */

extern word_t IMRInicial ;     /* mascara de interrupcion inicial del 8259 */

                                    /* guardar el segmento de datos de SO1 */

void obtenerMapa ( void ) ;

/* las siguientes macros presuponen que cs apunta al principio del codigo  */
/* de so1h                                                                 */

#define guardarDS_SO1H_0()                                        /* macro */\
    asm                                                                      \
    (                                                                        \
        " extern _segDatos        \n"                                        \
        "   mov [cs:_segDatos],ds \n"                                        \
    ) ;                                                       /* fin macro */

#define establecerDS_SO1H_0()                                     /* macro */\
    asm                                                                      \
    (                                                                        \
        " extern _segDatos        \n"                                        \
        "   mov ds,[cs:_segDatos] \n"                                        \
    ) ;                                                       /* fin macro */

/* las siguientes macros presuponen el acceso a la variable global DS_SO1H */

#define guardarDS_SO1H_1()                                                   \
    *(word_t *)((dword_t)segDatos) = DS_SO1H ;

#define valorSegDatos()                                                      \
    *(word_t *)((dword_t)segDatos)

#endif /* AJUSTES_H */



