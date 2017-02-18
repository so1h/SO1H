/* ----------------------------------------------------------------------- */
/*                                  msdos.c                                */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

#include "..\so1hpub.h\tipos.h"
#include "..\so1hpub.h\bios_0.h"
#include "..\so1hpub.h\msdos.h"
#include <string.h>                                      /* strcmp, strcpy */
//#include <so1pub.h\strings.h>

void finProgDOS ( int exitCode )
{
    asm
    (
        "   mov al,[bp+8] \n"
        "   mov ah,4ch    \n"       /* Llamada a MS-DOS: Terminar Programa */
        "   int 21h       \n"
    ) ;
}

#if (0) 
	
void mostrarVIMSDOS ( void )
{

    address_t * ptrVIDos = (address_t *)(nVIntMSDOS*4) ;

    byte_t * VIDos = (((dword_t)(ptrVIDos->segment)) << 4) + (ptrVIDos->offset) ;

    clrScrBIOS() ;

    printStrBIOS("\n ptrVIDos = ") ;
    printHexBIOS(ptrVIDos, 8) ;
    printLnBIOS() ;

    printStrBIOS("\n ptrVIDos = ") ;
    printHexBIOS(ptrVIDos->segment, 4) ;
    printCarBIOS(':') ;
    printHexBIOS(ptrVIDos->offset, 4) ;
    printLnBIOS() ;

    printStrBIOS("\n VIDos    = ") ;
    printLHexBIOS(VIDos, 8) ;
    printLnBIOS() ;
    printStrBIOS("\n (((dword_t)VIDos) >> 16) = ") ;
    printLHexBIOS((((dword_t)VIDos) >> 16), 8) ;
    printLnBIOS() ;

    printStrBIOS("\n *VIDos   = ") ;
    printHexBIOS(*VIDos, 2) ;
    printLnBIOS() ;
    printLnBIOS() ;

}

#endif

/* !!!! Se ha observado que DOSBox tiene el vector 0x000F14A0 cuando se    */
/* !!!! ejecuta directamente, y 0x000F1060 cuando arranca de disquete.     */

bool_t hayMSDOS ( void )
{

    address_t * ptrVIDos = (address_t *)(nVIntMSDOS*4) ;

    byte_t * VIDos = (((dword_t)(ptrVIDos->segment)) << 4) + (ptrVIDos->offset) ;

#if (0)
    mostrarVIMSDOS() ;
#endif

    if ((*VIDos) == 0xCF)                 /* 0xCF = codigo maquina de IRET */
        return (FALSE) ;

    if ((((dword_t)VIDos) >> 16) == 0xF)  /* el vector apunta al BIOS      */
//                                        /* direccion 0x000Fxxxx          */
        if (((dword_t)VIDos) != 0x000F14A0)
            return (FALSE) ;
//                               /* !!!! DOSBox tiene el vector 0x000F14A0 */
    return (TRUE) ;

}

word_t versionMSDOS ( void )
{
    word_t version ;
    asm
    (
        "   mov ah,30h    \n"  /* Llamada a MS-DOS: Get DOS Version Number */
        "   int 21h       \n"
        "   mov [bp-4],ax \n"      /* al = numero mayor, ah = numero menor */
    ) ;
    return(version) ;
}

word_t segPSP ( void )
{
    word_t PSP ;
    asm
    (
        "   mov ah,51h    \n"                                       /* PSP */
        "   int 21h       \n"
        "   mov [bp-4],bx \n" /* PSP */
    ) ;
    return(PSP) ;
}

pointer_t entornoMSDOS ( void )
{
    word_t segEntorno ;
    pointer_t ptrEntorno ;
    segEntorno = *((word_t *)((segPSP() << 4) + 0x002c)) ;
    ptrEntorno = (pointer_t)((segEntorno << 4) + 0x0000) ;
    return(ptrEntorno) ;
}

