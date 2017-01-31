/* ----------------------------------------------------------------------- */
/*                                 puertos.c                               */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

#include "..\so1hpub.h\puertos.h"

byte_t inportb ( word_t port ) {
asm
(
"   mov dx,[bp+8] \n" /* port */
"   in al,dx      \n"
"   xor ah,ah     \n"
) ;
//return _AX ;
}

word_t inport ( word_t port ) {
asm
(
"   mov dx,[bp+8] \n" /* port */
"   in ax,dx      \n"
) ;
//return _AX ;
}

void outportb ( word_t port, byte_t val ) {
asm
(
"   mov dx,[bp+ 8] \n" /* port */
"   mov al,[bp+12] \n" /* val */
"   out dx,al      \n"
) ;
}

void outport ( word_t port, word_t val ) {
asm
(
"   mov dx,[bp+ 8] \n" /* port */
"   mov ax,[bp+12] \n" /* val */
"   out dx,ax      \n"
) ;
}

/* retardar_io se necesita para ralentizar la E/S con algun hardware     */

#define retardar_io( ) asm("jmp $+2 \n jmp $+2 \n") ;

byte_t inportb_r ( byte_t port ) {
  int __ret = inportb(port) ;
  retardar_io() ;
  return(__ret) ;
}

void outportb_r ( byte_t port, byte_t val ) {
  outportb(port, val) ;
  retardar_io() ;
}

/* timer 8254 (ver DataSheet) */

word_t contadorTimer0 ( void ) {  /* valor actual del contador 0 del timer */
asm
(
"   mov al,11010010b \n"     /* 11 01 001 0 : ReadBack Command, contador 0 */
"   out 01000011b,al \n"
"   jmp $+2          \n"
"   in al,01000000b  \n"
"   mov ah,al        \n"
"   jmp $+2          \n"
"   in al,01000000b  \n"
"   xchg ah,al       \n"
) ;
//return(_AX) ;
}


