/***************************************************************************/
/*                                 MSDOS_T.C                               */
/***************************************************************************/
/*                                                                         */
/***************************************************************************/

#include "..\so1hpub.t\def_test.h"                                 /* TEST */

#ifdef TEST

#include "..\so1hpub.h\tipos.h"
#include <string.h>                                      /* memset, strcpy */

void test_msdos ( void )
{

    int i ;
    char str [256] ;
    pointer_t ptrPSP ;
    short int df ;
    int err ;
    word_t accion ;
    int nbytes ;
    dword_t pos ;

    if (hayMSDOS())
    {
        printStrBIOS("\n") ;
        printStrBIOS(" Hay MSDOS \n") ;

        printStrBIOS("\n") ;
        printStrBIOS(" Version MSDOS: Mayor = ") ;
        printHexBIOS(versionMSDOS() & 0x00FF, 2) ;
        printStrBIOS(" Menor = ") ;
        printHexBIOS(versionMSDOS() >> 8, 2) ;
        printStrBIOS("\n") ;

        printStrBIOS("\n") ;
        printStrBIOS(" segPSP = ") ;
        printHexBIOS(segPSP(), 4) ;
        printStrBIOS("\n") ;

        printStrBIOS("\n") ;
        ptrPSP = (pointer_t)((segPSP() << 4) + 0x0081) ;
        printStrBIOS(ptrPSP) ;
        printStrBIOS("\n") ;

        if (hayDOSBox())
        {
            printStrBIOS("\n") ;
            printStrBIOS(" Hay DOSBox \n") ;
        }
        else
        {
            printStrBIOS("\n") ;
            printStrBIOS(" No hay DOSBox \n") ;
        }

        if (hayWindowsNT())
        {
            printStrBIOS("\n") ;
            printStrBIOS(" Hay WindowsNT \n") ;
        }
        else
        {
            printStrBIOS("\n") ;
            printStrBIOS(" No hay WindowsNT \n") ;
        }

        printStrBIOS("\n") ;
        printStrBIOS(" argcMSDOS() = ") ;
        printHexBIOS(argcMSDOS(), 1) ;
        printStrBIOS("\n") ;

        for ( i = 0 ; i < argcMSDOS() ; i++ )
        {
            printStrBIOS("\n") ;
            printStrBIOS(" argvMSDOS(") ;
            printDecBIOS(i, 1) ;
            printStrBIOS(") = \"") ;
            getArgvMSDOS(i, &str) ;
            printStrBIOS(str) ;
            printStrBIOS("\"") ;
        }
        printStrBIOS("\n") ;

        i = 0 ;
        while (getArgvMSDOS(i, &str))
        {
            printStrBIOS("\n") ;
            printStrBIOS(" argvMSDOS(") ;
            printDecBIOS(i, 1) ;
            printStrBIOS(") = \"") ;
            printStrBIOS(str) ;
            printStrBIOS("\"") ;
            i++ ;
        }

        printStrBIOS("\n") ;
        printStrBIOS("\n") ;
        printStrBIOS(" valorMSDOS(\"PATH\") = ") ;
        printStrBIOS("\"") ;
        printStrBIOS(valorMSDOS("PATH")) ;
        printStrBIOS("\"") ;
        printStrBIOS("\n") ;

        /* openDOS --------------------------------------------------------------- */

        df = openDOS("none.lst", 0) ;
        printStrBIOS("\n") ;
        printStrBIOS(" openDOS(\"none.lst\", 0) = ") ;
        printIntBIOS((short)df, 1) ;
        printStrBIOS("\n") ;

        df = openDOS("ajustes.lst", 0) ;
        printStrBIOS("\n") ;
        printStrBIOS(" openDOS(\"ajustes.lst\", 0) = ") ;
        printIntBIOS((short)df, 1) ;
        printStrBIOS("\n") ;

        err = closeDOS(df) ;
        printStrBIOS("\n") ;
        printStrBIOS(" closeDOS(df) = ") ;
        printIntBIOS((short)err, 1) ;
        printStrBIOS(" = 0x") ;
        printHexBIOS((short)err, 4) ;
        printStrBIOS("\n") ;

        err = closeDOS(df) ;
        printStrBIOS("\n") ;
        printStrBIOS(" closeDOS(df) = ") ;
        printIntBIOS((short)err, 1) ;
        printStrBIOS(" = 0x") ;
        printHexBIOS((short)err, 4) ;
        printStrBIOS("\n") ;

        /* extendedOpenDOS ------------------------------------------------------- */

        accion = 0x0001 ;
        df = extendedOpenDOS("none.lst", 0x0000, 0x0000, &accion, &err) ;
        printStrBIOS("\n") ;
        printStrBIOS(" extendedOpenDOS(\"none.lst\", 0x0000, 0x0000, &accion, &err) = ") ;
        printIntBIOS((short)df, 1) ;
        printStrBIOS("\n") ;

        accion = 0x0001 ;
        df = extendedOpenDOS("ajustes.lst", 0x0000, 0x0000, &accion, &err) ;
        printStrBIOS("\n") ;
        printStrBIOS(" extendedOpenDOS(\"ajustes.lst\", 0x0000, 0x0000, &accion, &err) = ") ;
        printIntBIOS((short)df, 1) ;
        printStrBIOS("\n") ;

        err = closeDOS(df) ;
        printStrBIOS("\n") ;
        printStrBIOS(" closeDOS(df) = ") ;
        printIntBIOS((short)err, 1) ;
        printStrBIOS(" = 0x") ;
        printHexBIOS((short)err, 4) ;
        printStrBIOS("\n") ;

        accion = 0x0001 ;
        df = extendedOpenDOS("ajustes.lst", 0x0000, 0x0000, &accion, &err) ;
        printStrBIOS("\n") ;
        printStrBIOS(" extendedOpenDOS(\"ajustes.lst\", 0x0000, 0x0000, &accion, &err) = ") ;
        printIntBIOS((short)df, 1) ;
        printStrBIOS("\n") ;

        err = closeDOS(df) ;
        printStrBIOS("\n") ;
        printStrBIOS(" closeDOS(df) = ") ;
        printIntBIOS((short)err, 1) ;
        printStrBIOS(" = 0x") ;
        printHexBIOS((short)err, 4) ;
        printStrBIOS("\n") ;

        /* createDOS ------------------------------------------------------------- */

        df = createDOS("none.lst", FA_ARCH) ;
        printStrBIOS("\n") ;
        printStrBIOS(" createDOS(\"none.lst\", FA_ARCH) = ") ;
        printIntBIOS((short)df, 1) ;
        printStrBIOS(" = 0x") ;
        printHexBIOS((short)df, 4) ;
        printStrBIOS("\n") ;

        /* readDOS --------------------------------------------------------------- */

        accion = 0x0001 ;
        df = extendedOpenDOS("ajustes.lst", 0x0000, 0x0000, &accion, &err) ;
        nbytes = readDOS(df, &str, 10) ;
        printStrBIOS("\n\n nbytes = ") ;
        printIntBIOS((short)nbytes, 1) ;
        printStrBIOS(" bufer = \"") ;
        str[9] = (char)0 ;
        printStrBIOS(str) ;
        printStrBIOS("\"") ;
        closeDOS(df) ;

        /* writeDOS -------------------------------------------------------------- */

        strcpy(str, "patata") ;
        printStrBIOS("\n\n bufer = \"") ;
        printStrBIOS(str) ;
        printStrBIOS("\"") ;

        accion = 0x0012 ;
        df = extendedOpenDOS("ajustes.lst", 0x0001, 0x0020, &accion, &err) ;
        nbytes = writeDOS(df, &str, 10) ;
        printStrBIOS("\n\n nbytes = ") ;
        printIntBIOS((short)nbytes, 1) ;
        closeDOS(df) ;

        /* lseekDOS -------------------------------------------------------------- */

        accion = 0x0001 ;
        df = extendedOpenDOS("so1h.bin", 0x0000, 0x0000, &accion, &err) ;
        printStrBIOS("\n\n lseekDOS(df, &pos, whence) = ") ;
        printIntBIOS((short)lseekDOS(df, &pos, 2), 1) ;
        printStrBIOS("\n\n pos = ") ;
        printIntBIOS((short)pos, 1) ;
        closeDOS(df) ;

        /* getDiskDOS ------------------------------------------------------------ */

#if (0)

        printStrBIOS("\n\n getdiskDOS() = ") ;
        printIntBIOS((short)getdiskDOS(), 1) ;
        printStrBIOS(" unidad = ") ;
        printCarBIOS('A' + (short)getdiskDOS()) ;
        printCarBIOS(':') ;

        printStrBIOS("\n\n setdiskDOS(0) = ") ;
        printIntBIOS((short)setdiskDOS(0), 1) ;
        printStrBIOS(" LASTDRIVE = ") ;
        printCarBIOS('A' + (short)setdiskDOS(0) - 1) ;
        printCarBIOS(':') ;

        printStrBIOS("\n\n getdiskDOS() = ") ;
        printIntBIOS((short)getdiskDOS(), 1) ;
        printStrBIOS(" unidad = ") ;
        printCarBIOS('A' + (short)getdiskDOS()) ;
        printCarBIOS(':') ;
#endif

        /* getcurdirDOS ---------------------------------------------------------- */

        printStrBIOS("\n\n getcurdirDOS(2, str) = ") ;
        printIntBIOS((short)getcurdirDOS(2, str), 1) ;
        printStrBIOS(" str = ") ;
        printStrBIOS(str) ;

        /* chdirDOS -------------------------------------------------------------- */

        printStrBIOS("\n\n chdirDOS(\"mio\") = ") ;
        printIntBIOS((short)chdirDOS("mio"), 1) ;

    }
    else
    {

        printStrBIOS(" No hay MSDOS \n") ;

    }
}

#endif
