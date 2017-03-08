/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/***************************************************************************/
/*                                ajustes.c                                */
/***************************************************************************/
/*                                                                         */
/***************************************************************************/

/* primer codigo presente al principio de so1h.bin y so1h.exe tras la      */
/* cabecera EXE (modificada en el caso de SO1h.bin). En el caso de         */
/* so1h.bin es el primer codigo que se ejecuta.                            */     
/*
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
#include "..\so1hpub.h\ajustusr.h"                        /* startUserCode */
#include "..\so1h.h\ajustsp.h"                                 /* SP0_SO1H */

#ifndef _DOS

#include "..\so1hpub.h\main.h"          /* _start, __start__, main, finish */

#endif

modoSO1_t modoSO1 ( void ) ;  /* modo en que se ejecuta SO1: bin, exe, ... */

void unidadBIOS ( void ) ;    /* guarda el número de la unidad de arranque */

void startBin ( void ) ;                    /* implementada a continuacion */
asm
(
    " section .text               \n"
    "   global _startBin          \n"
    " _startBin:                  \n"

    "   cli                       \n"      /* inhibimos las interrupciones */
    
    "   mov ax,cs                 \n"      /* ajustamos cs con el fin de   */
    "   sub ax,2                  \n"      /* que cs apunte a la cabecera  */
    "   push ax                   \n"      /* y cedemos el control a la    */
    "   push $+4                  \n"      /* siguiente instrucción tras   */
    "   retf                      \n"      /* el retorno lejano (retf)     */

    "   mov [cs:_unidadBIOS+9],dl \n"                   /* unidadBIOS = dl */

    "   mov al,0x00               \n"    /* (modoSO1_t)0x00 == modoSO1_Bin */
    "   mov [cs:_modoSO1+9],al    \n"             /* modoSO1 = modoSO1_Bin */

    " extern __stop__bss          \n"
    "   mov ebx,__stop__bss       \n"    /* hacemos figurar _stop__bss     */
    "   add ebx,0x0F              \n"
    "   shr ebx,4                 \n"
    "   mov ax,cs                 \n"
    "   add bx,ax                 \n"
    "   mov ss,bx                 \n"/* inic. segmento de pila del proceso */
    "   mov sp,SP0_SO1H           \n"/* inic. puntero  de pila del proceso */ /* desplazamiento 004B */

    " extern __start              \n" /* funcion a la que ceder el control */
                                            /* cedemos el control a _start */
    "   mov ebx,__start           \n"  /* _start es la funcion que reubica */
    "   ror ebx,4                 \n"                      /* ver c0dh.asm */
    "   add ax,bx                 \n"
    "   push ax                   \n"
    "   shr ebx,28                \n"              /* CS = _start >> 4     */
    "   push bx                   \n"              /* IP = _start & 0x000F */
    "   retf                      \n"
) ;

#ifndef _DOS

void __start__ ( void )                           /* se llama desde _start */
{
    main() ;
}

#endif

word_t CS_SO1H ;                     /* segmento de codigo (text)  de SO1H */

word_t RO_SO1H ;                     /* segmento de datos (rodata) de SO1H */

word_t DS_SO1H ;                     /* segmento de datos (data)   de SO1H */

word_t BSS_SO1H ;                    /* segmento de datos (bss)    de SO1H */

word_t SS_SO1H ;                     /* segmento de pila           de SO1H */

/* Funcion SS_Kernel que sirve de variable en el segmento de codigo para   */
/* guardar el SS del sistema SO1H. El acceso a esa variables puede hacerse */
/* de la siguiente manera:                                                 */
/*                                                                         */
/*    variable = *(word_t *)SS_Kernel ;                                    */
/*    *(word_t *)SS_Kernel = valor ;                                       */
/*    mov ax,[cs:_SS_Kernel] ;                                             */ 
/*    mov [cs:_SS_Kernel],ax ;                                             */

void SS_Kernel ( void ) ;        /* guarda el valor del SS del kernel SO1H */
asm
(
    " section .text       \n"
    "   global _SS_Kernel \n" /* aqui se guardara el valor del segmento de */
    " _SS_Kernel: db 'SS' \n" /* pila (SS) del nucleo                      */
) ;

word_t IMRInicial ;            /* mascara de interrupcion inicial del 8259 */

void finish ( void )                            /* main debe retornar aqui */
{
    /* exit(0) ; */           /* esta función no se usa, pero por simetria */
}                                                            /* ver atexit */


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

