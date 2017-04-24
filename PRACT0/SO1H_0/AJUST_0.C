/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                ajust_0.c                                */
/* ----------------------------------------------------------------------- */
/*           Ajuste inicial del modelo de programacion de so1h_0           */
/* ----------------------------------------------------------------------- */

/* codigo presente al principio de so1h_0.exe (tras su cabecera EXE) y al  */
/* principio de so1h_0.sys (que no tiene cabecera). De hecho so1h_0.sys es */
/* igual a so1h_0.exe sin la cabecera. so1h_0 puede ejecutarse de dos      */
/* maneras:                                                                */
/*                                                                         */
/* 1) como so1h_0.sys siendo cargado en memoria por el sector de arranque  */
/*                                                                         */
/* 2) como so1h_0.exe siendo cargado desde MSDOS, NTVDM, DOSBox, ...       */
/*                                                                         */
/* so1h_0.sys toma el control en la función startBin, que es a donde le    */
/* cede el control el sector de arranque.                                  */
/*                                                                         */
/* En el caso de so1h_0.exe el cargador cede el control directamente a la  */
/* función _start que es una función contenida en el fichero c0dh.asm de   */
/* Smaller C. c0dh.asm se encarga de la reubicación.                       */
/*                                                                         */
/* Para unificar el comportamiento de so1h_0.exe y so1h_0.sys, la funcion  */
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
#include "..\so1h_0.h\ajustsp_0.h"                           /* SP0_SO1H_0 */

#include <string.h>                                              /* memcpy */

#ifndef _DOS

#include "..\so1hpub.h\main.h"          /* _start, __start__, main, finish */

#endif

modoSO1_t modoSO1 ( void ) ;     /* modo en que se ejecuta SO1H: bin o exe */

void unidadBIOS ( void ) ;    /* guarda el número de la unidad de arranque */

/* Es correcto el uso moderado de la pila desde el primer momento ya que   */
/* para SO1H_0.exe MSDOS establece la pila donde se le ha indicado en la   */
/* cabecera EXE, y para SO1H_0.bin el PBR deja la pila con SS = 9000       */

void startBin ( void ) ;        /* punto de entrada para so1h_0.bin (boot) */                     
asm                                                      /* implementacion */
(
    " section .text               \n"
    "   global _startBin          \n"
    " _startBin:                  \n"

    "   cli                       \n"      /* inhibimos las interrupciones */

    "   mov ax,cs                 \n"      /* ajustamos cs con el fin de   */
    "   sub ax,2                  \n"      /* que cs apunte a la cabecera  */ /* 2 paragrafos = 32 bytes (sizeof(cabecera_t)) */
    "   push ax                   \n"      /* y cedemos el control a la    */
    "   push $+4                  \n"      /* siguiente instrucción tras   */
    "   retf                      \n"      /* el retorno lejano (retf)     */

    "   mov [cs:_unidadBIOS+9],dl \n"                   /* unidadBIOS = dl */

    "   mov al,0x00               \n"    /* (modoSO1_t)0x00 == modoSO1_Bin */
    "   mov [cs:_modoSO1+9],al    \n"             /* modoSO1 = modoSO1_Bin */

) ;
void startExe ( void ) ;               /* punto de entrada para so1h_0.exe */                     
asm                                                      /* implementacion */
(
    " section .text               \n"
    "   global _startExe          \n"
    " _startExe:                  \n"

    "   mov ax,SS_SO1H_0          \n"
    "   mov ss,ax                 \n"            /* inic. segmento de pila */
    "   mov sp,SP0_SO1H_0         \n"            /* inic. puntero  de pila */ /* desplazamiento 003C */

    "   mov ax,cs                 \n"    
    "   mov [cs:_CSInicial+9],ax  \n"                    /* CSInicial = cs */  

    " extern __start__bss         \n"            /* (sin reubicar)         */
	"   mov cx,__start__bss       \n"            /* tam del fichero SO1H_0 */ /* redondeado a numero par */
	"   shr cx,2                  \n"            /* n. bytes a n. dwords   */
	"   mov ax,cs                 \n"            /* reubicamos SO1H_0 a    */
	"   mov ds,ax                 \n"            /* 9000:0000. No se puede */
	"   mov ax,ss                 \n"            /* reubicar a alto nivel  */
	"   mov es,ax                 \n"            /* con SmallerC (llamar   */
	"   xor esi,esi               \n"            /* dos veces a _start)    */
	"   xor edi,edi               \n"
	"   repz                      \n"
	"   movsd                     \n"	
//                                          /* cedemos el control a _start */
    " extern __start              \n" /* funcion a la que ceder el control */
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

// llevamos esta declaracion efectiva de SS_Kernel a BLOCKPR.C 
//word_t SS_Kernel ;                   /* segmento de pila del kernel   SO1H */

word_t IMRInicial ;            /* mascara de interrupcion inicial del 8259 */

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

word_t CSInicial ( void )                                     /* CSInicial */
{
    asm
    (
        "   call $+5           \n"
        " CSIni: dw 0x0000     \n"                       /* valor de CSIni */
        "   pop bx             \n"
        "   mov ax,[cs:bx]     \n" /* CSIni */
    ) ;                                                   /* return(CSIni) */
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

