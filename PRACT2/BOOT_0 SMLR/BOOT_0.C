/***************************************************************************/
/*                                boot_0.c                                 */
/***************************************************************************/
/*             Sector de arranque minimo reconocido por el BIOS            */
/***************************************************************************/

typedef enum { FALSE, TRUE } bool_t ;

typedef unsigned char byte_t ;
typedef unsigned int  word_t ;
typedef unsigned long dword_t ;

//typedef byte_t far * pointer_t ;                    /* tipo puntero lejano */
typedef byte_t * pointer_t ;                    /* tipo puntero lejano */

#define MK_FP(s, d)                                    /* make far pointer */\
  (pointer_t)((((long)s) << 16) | ((long)d))

void startBin ( void ) {

//pointer_t ptr = MK_FP(0x0B800, 0x0000) ;       /* apunta al byte 0 de la */
                                                       /* memoria de video */  
  pointer_t ptr = 0x0B8000 ;                     /* apunta al byte 0 de la */
													   
//  word_t far * ptrWord = (word_t far *)ptr ;													   
  unsigned short int * ptrWord = (unsigned short int *)ptr ;													   
									
  ptr[2] = 'P' ;
  ptr[3] = 'P' ;
  ptr[4] = 'P' ;
  ptr[5] = 'P' ;
  ptr[6] = 'L' ;
  ptr[7] = 'L' ;
  ptr[8] = 'R' ;
  ptr[9] = 'R' ;  
									
  while(TRUE) (*ptrWord)++ ;    /* forever incrementa byte 0 de la m. de video */

  while(TRUE) (*ptr)++ ;    /* forever incrementa byte 0 de la m. de video */

}

#define opcion 4   /* 1, 2, 3 o 4 (formas distintas de poner la signatura) */

#if (opcion == 1)

asm ORG 510 - 0x18  /* tamanio del sector - tamanio del codigo (alineando) */

char signatura [ 2 ] = { 0x55, 0xAA } ;

#elif (opcion == 2)

void signatura ( void ) {
  asm {
    ORG 510
    db 0x55, 0xAA ;
  }
}                      /* acordarse de extraer los 512 bytes primeros:     */
                       /*                                                  */
                       /* EXTRAER BOOT_0.bin 0 512 BOOT_0.bs               */

#elif (opcion == 3)

#include "..\..\pract0\so1pub.h\f_asm.h"

begin_f_asm(signatura) {
  ORG 510
  db 0x55, 0xAA ;
} end_f_asm(signatura) ;

#else /* (opcion == 4) */

                      /* acordarse de parchear BOOT_0.bs con la signatura: */
                      /*                                                   */
                      /* EXTENDER BOOT_0.bin 512 BOOT_0.bs0                */
                      /* PARCHEAR BOOT_0.bs0 512 55 AA BOOT_0.bs           */

#endif



