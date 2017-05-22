/* ----------------------------------------------------------------------- */
/*                                printvid.c                               */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

#include <so1hpub.h\tipos.h>
#include <so1hpub.h\caracter.h>                                     /* dig */
#include <so1hpub.h\memvideo.h>             /* inicMemVideo, printCarVideo */
#include <so1hpub.h\printgen.h>    /* printGen(Ln|Str|StrHasta|Dec|Int|..) */

/* para llamar a estas funciones se requiere ejecutar antes inicMemVideo   */

int printLnVideo ( )
{
    return(printGenLn(printCarVideo)) ;
}

int printStrVideo ( char * str )
{
    return(printGenStr(str, printCarVideo)) ;
}

int printStrHastaVideo ( char * str, word_t n, bool_t lleno )
{
    return(printGenStrHasta(str, n, lleno, printCarVideo)) ;
}

int printDecVideo ( word_t num, word_t l )
{
    return(printGenDec(num, l, printCarVideo)) ;
}

int printIntVideo ( int num, word_t l )
{
    return(printGenInt(num, l, printCarVideo)) ;
}

int printLIntVideo ( long int num, word_t l )
{
    return(printGenLInt(num, l, printCarVideo)) ;
}

int printLDecVideo ( dword_t num, word_t l )
{
    return(printGenLDec(num, l, printCarVideo)) ;
}

int printHexVideo ( word_t num, word_t l )
{
    return(printGenHex(num, l, printCarVideo)) ;
}

int printLHexVideo ( dword_t num, word_t l )
{
    return(printGenLHex(num, l, printCarVideo)) ;
}

int printBinVideo ( word_t num, word_t l )
{
    printGenBin(num, l, printCarVideo ) ;
}

int printLBinVideo ( dword_t num, word_t l )
{
    printGenLBin( num, l, printCarVideo ) ;
}

int printPtrVideo ( pointer_t ptr )
{
    return(printGenPtr(ptr, printCarVideo)) ;
}

int printByteVideo ( byte_t b )
{
    printCarVideo(dig[b >> 4]) ;
    printCarVideo(dig[b & 0x0F]) ;
}

int printWordVideo ( word_t w )
{
    printByteVideo((byte_t)(w >> 8)) ;
    printByteVideo((byte_t)w) ;
}

int printCadVideo ( char * cad )
{
    word_t i = 0 ;
    while (cad[i] != (char)0)
    {
        if (cad[i] == '\n') printCarVideo('\r') ;
        printCarVideo(cad[i]) ;
        i++ ;
    }
}

