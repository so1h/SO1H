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
//  "       pusha         \n"                                   /* db 0x60 */ 
//  "       db 0x67       \n"                                   /* db 0x67 *//* address-size override prefix */ 
//  "       db 0x66       \n"                                   /* db 0x66 *//* operand-size override prefix */ 
    "       pushad        \n"                             /* db 0x66, 0x60 */ 
    "       mov dl,0%1%2h \n"                         /* dl = %1%2 = nVInt */
    "       jmp word fin  \n"   /* (word) para codificar con 2 bytes el op */
    "%endmacro            \n"      /* ya que si no, unas veces 1 y otras 2 */
) ;	

//#define tamCodigoRTI 6                                      /* 1 + 2 + 3 *//* pusha */ 
#define tamCodigoRTI 7                                        /* 2 + 2 + 3 *//* pushad */ 

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
rti_00_entry:
asm 
(   
    " section .text                        \n"
    "   global _rti_00                     \n"
    " _rti_00:                             \n"
    " RTIF 0 \n RTIF 1 \n RTIF 2 \n RTIF 3 \n"
    " RTIF 4 \n RTIF 5 \n RTIF 6 \n RTIF 7 \n"
#if (nVIntMax == 256)	
    " RTIF 8 \n RTIF 9 \n RTIF a \n RTIF b \n"
    " RTIF c \n RTIF d \n RTIF e \n RTIF f \n"
#endif	
	"fin:                                  \n"
) ;
   	
    prologo_rti_sin_PUSHA() ;                               /* nVInt en DL */

	nVIntActual = reg_DL() ; 

    isr[nVIntActual]() ;     /* llamada a la rutina de servicio de la int. */
//                                     /* (se apila la dir. de ret. CS:IP) */	
    epilogo_rti() ;
  
}

/* va a haber dos tipos de interrupciones, las redirigidas y las que no    */
/* estan redirigidas. Las redirigidas entran todas por rti_00. Las no      */
/* redirigidas no entran por rti_00 y en ese sentido están al marge del    */
/* sistema so1h.                                                           */

void inicTVI ( void ) {

    int nVInt ;                  /* salvamos la tabla de vectores original */
//	word_t segment ;
//	word_t offset ;

    for (nVInt = 0 ; nVInt < nVIntMax ; nVInt++ ) {
        VIOrg[nVInt] = ptrTVI[nVInt] ;
        recVInt[nVInt] = -1 ;
	    isr[nVInt] = (isr_t)isrNula ;
//		segment = ((address_t *)&ptrTVI[nVInt])->segment ;
//		offset  = ((address_t *)&ptrTVI[nVInt])->offset ;
//		redirigirInt(nVInt, (isr_t)MK_P(segment, offset)) ;
    }

}

void redirigirInt ( byte_t nVInt, isr_t isr_x ) {
    ptrTVI[nVInt] = 
	    (rti_t)MK_FP(CS_SO1H, 
//	                 (dword_t)&rti_00+(dword_t)(nVInt*tamCodigoRTI)-((dword_t)CS_SO1H << 4)) ;
	                 (((dword_t)&envolvente_00)+6)+(dword_t)(nVInt*tamCodigoRTI)-((dword_t)CS_SO1H << 4)) ;
    isr[nVInt] = isr_x ;

#if (0)	
	printStrVideo("\n ptrTVI[0x") ;
	printHexVideo((word_t)nVInt, 2) ;
	printStrVideo("] = ") ;
	printPtrVideo((pointer_t)ptrTVI[nVInt]) ;

	printStrVideo("\n isr[0x") ;
	printHexVideo((word_t)nVInt, 2) ;
	printStrVideo("] = 0x") ;
	printLHexVideo((dword_t)isr[nVInt], 5) ;
#endif
	
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
    isr[nVInt] = (isr_t)isrNula ;
}

