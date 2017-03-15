/* ----------------------------------------------------------------------- */
/*                               manej_0f.c                                */
/* ----------------------------------------------------------------------- */
/*          manejador de las llamadas al sistema del grupo AH = 0f         */
/* ----------------------------------------------------------------------- */

/* ----------------------------------------------------------------------- */
/* AX = 0x0f00                                                             */
/* ----------------------------------------------------------------------- */

#include "..\so1hpub.h\tipos.h"
#include "..\so1hpub.h\printvid.h"
#include "..\so1h.h\procesos.h"
#include "..\so1h.h\blockpr.h"


void so1_manejador_0f ( void ) {                     /* ah = 0f ; int SO1H */

    printStrVideo("\n\n estoy en so1_manejador_0f  tramaThread->AX = ") ;
    printHexVideo(tramaThread->AH, 4) ;

    switch (tramaThread->AL) {

        case 0x00 :                             
		            break ;
        case 0x01 :                                      
		            break ;
        case 0x02 :                                     
		            break ;
        case 0x03 :                                      
		            break ;
        default : ;

  }

}

