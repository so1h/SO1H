/* ----------------------------------------------------------------------- */
/*                                ajustusr.h                               */
/* ----------------------------------------------------------------------- */
/*    Ajuste de los registros de segmento y salto al programa principal    */
/* ----------------------------------------------------------------------- */

#ifndef AJUSTUSR_H
#define AJUSTUSR_H

#if (0)

En la cabecera EXE (comparando con so1h.map) aparecen los campos:

  bytesUltSector
  sectores_totales ==> tam = (sectores_totales-1)*512 + bytesUltSector

  numParCabecera = 0x20

  [CS0:IP0]   (CS0 << 4) + IP0 + (0x20 (=tamaño de la cabecera)) = _start

               dirección (sin reubicar) de la rutina que lleva a cabo la reubicación

  [SS0:SP0]    dirección (sin reubicar) de la pila (SS0+(0x20 >> 4)) SP0

La cabecera no esta disponible para el programa SO1H.exe, pero si para
SO1H.bin. Por lo tanto en elo programas de usuario va a poder utilizarse
esa información.

#endif

#define startUserCode             /* solo se ejecuta en so1h.bin y so1.exe */\
                                /* pero siempre es necesario como cabecera */\
asm                                                                          \
(                                                                            \
    "   mov ebx,_start__rodata \n"       /* hacemos figurar _start__rodata */\
    "   mov ebx,_start__data   \n"       /* hacemos figurar _start__data   */\
    "   mov ebx,_start__bss    \n"       /* hacemos figurar _start__bss    */\
    "   mov ebx,_stop__bss     \n"       /* hacemos figurar _stop__bss     */\
    "   add ebx,0x0F           \n"                                           \
    "   shr ebx,4              \n"                                           \
    "   mov ax,cs              \n"                                           \
    "   add bx,ax              \n"                                           \
    "   mov ss,bx              \n"   /* inic. segmento de pila del proceso */\
    "   mov sp,SPInicial       \n"   /* inic. puntero  de pila del proceso */\
                                            /* cedemos el control a _start */\
    "   mov ebx,__start        \n"     /* _start es la funcion que reubica */\
    "   ror ebx,4              \n"                         /* ver c0dh.asm */\
    "   add ax,bx              \n"                                           \
    "   push ax                \n"                                           \
    "   shr ebx,28             \n"                 /* CS = _start >> 4     */\
    "   push bx                \n"                 /* IP = _start & 0x000F */\
    "   retf                   \n"                                           \
) ;

#if (0)

#define startUserCode     /* solo se ejecuta en so1.bin, so1.com y so1.exe */\
                                /* pero siempre es necesario como cabecera */\
  asm {                                                                      \
    mov ax,cs ;                                                              \
    mov bx,SEG(startData) ;  /* valor del segmento de datos (sin reubicar) */\
    mov cx,OFFSET(finData) ;                           /* tam. del la DATA */\
    mov dx,OFFSET(finBSS) ;                            /* tam. del BSS     */\
    mov dx,OFFSET(startData) ;          /* ultimos bytes de codigo tras DS */\
    add ax,bx ;        /* ax contiene ahora el valor del segmento de datos */\
    pushf ;                                                                  \
    pop bx ;                                                 /* bx = flags */\
    cli ;                                                                    \
    mov ds,ax ;                              /* segmento de datos: DS */     \
    mov es,ax ;                              /* segmento extra:    ES = DS */\
    mov ss,ax ;                              /* segmento de pila:  SS = DS */\
    mov sp,SPInicial ;       /* Inicializacion puntero de pila del proceso */\
    mov bp,sp ;                                                              \
    push bx ;                                     /* restauramos los flags */\
    popf ;                                                                   \
  }

#define offset_SPInicial 0x001A

#define valor_SPInicial *((word_t far *)pointer(_CS, offset_SPInicial))

#define atexit( finish ) {                                                   \
  manejador_t far * manejador =                                              \
    (manejador_t far *)pointer(                                              \
       _DS,                                                                  \
       valor_SPInicial-6                                    /* SPInicial-6 */\
    ) ;                                                                      \
  *manejador = finish ;                                                      \
}

#endif

#endif /* AJUSTUSR_H */

