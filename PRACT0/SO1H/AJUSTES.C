/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/***************************************************************************/
/*                                ajustes.c                                */
/***************************************************************************/
/*                                                                         */
/***************************************************************************/

/* so1h puede ejecutarse de dos maneras:                                   */
/*                                                                         */
/* 1) como so1h.bin siendo cargado en memoria por el sector de arranque    */
/*                                                                         */
/* 2) como so1h.exe siendo cargado desde MSDOS, NTVDM, DOSBox, ...         */
/*                                                                         */
/* so1h.exe y so1h.bin son iguales salvo que en so1h.bin los dos primeros  */
/* bytes de la cabecera EXE ("MZ") se han parcheado con los bytes EB 1E    */
/* (jmp _startBin) para que tome el control la función startBin.           */
/*                                                                         */
/* En el caso de so1h.exe el cargador cede el control directamente a la    */
/* función _start que es una función contenida en el fichero c0dh.asm de   */
/* Smaller C. c0dh.asm se encarga de la reubicación.                       */
/*                                                                         */
/* Para unificar el comportamiento de so1h.exe y so1h.bin, la funcion      */
/* startBin cede también el control a _start.                              */
/*                                                                         */
/* La función _start tras reubicar las variables globales cede el control  */
/* a una función llamada __start__. Dependiendo del modelo de programacion */
/* seleccionado en el fichero X:\SO1H\PRACT0\MKFILE0 mediante la macro     */
/* MODEL (huge, dosh o dosu) la función __start__ se proporciona en este   */
/* mismo fichero (en el caso de huge) o se toma de la biblioteca lcdh.a    */
/* (en el caso de dosh o dosu).                                            */
/*                                                                         */
/* En todos los casos, al final __start__ cede el control a main.          */

#include "..\so1hpub.h\tipos.h"
#include "..\so1h.h\ajustsp.h"                                 /* SP0_SO1H */

void _start ( void ) ;        /* funcion a la que hay que ceder el control */
//                       /* ya que se encarga de la reubicación (estática) */

#ifndef _DOS

#include "..\so1h.h\main.h"                                        /* main */

void __start__ ( void ) ;       /* al final de _start se llama a __start__ */
//                                /* al final de __start__ se llama a main */
#endif

void unidadBIOS ( void ) ;    /* guarda el número de la unidad de arranque */

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
    "   mov sp,0x8000      \n" /* SP0_SO1H (AJUSTSP.H) */
    "                      \n"
    "   mov [cs:_unidadBIOS+9],dl \n"                        /* uBIOS = dl */
    "                      \n"
    "   mov al,0x00        \n"           /* (modoSO1_t)0x00 == modoSO1_Bin */
    "   mov [cs:_modoSO1+9],al \n"                /* modoSO1 = modoSO1_Bin */
    "                      \n"
    "   mov ax,cs          \n"              /* cedemos el control a _start */
    "   mov ebx,__start    \n"         /* _start es la funcion que reubica */
    "   ror ebx,4          \n"                             /* ver c0dh.asm */
    "   add ax,bx          \n"
    "   push ax            \n"
    "   shr ebx,28         \n"                     /* CS = _start >> 4     */
    "   push bx            \n"                     /* IP = _start & 0x000F */
    "   retf               \n"
) ;

#ifndef _DOS
void __start__ ( void )                           /* se llama desde _start */
{
    main() ;
}
#endif

#if (0)
void startCabecera ( void ) {
    startUserCode ;                    /* establece nueva pila */
asm
(
    "   mov bx,OFFSET main "                              /* jmp near main */
    "   push bx "                                              /* apilamos */
    "   mov dx,OFFSET finish " /* solo para que figure finish en la cabecera */
) ;
}
#endif

word_t CS_SO1H ;                      /* segmento de codigo (text) de SO1H */

word_t RO_SO1H ;                     /* segmento de datos (rodata) de SO1H */

word_t DS_SO1H ;                       /* segmento de datos (data) de SO1H */

word_t SS_SO1H ;                               /* segmento de pila de SO1H */

word_t BSS_SO1H ;                                  /* comienzo BSS de SO1H */

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

/* Cuando se llama a una función como modoSO1 el CS:IP se normaliza de     */
/* manera que IP valga 0x0000 al principio de la función. Es decir         */
/* CS=((CS0 << 4)+IP0) >> 4 e IP = 0x0000                                  */

modoSO1_t modoSO1 ( void )    /* modo en que se ejecuta SO1: bin, exe, ... */
{
    asm
    (
        "   call $+4           \n"       /* (modoSO1_t)0x01 == modoSO1_Exe */
        " mSO1: db 0x01        \n"    /* valor de modoSO1, por defecto exe */
        "   pop bx             \n"
        "   xor eax,eax        \n"
        "   mov al,[cs:bx]     \n" /* mSO1 */
    ) ;                                                 /* return(modoSO1) */
}

uint8_t unidadBIOS ( void )        /* numero BIOS de la unidad de arranque */
{
    asm
    (
        "   call $+4           \n"
        " uBIOS: db 0xFF       \n"                  /* valor de unidadBIOS */
        "   pop bx             \n"
        "   mov al,[cs:bx]     \n" /* uBIOS */
    ) ;                                                   /* return(uBIOS) */
}

uint8_t despCab ( void )    /* desplazam. de la cabecera (cab en startBin) */
{
    asm
    (
        "   call $+5           \n"
        " dCab: dw 0x0000      \n"                    /* valor de desplCab */
        "   pop bx             \n"
        "   mov al,[cs:bx]     \n" /* dCab */
    ) ;                                                    /* return(dCab) */
}

void obtenerMapa ( void )           /* obtiene CS_SO1H, DS_SO1H y BSS_SO1H */
{

    word_t reg_AX ;

//  while (TRUE) ;
    asm
    (
        "   call ret_dir          \n"
        " ret_dir:                \n"
        "   mov edx,$             \n"
        "   mov bx,cs             \n"
        "   movzx ebx,bx          \n"
        "   shl ebx,4             \n" /* ebx = (CS << 4)                   */
        "   pop ax                \n"
        "   movzx eax,ax          \n"
        "   add eax,ebx           \n" /* eax = direccion absoluta ret_dir  */
        "   sub eax,edx           \n"
        "   shr eax,4             \n"
        "   mov [bp-4],ax         \n" /* reg_AX */
    ) ;

    CS_SO1H = reg_AX ;

//  while (TRUE) ;
    asm
    (
        " extern __stop__relot    \n"
        "   mov eax,__stop__relot \n"
        "   shr eax,4             \n"
        "   mov [bp-4],ax         \n" /* reg_AX */
    ) ;

    RO_SO1H = CS_SO1H + reg_AX ;

    //  while (TRUE) ;
    asm
    (
        " extern __start__data    \n"
        "   mov eax,__start__data \n"
        "   shr eax,4             \n"
        "   mov [bp-4],ax         \n" /* reg_AX */
    ) ;

    DS_SO1H = CS_SO1H + reg_AX ;

//  while (TRUE) ;
    asm
    (
        " extern __start__bss     \n"
        "   mov eax,__start__bss  \n"
        "   shr eax,4             \n"
        "   mov [bp-4],ax         \n" /* reg_AX */
    ) ;

    BSS_SO1H = CS_SO1H + reg_AX ;

//  while (TRUE) ;
    asm
    (
        "   mov ax,ss             \n"
        "   mov [bp-4],ax         \n" /* reg_AX */
    ) ;

    SS_SO1H = reg_AX ;

}