pointer_t valorMSDOS ( char * str )
{
    pointer_t ptrEntorno ;
    int i, j ;
    char car ;
    ptrEntorno = entornoMSDOS() ;
    i = 0 ;
    do
    {
        j = 0 ;
        car = ptrEntorno[i] ;
        while ((car != (char)0) &&
                (car != '=') &&
                (car == str[j]))
        {
            i++ ;
            j++ ;
            car = ptrEntorno[i] ;
        }
        if ((ptrEntorno[i++] == '=') && (str[j] == (char)0))
            break ;
        else
        {
            while (ptrEntorno[i] != (char)0) i++ ;
        }
    }
    while (ptrEntorno[++i] != (char)0) ;

    return((pointer_t)&ptrEntorno[i]) ;

}

/* !!!! Se ha observado que DOSBox tiene el vector 0x000F14A0 cuando se    */
/* !!!! ejecuta directamente, y 0x000F1060 cuando arranca de disquete.     */

bool_t hayDOSBox ( void )
{
    address_t * ptrVIDos = (address_t *)(nVIntMSDOS*4) ;

    byte_t * VIDos = (((dword_t)(ptrVIDos->segment)) << 4) + (ptrVIDos->offset) ;

    if ((((dword_t)VIDos) == 0x000F14A0) ||
        (((dword_t)VIDos) == 0x000F1060))	
        return (TRUE) ;          
    if (!hayMSDOS()) return(FALSE) ;
    return (strcmp((char *)valorMSDOS("DOSBOX"), "DOSBOX") == 0) ;

}

int argcMSDOS ( void )
{
    word_t tamCmdLine ;
    pointer_t ptrCmdLine ;
    int argc = 1 ;
    int i = 0 ;

    tamCmdLine = (word_t)*((pointer_t)((segPSP() << 4) + 0x0080)) ;
    ptrCmdLine = (pointer_t)((segPSP() << 4) + 0x0081) ;

    while (i < tamCmdLine)
    {
        while ((i < tamCmdLine) && (ptrCmdLine[i] == ' ')) i++ ;
        if ((i < tamCmdLine) && (ptrCmdLine[i] != ' ')) argc++ ;
        while ((i < tamCmdLine) && (ptrCmdLine[i] != ' ')) i++ ;
    }
    return(argc) ;
}

bool_t getArgvMSDOS ( word_t n, char * str )
{

    word_t segEntorno ;
    pointer_t ptrEntorno ;
    word_t tamCmdLine ;
    pointer_t ptrCmdLine ;
    int i, j, k ;

    segEntorno = *((word_t *)((segPSP() << 4) + 0x002c)) ;
    ptrEntorno = (pointer_t)((segEntorno << 4) + 0x0000) ;
    tamCmdLine = (word_t)*(pointer_t)((segPSP() << 4) + 0x0080) ;
    ptrCmdLine = (pointer_t)((segPSP() << 4) + 0x0081) ;

    if (n == 0)
    {
        i = 0 ;
        do
        {
            while (ptrEntorno[i] != (char)0) i++ ;
        }
        while (ptrEntorno[++i] != (char)0) ;
        i++ ;
        i = i + 2 ;
        j = 0 ;
        while ((str[j++] = ptrEntorno[i++]) != (char)0) ;
        return(TRUE) ;
    }
    else
    {
        i = 0 ;                       /* indice del caracter en ptrCmdLine */
        j = 0 ;                             /* índice del argumento actual */
        while ((i < tamCmdLine) && (j < n))
        {
            while ((i < tamCmdLine) && (ptrCmdLine[i] == ' ')) i++ ;
            if ((i < tamCmdLine) && (ptrCmdLine[i] != ' ')) j++ ;
            if (j == n)
            {
                k = 0 ;
                while ((i < tamCmdLine) && (ptrCmdLine[i] != ' '))
                    str[k++] = ptrCmdLine[i++] ;
                str[k] = (char)0 ;
                return(TRUE) ;
            }
            else
            {
                i++ ;
                while ((i < tamCmdLine) && (ptrCmdLine[i] != ' ')) i++ ;
            }
        }
        return(FALSE) ;
    }
}

