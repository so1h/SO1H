/* ----------------------------------------------------------------------- */
/*                                   s0.c                                  */
/* ----------------------------------------------------------------------- */
/*                               sistema cero                              */
/* ----------------------------------------------------------------------- */

#include "..\so1hpub.h\tipos.h"                                  /* word_t */
#include "..\so1h.h\ajustes.h"                                  /* modoSO1 */
#include "..\so1hpub.h\biosdata.h"                         /* ptrFechaBios */
#include "..\so1hpub.h\msdos.h"                /* finProgDOS, hayWindowsNT */
#include "..\so1hpub.h\bios_0.h"                             /* rebootBIOS */
#include "..\so1h.h\so1dbg.h"                           /* esperarScancode */
#include "..\so1h.h\s0.h"                /* mirarLoQueHay, MostrarLoQueHay */
//                                     /* hayDOS, hayNT, hayQemu, hayBochs */
//                                         /* hayDBox, hayNTVDM, hayFake86 */
#ifdef _DOS
#include <stdlib.h>                                  /* exit, EXIT_SUCCESS */
#endif


word_t fechaCompactada ( char * ptrFecha )
{

    word_t mes, dia, anio ;

    if ((ptrFecha[2] != '/') || (ptrFecha[5] != '/')) return (0x0000) ;

    mes  = 10*(ptrFecha[0] - '0') + (ptrFecha[1] - '0') ;

    if ((mes == 0) || (mes > 12)) return (0x0000) ;

    dia  = 10*(ptrFecha[3] - '0') + (ptrFecha[4] - '0') ;

    if ((dia == 0) || (dia > 31)) return (0x0000) ;

    anio = 10*(ptrFecha[6] - '0') + (ptrFecha[7] - '0') ;

    return ((anio << 9) | (mes << 5) | dia) ;

}

void mirarLoQueHay ( word_t * loQueHay )
{

    *loQueHay = 0x0000 ;                         /* de partida no hay nada */

    switch (modoSO1())
    {
    case modoSO1_Bin :                                  /* so1h.bin (boot) */
        break ;
    case modoSO1_Exe :                                  /* so1h.exe        */
        *loQueHay |= hayDOS ;
        if (hayWindowsNT())
            *loQueHay |= hayNT ;
        break ;
    default :                                                     /* error */
        assert(FALSE, "\a\n SO1() ERROR: modoSO1() = ");
        printHexBIOS(modoSO1(), 4) ;
        esperarScancode() ;
        finProgDOS (1) ;                                        /* int 21h */
        rebootBIOS() ;                                          /* int 19h */
        rebootLegacy() ;                                /* callf ffff:0000 */
    }

    switch (fechaCompactada(ptrFechaBios))
    {
    case 50903L :                                            /* "06/23/99" */
        *loQueHay |= hayQemu   ;
        break ;
    case  5706L : ;                                          /* "02/10/11" */
    case  7578L :                                            /* "12/26/14" */
        *loQueHay |= hayBochs  ;
        break ;
    case 47137L :                                            /* "01/01/92" */
        *loQueHay |= hayDBox   ;
        break ;
    case 48867L :                                            /* "07/03/95" */
        *loQueHay |= hayNTVDM  ;
        break ;
    case  6306L :                                            /* "05/02/12" */
        *loQueHay |= hayFake86 ;
        break ;
    case 50721L :                                            /* "01/01/99" */
        *loQueHay |= hayVDos   ;
        break ;
    default  :
        if ((modoSO1() == modoSO1_Bin) || (modoSO1() == modoSO1_Exe))
        {
            int i ;
            printLnBIOS() ;
            printStrBIOS("\a\n so1(): fecha del BIOS = ") ;
            for ( i = 0 ; i < 8 ; i++ )
                printCarBIOS(ptrFechaBios[i]) ;
            printStrBIOS("\n\n fecha compactada = ") ;
            printLDecBIOS(fechaCompactada(ptrFechaBios), 1) ;
            printStrBIOS(" ==> Maquina (virtual) inexplorada\n"
                         "\n"
                         " presione una tecla para continuar ") ;
            esperarScancode() ;
        }
    }
}

void ponerMuescaX ( char * nombreSistema, bool_t hayEseSistema )
{
    printStrBIOS(nombreSistema) ;
    printCarBIOS('[') ;
    if (hayEseSistema) printCarBIOS('X') ;
    else printCarBIOS(' ') ;
    printStrBIOS("]  ") ;
}

void mostrarLoQueHay ( word_t loQueHay )
{

    clrScrBIOS() ;
    goToXYBIOS(1, 0) ;
    switch (modoSO1())
    {
    case modoSO1_Bin :
        printStrBIOS(" so1h.bin") ;
        break ;
    case modoSO1_Exe :
        printStrBIOS(" so1h.exe") ;
        break ;
    }
    printStrBIOS("  ") ;
    ponerMuescaX("MSDOS", (bool_t)(loQueHay & hayDOS)) ;
    ponerMuescaX("WinNT", (bool_t)(loQueHay & hayNT)) ;
    switch (loQueHay & 0xFFFC)
    {
    case hayQemu   :
        ponerMuescaX("Qemu", TRUE) ;
        break ;
    case hayBochs  :
        ponerMuescaX("Bochs", TRUE) ;
        break ;
    case hayDBox   :
        ponerMuescaX("DOSBox", TRUE) ;
        break ;
    case hayNTVDM  :
        ponerMuescaX("NTVDM", TRUE) ;
        break ;
    case hayFake86 :
        ponerMuescaX("Fake86", TRUE) ;
        break ;
    case hayVDos   :
        ponerMuescaX("VDos", TRUE) ;
        break ;
    default :
        printStrBIOS("\aMaquina (virtual) inexplorada ") ;
    }
    printLnBIOS() ;
}

void tirarS0 ( word_t loQueHay )
{

    if (modoSO1() == modoSO1_Exe)
    {
#ifdef _DOS
        exit(EXIT_SUCCESS) ;
#else
        finProgDOS(0) ;                                         /* int 21h */
#endif
    }
    else if (loQueHay & (hayDBox | hayVDos))   /* DOSBox con boot da algun */
    {                                           /* problema al reiniciarse */
        clrScrBIOS() ;
        goToXYBIOS(11, 14) ;
        ocultaCursorBIOS() ;
        printStrBIOS(" puede apagar la maquina virtual DOSBox (Ctrl+F9) o VDos") ;
        asm(" cli \n hlt \n") ;
    }
    else               
    {
        clrScrBIOS() ;
        goToXYBIOS(1, 1) ;
        ocultaCursorBIOS() ;
        rebootBIOS() ;                                          /* int 19h */
//      rebootLegacy() ;                                /* callf ffff:0000 */
    }
}
