/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/
/* ----------------------------------------------------------------------- */
/*                                  so1dbg.c                               */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

#include <so1hpub.h\tipos.h>                                     /* byte_t */
#include <so1hpub.h\puertos.h>           /* PORT_PS2_DATA, PORT_PS2_STATUS */

/* puntoDeParadaSO1 es una funcion pensada para poner puntos de parada en  */
/* el codigo del sistema SO1 (y los programas de usuario). Para poner un   */
/* punto de parada dentro de SO1 basta llamar a la funcion                 */
/* puntoDeParadaSO1(). Luego en el depurador (bochs dgui) debemos poner    */
/* como punto de parada (comando b) la direccion correspondiente al        */
/* segmento de carga de SO1 (por ejemplo 0x0060) y el desplazamiento de la */
/* funcion puntoDeParadaSO1(), el cual puede ser consultado en el fichero  */
/* SO1.MAP o SO1BIN.MAP. Como a la hora de enlazar SO1 ponemos so1dbg.obj  */
/* como uno de los primeros ficheros objeto la direccion de                */
/* puntoDeParadaSO1 normalmente no variara al recompilar.                  */

void puntoDeParadaSO1 ( void )
{
    asm
    (
        "   retf                      \n"
        "   db 'Punto De Parada SO1'  \n"
    ) ;
}

/* leerScancodeListo devuelve el codigo de scan de la ultima tecla         */
/* introducida o un 0x00 si ese codigo ya ha sido leido del registro de    */
/* datos, del teclado.                                                     */

#define codigoLeerScanCodeListo( )                                           \
asm                                                                          \
(                                                                            \
    " section .text             \n"                                          \
    "   in al,60h               \n"                       /* PORT_PS2_DATA */\
) ;                                                                          \

#if (1)

asm
(
    " section .text               \n"
    "   global _leerScancodeListo \n"
    " _leerScancodeListo:         \n"
) ;
codigoLeerScanCodeListo()
asm
(
    " section .text               \n"
    "   retf                      \n"
) ;

#else

byte_t leerScancodeListo ( void )
{
    codigoLeerScanCodeListo() ;
}

#endif

#define codigoLeerScanCode( )                                                \
asm                                                                          \
(                                                                            \
    " section .text           \n"                                            \
    " .@1:                    \n"                                            \
    "   nop                   \n"               /* es necesario un retardo */\
    "   in al,64h             \n"                       /* PORT_PS2_STATUS */\
    "   and al,00000001b      \n"                                            \
    "   je .@1                \n"                                            \
) ;                                                                          \
        codigoLeerScanCodeListo()                                            \

/* leerScancode espera (de forma activa) a que haya un codigo de scan      */
/* disponible (distinto de 0x00) en el registro de datos, del teclado y lo */
/* devuelve como resultado.                                                */

#if (1)

asm
(
    " section .text          \n"
    "   global _leerScancode \n"
    " _leerScancode:         \n"
) ;
codigoLeerScanCode()
asm
(
    " section .text          \n"
    "   retf                 \n"
) ;

#else

byte_t leerScancode ( void )
{
    codigoLeerScanCode() ;
}

#endif
