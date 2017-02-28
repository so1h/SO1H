/* ----------------------------------------------------------------------- */
/*                                memvideo.c                               */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

#include "..\so1hpub.h\tipos.h"
#include "..\so1hpub.h\bios_0.h"                           /* printCarBIOS */
#include "..\so1hpub.h\pantalla.h"         /* numFilas, borrarPantalla ... */
#include "..\so1hpub.h\bios_crt.h"                          /* inicBiosCrt */
                                         /* ptrPant, numFilas, numColumnas */

byte_t cursorF ;

byte_t cursorC ;

void inicMemVideo ( void ) {
  inicBiosCrt() ;
}

int finMemVideo ( void ) {
  return(0) ;
}

void goToXYVideo ( byte_t F, byte_t C ) {
//  if (F >= numFilas) return ;
//  if (C >= numColumnas) return ;
  cursorF = F ;
  cursorC = C ;
}

int printCarVideo ( char car ) {
    switch(car) {
    case '\f' : borrarCPantalla(ptrPant, numFilas) ;           /* formfeed */
                /* borrarPantalla(ptrPant, numFilas) ; */
                cursorF = 0 ;
                cursorC = 0 ;
                break ;
    case '\r' : cursorC = 0 ;                           /* carriage return */
                break ;
    case '\n' : if (++cursorF == numFilas) {                    /* newline */
                  scrollCPantalla(ptrPant, numFilas) ;
                  cursorF = numFilas-1 ;
                }
                break ;
    case '\b' : if (cursorC > 0) {                            /* backspace */
                  cursorC-- ;
                  ptrPant->t[cursorF][cursorC].car = ' ' ;
                }
                else printCarBIOS('\a') ;
                break ;
    case '\t' : car = ' ' ; break ;                           /* tabulador */
    case '\a' : printCarBIOS('\a') ;                /* audible alert (BEL) */
                break ;
    default   : ptrPant->t[cursorF][cursorC].car = car ;
                if (++cursorC == 80) {
                  cursorC = 0 ;
                  if (++cursorF == numFilas) {
                    scrollCPantalla(ptrPant, numFilas) ;
                    cursorF = numFilas-1 ;
                  }
                }
    }
  return(0) ;
}

