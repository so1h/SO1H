/***************************************************************************/
/*                                ajustes.c                                */
/***************************************************************************/
/*                                                                         */
/***************************************************************************/

#include "..\so1hpub.h\tipos.h"

void _start ( void ) ;        /* funcion a la que hay que ceder el control */
//                       /* ya que se encarga de la reubicación (estática) */
#ifndef _DOS
#include "..\so1h.h\main.h"                                        /* main */
void __start__ ( void ) ;       /* al final de _start se llama a __start__ */
#endif                            /* al final de __start__ se llama a main */

/* Se supone el fichero cargado por el sector de arranque.                 */
/* Los dos primeros bytes de la cabecera EXE ("MZ") se han parcheado con   */
/* los bytes EB 1E (jmp _startBin).                                        */


void unidadBIOS ( void ) ;

asm
(
    " extern __stop__bss   \n"
    " extern __start       \n" /* funcion a donde hay que ceder el control */
) ;

void startBin ( void ) ;                    /* implementada a continuacion */
asm
(
    " section .text        \n"
    "   global _startBin   \n"
    " _startBin:           \n"
    "                      \n"
    "   cli                \n"             /* inhibimos las interrupciones */
    "                      \n"
    "   mov ax,cs          \n"                     /* establecemos la pila */
    "   mov bx,__stop__bss \n"         /* SS = (__stop__bss + 0x000F) >> 4 */
    "   add bx,0x000F      \n"         /* SP = 0x8000                      */
    "   shr bx,4           \n"
    "   add ax,bx          \n"
    "   mov ss,ax          \n"
    "   mov sp,0x8000      \n"
    "                      \n"
    "   mov [cs:_unidadBIOS+8],dl \n"                        /* uBIOS = dl */
    "                      \n"
    "   mov ax,cs          \n"              /* cedemos el control a _start */
    "   mov cx,__start     \n"                     /* CS = _start >> 4     */
    "   mov bx,cx          \n"                     /* IP = _start | 0x000F */
    "   shr bx,4           \n"
    "   add ax,bx          \n"         /* _start es la funcion que reubica */
    "   push ax            \n"                             /* ver c0dh.asm */
    "   and bx,0x000F      \n"
    "   push 0x0000        \n"
    "   retf               \n"
) ;

#ifndef _DOS
void __start__ ( void )                           /* se llama desde _start */
{
    main() ;
}
#endif

word_t CS_SO1H ;                             /* segmento de codigo de SO1H */

word_t DS_SO1H ;                              /* segmento de datos de SO1H */

word_t BSS_SO1H ;                                   /* comienzo BSS de SO1 */

word_t IMRInicial ;            /* mascara de interrupcion inicial del 8259 */

void finish ( void )                            /* main debe retornar aqui */
{
    /* exit(0) ; */           /* esta función no se usa, pero por simetria */
}                                                            /* ver atexit */

asm
(
    " section .text       \n"
    "   global _segDatos  \n" /* aqui se guardara el valor del segmento de */
    " _segDatos: db 'DS'  \n" /* datos (DS) de SO1H (dentro del codigo)    */
) ;

uint8_t unidadBIOS ( void )        /* numero BIOS de la unidad de arranque */
{
    asm
    (
        "   jmp short calculo3 \n"
        " uBIOS: db 0xFF       \n"                  /* valor de unidadBIOS */
        " calculo3:            \n"
        "   mov al,[cs:12]     \n"                           /* uBIOS = 12 */ 
		                               /*respecto a (unidadBIOS >> 4) << 4 */
//      "   mov al,[cs:$ - (_unidadBIOS | 0xFFFF0)] \n"        /* da error */
//      "   mov al,[cs:$ - ((_unidadBIOS >> 4) << 4)] \n"      /* da error */
//      "   mov al,[cs:_unidadBIOS] \n"
//      "   mov al,[cs:$]      \n"
//      "   mov al,[cs:$$]     \n"
    ) ;                                                   /* return(uBIOS) */
}

/* Cuando se llama a una función como unidadBIOS el CS:IP se normaliza de  */
/* manera que IP valga 0x0000 al principio de la función. Es decir         */
/* CS=((CS0 << 4)+IP0) >> 4 e IP = 0x0000                                  */
