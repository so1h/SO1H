/* ----------------------------------------------------------------------- */
/*                               interrup.c                                */
/* ----------------------------------------------------------------------- */
/*                  rutinas de tratamiento de interrupcion                 */
/* ----------------------------------------------------------------------- */

#include "..\so1hpub.h\tipos.h"    
#include "..\so1hpub.h\pic.h"                                    /* ptrTVI */
#include "..\so1h.h\ajustsp.h"                           
#include "..\so1h.h\ajustes.h"    
#include "..\so1h.h\procesos.h"
#include "..\so1h.h\blockpr.h"
#include "..\so1h.h\interrup.h"
#include "..\so1hpub.h\printvid.h"

rti_t VIOrg [ nVIntMax ] ;          /* vectores de interrupcion originales */

rindx_t recVInt [ nVIntMax ] ;             /* recurso que posee ese vector */

void isrNula (void ) {
}

isr_t isr [ nVIntMax ] ;             /* rutina de servicio de interrupcion */

asm
(
    "%macro RTI 2         \n"                               /* RTI(%1, %2) */
    "       pusha         \n"                                
    "       mov bl,0%1%2h \n"                         /* bl = %1%2 = nVInt */
    "       jmp word fin  \n"   /* (word) para codificar con 2 bytes el op */
    "%endmacro            \n"        /* ya que sino unas veces 1 y otras 2 */
) ;	

#define tamCodigoRTI 6                                        /* 1 + 2 + 3 */

asm
(
    "%macro RTIF 1                                     \n"
    " RTI %1, 0 \n RTI %1, 1 \n RTI %1, 2 \n RTI %1, 3 \n"
    " RTI %1, 4 \n RTI %1, 5 \n RTI %1, 6 \n RTI %1, 7 \n"
    " RTI %1, 8 \n RTI %1, 9 \n RTI %1, a \n RTI %1, b \n"
    " RTI %1, c \n RTI %1, d \n RTI %1, e \n RTI %1, f \n"
    "%endmacro                                         \n"
) ;	

void rti_00 ( void ) ;
void envolvente_00 ( void ) {
asm 
(   
    " section .text                        \n"
    "   global _rti_00                     \n"
    " _rti_00:                             \n"
    " RTIF 0 \n RTIF 1 \n RTIF 2 \n RTIF 3 \n"
    " RTIF 4 \n RTIF 5 \n RTIF 6 \n RTIF 7 \n"
//  " RTIF 8 \n RTIF 9 \n RTIF a \n RTIF b \n"
//  " RTIF c \n RTIF d \n RTIF e \n RTIF f \n"
	"fin:                                  \n"
) ;
   
    prologo_rti_sin_PUSHA() ;                               /* nVInt en BL */

    isr[reg_BL()]() ;/* llamada a la rutina de servicio de la interrupcion */
//                                     /* (se apila la dir. de ret. CS:IP) */	
    epilogo_rti() ;
  
}

void inicTVI ( void ) {

    int nVInt ;                  /* salvamos la tabla de vectores original */

    for (nVInt = 0 ; nVInt < nVIntMax ; nVInt++ ) {
        VIOrg[nVInt] = ptrTVI[nVInt] ;
        recVInt[nVInt] = -1 ;
    }

}

void redirigirInt ( byte_t nVInt, isr_t isr_x ) {
    ptrTVI[nVInt] = 
	    (rti_t)MK_FP(CS_SO1H, 
	                 (((dword_t)&envolvente_00)+6)+(dword_t)(nVInt*tamCodigoRTI)-((dword_t)CS_SO1H << 4)) ;
    isr[nVInt] = isr_x ;
	
	printStrVideo("\n ptrTVI[0x") ;
	printHexVideo((word_t)nVInt, 2) ;
	printStrVideo("] = ") ;
	printPtrVideo((pointer_t)ptrTVI[nVInt]) ;

	printStrVideo("\n isr[0x") ;
	printHexVideo((word_t)nVInt, 2) ;
	printStrVideo("] = 0x") ;
	printLHexVideo((dword_t)isr[nVInt], 5) ;
	
}

void redirigirIntHardware ( byte_t irq, isr_t isr ) {
    byte_t nVInt ;
    if (irq < 8) {
        unmask_pic1(1 << irq);
        nVInt = 0x08 + irq;
    } else {
        unmask_pic1(1 << IRQ_PIC2);
        unmask_pic2(1 << (irq - 8));
        nVInt = 0x70 + irq - 8;
    }
    redirigirInt(nVInt, isr) ;
}

void restablecerInt ( int nVInt ) {
    ptrTVI[nVInt] = VIOrg[nVInt] ;
    isr[nVInt] = (isr_t)MK_FP(CS_SO1H, (word_t)isrNula) ;
}