bool_t hayWindowsNT ( void )
{
    word_t version ;
    word_t menor, mayor ;
    if (!hayMSDOS()) return(FALSE) ;
    version = versionMSDOS() ;
    mayor = version & 0x00FF ;
    menor = version >> 8 ;
    /*
      printStr(" mayor = ") ;
      printDec(mayor, 1) ;
      printStr(" menor = ") ;
      printDec(menor, 1) ;
      printStr(" %OS% = ") ;
      printStrFar(valorMSDOS("OS")) ;
    */
    if ((mayor == 7) && (menor == 10))
        return(FALSE) ;                                      /* Windows 98 */
    if ((mayor == 5) && (menor == 0))
    {
        /* return(valorMSDOS("OS")[0] == 'W') ; */
        return (((char *)valorMSDOS("OS"), "Windows_NT") == 0) ;
    }
    return(FALSE) ;
}

int openDOS ( pointer_t nombre, byte_t modo )
{
    int df ;
    asm
    (
        "   push ds              \n"
        "   mov eax,[bp+8]       \n" /* nombre */
        "   ror eax,4            \n"
        "   mov ds,ax            \n"
        "   shr eax,28           \n"
        "   mov dx,ax            \n"
        "   mov al,[bp+12]       \n" /* modo */   /* 0 = R, 1 = W, 2 = RW, ... */
        "   mov ah,3dh           \n"
        "   int 21h              \n"
        "   pop ds               \n"
        "   jc openFailed        \n"
        "   movzx eax,ax         \n"
        "   mov [bp-4],eax       \n" /* df */
        "   jmp fin              \n"
        " openFailed:            \n"
        "   mov [bp-4],dword(-1) \n" /* df (-1) */
        " fin:                   \n"
    ) ;
    return(df) ;
}

/* para evitar INT 24h Critical Error Handling */

int extendedOpenDOS ( pointer_t   nombre,                    /* MSDOS 4.0+ */
                      word_t      modo,                /* 0df00000ishr0r/w */
                      word_t      atr,                         /* 00advshr */
                      word_t    * accion,              /* 0x01, 0x11, 0x12 */ /* O_CREAT, O_TRUNC, ... */
                      word_t    * error )
{
    int df ;
    word_t fci = *accion ;             /* fci = function control indicator */
    word_t res ;
    word_t flagC = 0 ;

    asm
    (
        "   push ds              \n"
        "   mov eax,[bp+8]       \n" /* nombre */
        "   ror eax,4            \n"
        "   mov ds,ax            \n"
        "   shr eax,28           \n"
        "   mov si,ax            \n"
        "   mov bx,[bp+12]       \n" /* modo */   /* 0 = R, 1 = W, 2 = RW, ... */
        "   mov cx,[bp+16]       \n" /* atr */
        "   mov dx,[bp-8]        \n" /* fci */
        "   mov al,00h           \n"
        "   mov ah,6ch           \n"
        "   int 21h              \n"
        "   pop ds               \n"
        "   mov [bp-12],ax       \n" /* res */
        "   mov [bp-8],cx        \n" /* fci */
        "   jnc openOk           \n"
        "   mov [bp-16],word(1)  \n" /* flagC */
        " openOk:                \n"
    ) ;
    if (flagC)
    {
        *error = res ;
        return(-1) ;
    }
    else
    {
        *accion = fci ;
        *error = 0 ;
        df = (int)res ;
        return(df) ;
    }

}

int closeDOS ( int df )
{
    int err ;
    asm
    (
        "   mov ebx,[bp+8]       \n" /* df */
        "   mov ah,3eh           \n"
        "   int 21h              \n"
        "   movzx eax,ax         \n"
        "   mov [bp-4],eax       \n" /* err */
        "   jnc closeOk          \n"
        "   mov [bp-4],dword(-1) \n" /* err */
        " closeOk:               \n"
    ) ;
    return(err) ;
}

int commitFileDOS ( int df )
{
    int err ;
    asm
    (
        "   mov ebx,[bp+8]       \n" /* df */
        "   mov ah,68h           \n"
        "   int 21h              \n"
        "   movzx eax,ax         \n"
        "   mov [bp-4],eax       \n" /* err */
        "   jnc commitOk         \n"
        "   mov [bp-4],dword(-1) \n" /* err */
        " commitOk:              \n"
    ) ;
    return(err) ;
}

int createDOS ( pointer_t nombre, word_t atributo )        /* FA_ARCH, ... */
{
    int df ;
    asm
    (
        "   push ds              \n"
        "   mov eax,[bp+8]       \n" /* nombre */
        "   ror eax,4            \n"
        "   mov ds,ax            \n"
        "   shr eax,28           \n"
        "   mov dx,ax            \n"
        "   mov cx,[bp+12]       \n" /* atributo */            /* 00AD0SHR */
        "   mov ah,3ch           \n"
        "   int 21h              \n"
        "   pop ds               \n"
        "   movzx eax,ax         \n"
        "   mov [bp-4],eax       \n" /* df */
        "   jnc createOk         \n"
        "   mov [bp-4],dword(-1) \n" /* df */
        " createOk:              \n"
    ) ;
    return(df) ;
}

#define opDOS(codOp) { \
  int operados ; /* leidos/escritos */\
  asm \
( \
    "   mov ebx,[bp+8]       \n" /* df */      \
    "   mov eax,[bp+12]      \n" /* buf */     \
    "   ror eax,4            \n"               \
    "   mov es,ax            \n"               \
    "   shr eax,12           \n"               \
    "   mov dx,ax            \n"               \
    "   mov ecx,[bp+16]      \n" /* n */       \
    "   mov ah," #codOp "    \n"               \
    "   push ds              \n"               \
    "   push es              \n"               \
    "   pop ds               \n"               \
    "   int 21h              \n"               \
    "   pop ds               \n"               \
    "   movzx eax,ax         \n"               \
    "   mov [bp-4],eax       \n" /* operados */\
    "   jnc .opOk            \n"               \
    "   mov [bp-4],dword(-1) \n" /* operados */\
    " .opOk:                 \n"               \
) ; \
  return(operados) ; \
}

int readDOS ( int df, char * buf, int n )
{
    opDOS(3fh) ;
}

int writeDOS ( int df, char * buf, int n )
{
    opDOS(40h) ;
}

int lseekDOS ( int df, dword_t * pos, int whence )
{
    word_t posL = *((word_t *)pos) ;
    word_t posH = (word_t)((*((dword_t *)pos)) >> 16) ;
    byte_t whenceByte = whence ;
    asm
    (
        "   mov ebx,[bp+8]       \n" /* df */
        "   mov dx,[bp-4]        \n" /* posL */
        "   mov cx,[bp-8]        \n" /* posH */
        "   mov al,[bp-12]       \n" /* whenceByte */
        "   mov ah,42h           \n"
        "   int 21h              \n"
        "   jnc lseekOk          \n"
        "   mov eax,dword(-1)    \n" /* return(-1) */
        "   db  0x66             \n"
        "   leave                \n"
        "   retf                 \n"
        " lseekOk:               \n"
        "   mov [bp-4],ax        \n" /* posL */
        "   mov [bp-8],dx        \n" /* posH */
    ) ;
    *pos = (((dword_t)posH) << 16) + (dword_t)posL ;
    return(0) ;
}

int getdiskDOS ( void )
{
    asm(
        "   mov ah, 19h          \n"
        "   int 21h              \n"
        "   movzx eax,al         \n" /* drive */
    ) ;
}

int setdiskDOS ( int drive )
{
    asm
    (
        "   mov dl,[bp+8]        \n" /* drive */
        "   mov ah,0eh           \n"
        "   int 21h              \n"
        "   movzx eax,al         \n" /* return(ndrives) ; (LASTDRIVE) */
    ) ;
}

int getcurdirDOS ( int drive, char * directorio )
{
    int res = 0 ;
    drive++ ;
    asm
    (
        "   push ds              \n"
        "   mov dl,[bp+8]        \n" /* drive */
        "   mov eax,[bp+12]      \n" /* directorio */
        "   ror eax,4            \n"
        "   mov ds,ax            \n"
        "   shr eax,28           \n"
        "   mov si,ax            \n"
        "   mov ah,47h           \n"
        "   int 21h              \n"
        "   pop ds               \n"
        "   jnc getcurdirOk      \n"
        "   mov [bp-4],dword(-1) \n" /* res */
        " getcurdirOk:           \n"
    ) ;
    return(res) ;
}

int chdirDOS ( const char * path )
{
    int res = 0 ;
    asm
    (
        "   push ds              \n"
        "   mov eax,[bp+8]       \n" /* path */
        "   ror eax,4            \n"
        "   mov ds,ax            \n"
        "   shr eax,28           \n"
        "   mov dx,ax            \n"
        "   mov ah,3bh           \n"
        "   int 21h              \n"
        "   pop ds               \n"
        "   jnc chdirOk          \n"
        "   mov [bp-4],dword(-1) \n" /* res */
        " chdirOk:               \n"
    ) ;
    return(res) ;
}

int findfirstDOS ( const char * pathname,
                   struct ffblk * ffblk,
                   int attrib )
{
    int res = 0 ;
    asm
    (
        "   push ds              \n"

        "   mov ah,2fh           \n"                 /* get (and save) DTA */
        "   int 21h              \n"
        "   push es              \n"
        "   push bx              \n"

        "   mov eax,[bp+12]      \n" /* ffblk */
        "   ror eax,4            \n"
        "   mov ds,ax            \n"
        "   shr eax,28           \n"
        "   mov dx,ax            \n"
        "   mov ah,1ah           \n"
        "   int 21h              \n"      /* Set the disk transfer address */

        "   mov cx,[bp+16]       \n" /* attrib */
        "   mov eax,[bp+8]       \n" /* pathname */
        "   ror eax,4            \n"
        "   mov ds,ax            \n"
        "   shr eax,28           \n"
        "   mov dx,ax            \n"
        "   mov ah,4eh           \n"
        "   int 21h              \n"           /* Find first matching file */

        "   pushf                \n"           /* save state of carry flag */
        "   pop cx               \n"
        "   xchg ax,bx           \n"                   /* save return code */

        "   mov ah,1ah           \n"                        /* restore DTA */
        "   pop dx               \n"
        "   pop ds               \n"
        "   int 21h              \n"

        "   push cx              \n"
        "   popf                 \n"
        "   pop ds               \n"

        "   jnc findfirstOk      \n"
        "   mov [bp-4],dword(-1) \n"
        " findfirstOk:           \n"
    ) ;
    return(res) ;
}

int findnextDOS ( struct ffblk * ffblk )
{
    int res = 0 ;
    asm
    (
        "   push ds              \n"

        "   mov ah,2fh           \n"                 /* get (and save) DTA */
        "   int 21h              \n"
        "   push es              \n"
        "   push bx              \n"

        "   mov eax,[bp+12]      \n" /* ffblk */
        "   ror eax,4            \n"
        "   mov ds,ax            \n"
        "   shr eax,28           \n"
        "   mov dx,ax            \n"
        "   mov ah,1ah           \n"
        "   int 21h              \n"      /* Set the disk transfer address */

        "   mov ah,4fh           \n"
        "   int 21h              \n"            /* Find next matching file */

        "   pushf                \n"           /* save state of carry flag */
        "   pop cx               \n"
        "   xchg ax,bx           \n"                   /* save return code */

        "   mov ah,1ah           \n"                        /* restore DTA */
        "   pop dx               \n"
        "   pop ds               \n"
        "   int 21h              \n"

        "   push cx              \n"
        "   popf                 \n"
        "   pop ds               \n"

        "   jnc findnextOk       \n"
        "   mov [bp-4],dword(-1) \n"
        " findnextOk:            \n"
    ) ;
    return(res) ;
}
