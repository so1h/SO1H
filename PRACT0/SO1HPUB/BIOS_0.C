/* ----------------------------------------------------------------------- */
/*                                bios_0.c                                 */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

#include "..\so1hpub.h\tipos.h"
#include "..\so1hpub.h\carsctrl.h"
#include "..\so1hpub.h\caracter.h"                                  /* dig */
#include "..\so1hpub.h\printgen.h"
#include "..\so1hpub.h\biosdata.h"
#include "..\so1hpub.h\bios_0.h"
#include "..\so1hpub.h\pantalla.h"                            /* atrNormal */

/* ----------------------------------------------------------------------- */
/*                            tipo de ordenador                            */
/* ----------------------------------------------------------------------- */
/* tipo de ordenador */

byte_t tipoOrdenador ( void )
{
    byte_t * ptr = 0xFFFFE ;
    return(*ptr) ;
}

/* reinicio */

#if (FALSE)
void rebootBIOS ( void )
{
    asm(" int 19h \n") ;
}
#endif

void rebootLegacy ( void )
{
    asm
    (
        " push 0F000h \n"           /* equivalente a call F000:FFF0 reboot */
        " push 0FFF0h \n"
//      " retf        \n"
    ) ;
}

/* Teclado (int 16h) */

byte_t tipoTeclado ( void )
{
//  byte_t res ;
    asm
    (
        "  mov ah,09h    \n"
        "  int 16h       \n"
//      "  mov [bp-4],ah \n"
    ) ;
//  return(res) ;
}

#if (FALSE)
	
byte_t leerTeclaBIOS ( void )                  /* bloqueante en bucle BIOS */
{
//  char car ;
    asm
    (
        "  mov ah,00h    \n"          /* Llamada al BIOS: Leer del teclado */
        "  int 16h       \n"
//      "  mov [bp-4],ah \n"               /* ah = codigo scan introducido */
    ) ;
//  return(car) ;
}

byte_t leerTeclaExtBIOS ( void )          /* bloqueante en bucle BIOS [AT] */
{
//  char car ;
    asm
    (
        "  mov ah,10h    \n"  /* Llamada al BIOS: Leer teclado extendido 101 teclas*/
        "  int 16h       \n"
//      "  mov [bp-4],ah \n"               /* ah = codigo scan introducido */
    ) ;
//  return(car) ;
}

char leerCarBIOS ( void )                      /* bloqueante en bucle BIOS */
{
//  char car ;
    asm
    (
        "  mov ah,00h    \n"          /* Llamada al BIOS: Leer del teclado */
        "  int 16h       \n"
//      "  mov [bp-4],al \n"            /* al = caracter ascii introducido */
    ) ;
//  return(car) ;   /* al == 0 => a continuacion: caracter ascii extendido */
}

#endif

/* leerTeclaBIOS parece que deja permitidas las interrupciones             */

word_t leerTeclaBIOS ( void )                  /* bloqueante en bucle BIOS */
{
//  word_t w ;
    asm
    (
        "  mov ah,00h    \n"          /* Llamada al BIOS: Leer del teclado */
        "  int 16h       \n"
//      "  mov [bp-4],ax \n"  /* ah = codigo scan introducido al = caracter ASCII */
    ) ;
//  return(w) ;
}

word_t leerTeclaExtBIOS ( void )               /* bloqueante en bucle BIOS */
{
//  word_t w ;
    asm
    (
        "  mov ah,10h    \n"  /* Llamada al BIOS: Leer teclado extendido 101 teclas*/
        "  int 16h       \n"
//      "  mov [bp-4],ax \n"   /* ah = codigo scan introducido al = caracter ASCII */
    ) ;
//  return(w) ;
}

word_t teclaListaBIOS ( void )              /* no bloqueante en bucle BIOS */
{
//  word_t w ;
    asm
    (
        "  mov ah,01h    \n"
        "  int 16h       \n"
        "  jne hayTecla  \n"
    ) ;
    return(0) ;
    asm
    (
        " hayTecla:      \n"
//      "  mov [bp-4],ax \n"
    ) ;
//  return(w) ;                           /* al = caracter, ah = scan code */
}

/* Teclado (Bios Data Area)  (no alteran/permiten el flag de interrupcion) */

word_t leerTeclaListaBDA ( void )
{
    word_t w = 0x0000 ;
    word_t start = ptrBiosArea->KBD_start ;
    word_t end1 = ptrBiosArea->KBD_end1 ;
    word_t out = ptrBiosArea->KBD_bufhead ;
    word_t in = ptrBiosArea->KBD_buftail ;
    int extended = (ptrBiosArea->KBD_status >> 4) & 0x0001 ;
    char ascii_code ;
    byte_t scan_code ;
    if (out != in)
    {
        /* w = *((word_t far *)MK_FP(0x040, out)) ; */
        w = ptrBiosArea->KBD_buffer[(out-start)/2] ;
        ascii_code = (char)w ;
        scan_code = (byte_t)(w >> 8) ;
        if (((ascii_code == (char)0xF0) && (scan_code != 0)) ||    /* 0xF0 liberacion tecla teclado 84 teclas */
                ((ascii_code == (char)0xE0) && !extended))             /* 0xE0 teclado de 101 teclas */
            w = w & 0xFF00 ;
        out = out + 2 ;
        if (out >= end1) out = start ;
        ptrBiosArea->KBD_bufhead = out ;
    }
    return(w) ;
}

word_t teclaListaBDA ( void )
{
    word_t w = 0x0000 ;
    word_t start = ptrBiosArea->KBD_start ;
    word_t out = ptrBiosArea->KBD_bufhead ;
    word_t in = ptrBiosArea->KBD_buftail ;
    if (out != in)
        /* w = *((word_t far *)pointer(0x040, out)) ; */
        w = ptrBiosArea->KBD_buffer[(out-start)/2] ;
    return(w) ;
}

/* Timer */

void esperarTicsBIOS ( word_t tics )
{
    dword_t contTics0 ;
    contTics0 = ptrBiosArea->BIOS_timer ;
    while (ptrBiosArea->BIOS_timer <= (contTics0 + tics)) { } ;
}

/* Pantalla (int 10h) */

int printCarRawBIOS ( char car, byte_t pag )
{
    asm
    (
        "  mov al,[bp+8] \n"
        "  mov bh,[bp+12]\n"
        "  mov bl,07h    \n"
        "  mov cx,1      \n"
        "  mov ah,09h    \n" /* Llamada al BIOS: Escribir caracter por pantalla */
//      "  mov ah,0ah    \n" /* Llamada al BIOS: Escribir caracter por pantalla */
        "  int 10h       \n"
    ) ;
}

int printCarBIOS ( char car )
{
    asm
    (
        "  mov al,[bp+8] \n"
        "  mov ah,0eh    \n" /* Llamada al BIOS: Escribir caracter por pantalla */
        "  int 10h       \n"
    ) ;
}

int printCarPagBIOS ( char car, byte_t pag )
{
    byte_t columna = ptrBiosArea->CURSOR_pos[pag][0] ;
    byte_t fila = ptrBiosArea->CURSOR_pos[pag][1] ;
    byte_t columnaMax = (ptrBiosArea->VIDEO_width) - 1 ;
    byte_t filaMax = ptrBiosArea->VIDEO_lastrow ;
    switch (car)
    {
    case BS :
        if (fila > 0)
            goToXYPag(fila, --columna, pag) ;
        break ;
    case CR :
        goToXYPag(fila, 0, pag) ;
        break ;
    case LF :
        if (fila < filaMax)
            goToXYPag(++fila, columna, pag) ;
        else
        {
            scrollPagBDA(1, pag) ;              /* scrollPagBIOS(1, pag) ; */
            goToXYPag(filaMax, columna, pag) ;
            break ;
        }
        break ;
    default :
        if (' ' <= car)
        {
            printCarRawBIOS(car, pag) ;
            if (columna < columnaMax)
                goToXYPag(fila, ++columna, pag) ;
            else if (fila < filaMax)
                goToXYPag(++fila, 0, pag) ;
            else
            {
                scrollPagBDA(1, pag) ;          /* scrollPagBIOS(1, pag) ; */
                goToXYPag(filaMax, 0, pag) ;
            }
        }
    }
}

int printCarAtrPagBIOS ( char car, byte_t atr, byte_t pag )
{
    asm
    (
        "  mov al,[bp+8]  \n"
        "  mov bh,[bp+12] \n"
        "  mov bl,[bp+16] \n"
        "  mov ah,0eh     \n"   /* Llamada al BIOS: Escribir caracter por pantalla */
        "  int 10h        \n"
    ) ;
}

int printLnBIOS ()
{
    printCarBIOS(CR) ;
    printCarBIOS(LF) ;
}

int printStrBIOS ( char * str )
{
    printGenStr(str, printCarBIOS) ;
}

int printStrHastaBIOS ( char * str, word_t n, bool_t lleno )
{
    printGenStrHasta(str, n, lleno, printCarBIOS) ;
}

int printDecBIOS ( word_t num, word_t l )
{
    printGenDec(num, l, printCarBIOS) ;
}

int printLDecBIOS ( dword_t num, word_t l )
{
    printGenLDec(num, l, printCarBIOS) ;
}

int printIntBIOS ( short int num, word_t l )
{
    printGenInt(num, l, printCarBIOS) ;
}

int printLIntBIOS ( int num, word_t l )
{
    printGenLInt(num, l, printCarBIOS) ;
}

int printHexBIOS ( word_t num, word_t l )
{
    printGenHex(num, l, printCarBIOS) ;
}

int printLHexBIOS ( dword_t num, word_t l )
{
    printGenLHex(num, l, printCarBIOS) ;
}

int printBinBIOS ( word_t num, word_t l ) 
{
    printGenBin(num, l, printCarBIOS ) ;
}

int printLBinBIOS ( dword_t num, word_t l ) 
{
    printGenLBin( num, l, printCarBIOS ) ;
}

int printPtrBIOS ( pointer_t ptr )
{
    printGenPtr(ptr, printCarBIOS) ;
}

int printWordBIOS ( word_t w )
{
    printCarBIOS(dig[((lh_t *)&w)->hi >> 4]) ;
    printCarBIOS(dig[((lh_t *)&w)->hi & 0x0F]) ;
    printCarBIOS(dig[((lh_t *)&w)->lo >> 4]) ;
    printCarBIOS(dig[((lh_t *)&w)->lo & 0x0F]) ;
}

int printCadBIOS ( char * cad )
{
    word_t i = 0 ;
    while (cad[i] != (char)0)
    {
        if (cad[i] == '\n') printCarBIOS('\r') ;
        printCarBIOS(cad[i]) ;
        i++ ;
    }
}

byte_t modoDeVideo ( void )
{
    byte_t res ;
    asm
    (
        "  mov ah,0fh    \n"
        "  int 10h       \n"
        "  mov [bp-4],al \n" /* ah = ancho de pantalla, al = modo de video */
    ) ;
    return(res) ;                                    /* bh = pagina activa */
}

void establecerModoDeVideo ( byte_t modo )
{
    asm
    (
        "  mov ah,00h    \n"
        "  mov al,[bp+8] \n"
        "  int 10h       \n"
    ) ;
}

byte_t paginaActiva ( void )
{
    byte_t res ;
    asm
    (
        "  mov ah,0fh    \n"
        "  int 10h       \n"
        "  mov [bp-4],bh \n"
    ) ;
    return(res) ;
}

void establecerPaginaActiva ( byte_t pag )
{
    asm
    (
        "  mov ah,05h    \n"
        "  mov al,[bp+8] \n"
        "  int 10h       \n"
    ) ;
}

typedef struct
{
    byte_t bModes1 ;
    byte_t bModes2 ;
    byte_t bModes3 ;
    byte_t reserved_1 [4] ;
    byte_t bScanLnsFlgs ;
    byte_t bFontBlks ;
    byte_t bMaxFonts ;
    byte_t rMiscFlags1 ;
    byte_t rMiscFlags2 ;
    byte_t reserved_2 [2] ;
    byte_t rSaveCaps ;
    byte_t reserved_3 ;
} VgaStaticFnalityRec_t ;                                  /* TECHHelp 6.0 */

typedef struct
{
    byte_t F ;
    byte_t C ;
} posCursor_t ;

typedef struct
{
    VgaStaticFnalityRec_t * pfrFnality ;
    byte_t      bCurMode ;
    word_t      bCrtClms ;
    word_t      wCrtBufLen ;
    word_t      pCrtBPgStart ;
    posCursor_t posCursor [8] ;
    word_t      wCrsrType ;
    byte_t      bCurPg ;
    word_t      wCrtcPort ;
    byte_t      bModeSetReg ;
    byte_t      bClrSetReg ;
    byte_t      bCrtRows ;
    word_t      bCrtPoints ;
    byte_t      bCurDcc ;
    byte_t      bAltDcc ;
    word_t      wMaxClrs ;
    byte_t      bMaxPgs ;
    byte_t      bScanLnsCode ;
    byte_t      bFont1 ;
    byte_t      bFont2 ;
    byte_t      rMiscFlags ;
    byte_t      reserved_1 [3] ;
    byte_t      bVidMemCode ;
    byte_t      rSaveStatus ;
    byte_t      reserved_2 [13] ;
} VgaDinamicStateReg_t ;                                   /* TECHHelp 6.0 */

byte_t numPagsVideo ( void )
{
    VgaDinamicStateReg_t * pVDSR ;
    byte_t res ;
    asm
    (
        "  mov ah,1bh    \n"
        "  mov bx,0000h  \n"
        "  les di,[bp-4] \n" /* pVDSR */
        "  int 10h       \n"
        "  mov [bp-8],bh \n"
    ) ;
    /*
    printStrBIOS("\n pVDSR->bMaxPgs = ") ;
    printDecBIOS(pVDSR->bMaxPgs, 1) ;
    printStrBIOS("\n res = ") ;
    printHexBIOS(res, 1) ;
    printStrBIOS(" ") ;
      if (res == 0x1b) return(pVDSR->bMaxPgs) ;
      else return(1) ;
    */
    return(pVDSR->bMaxPgs) ;
}

void scrollPagBDA ( byte_t numLineas, byte_t pag )
{
    byte_t * ptr ;
    int i, j ;
    int totalLineas ;
    word_t segMemVideo ;
    if (ptrBiosArea->VIDEO_mode == 7) segMemVideo = 0xB000 ;
    else segMemVideo = 0xB800 ;
    ptr = pointer(segMemVideo, pag*ptrBiosArea->VIDEO_pagesize) ;
    if (numLineas == 0)
    {
        for ( i = 0 ; i < ptrBiosArea->VIDEO_pagesize ; i = i + 2 )
        {
            ptr[i] = ' ' ;
            ptr[i+1] = 0x07 ;
        }
        ptrBiosArea->CURSOR_pos[pag][0] = 0 ;
        ptrBiosArea->CURSOR_pos[pag][1] = 0 ;
    }
    else
    {
        totalLineas = ptrBiosArea->VIDEO_pagesize/(2*ptrBiosArea->VIDEO_width) ;
        for ( i = 0 ; i < totalLineas-numLineas ; i++ )
        {
            for ( j = 0 ; j < 2*ptrBiosArea->VIDEO_width ; j++ )
            {
                ptr[(i*2*ptrBiosArea->VIDEO_width)+j] = ptr[((i+numLineas)*2*ptrBiosArea->VIDEO_width)+j] ;
                ptr[(i*2*ptrBiosArea->VIDEO_width)+j + 1] = ptr[((i+numLineas)*2*ptrBiosArea->VIDEO_width)+j + 1] ;
            }
        }
        for ( i = totalLineas-numLineas ; i < totalLineas ; i++ )
        {
            for ( j = 0 ; j < 2*ptrBiosArea->VIDEO_width ; j = j + 2 )
            {
                ptr[(i*2*ptrBiosArea->VIDEO_width)+j] = ' ' ;
                ptr[(i*2*ptrBiosArea->VIDEO_width)+j + 1] = 0x07 ;
            }
        }
        if (ptrBiosArea->CURSOR_pos[pag][1] >= numLineas)
            ptrBiosArea->CURSOR_pos[pag][1] = ptrBiosArea->CURSOR_pos[pag][1] - numLineas ;
        else
            ptrBiosArea->CURSOR_pos[pag][1] = 0 ;
    }
}

void scrollPagBIOS ( byte_t numLineas, byte_t pag )
{
    byte_t oldPagActiva = ptrBiosArea->VIDEO_pagActiva ;
    if (pag != oldPagActiva)
    {
        establecerPaginaActiva(pag) ;
        scrollBIOS(numLineas) ;
        establecerPaginaActiva(oldPagActiva) ;
    }
    else
        scrollBIOS(numLineas) ;
}

void scrollBIOS ( byte_t numLineas )
{
    byte_t Col1 = (ptrBiosArea->VIDEO_width) - 1 ;
    byte_t Fila1 = ptrBiosArea->VIDEO_lastrow ;
    asm
    (
        "  mov ah,06h       \n"
        "  mov cx,0000h     \n"                    /* dh = Fila1, dl = Col1 */
        "  mov dl,[bp-4]    \n"
        "  mov dh,[bp-8]    \n"
        "  mov al,[bp+8]    \n"                           /* al = numLineas */
        "  mov bh,0x07      \n" /* atrNormal */
        "  int 10h          \n"
    ) ;
}

void goToXYPag ( byte_t fila, byte_t columna, byte_t pag )
{
    asm
    (
        "  mov ah,02h     \n"          /* establecer la posicion del cursor */
        "  mov bh,[bp+16] \n" /* pag     */              /* pagina de video */
        "  mov dh,[bp+8]  \n" /* fila    */
        "  mov dl,[bp+12] \n" /* columna */
        "  int 10h        \n"
    ) ;
}

void goToXYBIOS ( byte_t fila, byte_t columna )
{
    byte_t numPagActiva = ptrBiosArea->VIDEO_pagActiva ;
    asm
    (
        "  mov ah,02h     \n"         /* establecer la posicion del cursor */
        "  mov bh,[bp-4]  \n" /* numPagActiva */        /* pagina de video */
        "  mov dh,[bp+8]  \n" /* fila */
        "  mov dl,[bp+12] \n" /* columna */
        "  int 10h        \n"
    ) ;
}

void setCursorBIOS ( byte_t linea1, byte_t linea2 )
{
    asm
    (
        "  mov ah,01h     \n"/* establecer el tama¤o y la forma del cursor */
//      "  mov al,modo    \n"                      /* modo = modo de video */
        "  mov ch,[bp+8]  \n" /* linea1 */
        "  mov cl,[bp+12] \n" /* linea2 */
        "  int 10h        \n"
    ) ;
}

void ocultaCursorBIOS ( void )
{
    setCursorBIOS(0x20, 0x00) ;
}

void readXYPagBIOS ( byte_t * fila,
                     byte_t * columna,
                     byte_t * linea1,
                     byte_t * linea2,
                     byte_t pag )
{
    byte_t regDH ;
    byte_t regDL ;
    byte_t regCH ;
    byte_t regCL ;
    asm
    (
        "  mov ah,03h     \n"    /* leer la posicion del cursor y su forma */
        "  mov bh,[bp+24] \n" /* pag */                 /* pagina de video */
        "  int 10h        \n"
        "  mov [bp- 4],dh \n"
        "  mov [bp- 8],dl \n"
        "  mov [bp-12],ch \n"
        "  mov [bp-16],cl \n"
    ) ;
    *fila    = regDH ;
    *columna = regDL ;
    *linea1  = regCH ;
    *linea2  = regCL ;
}

void readXYBIOS ( byte_t * fila,
                  byte_t * columna,
                  byte_t * linea1,
                  byte_t * linea2 )
{
    byte_t regDH ;
    byte_t regDL ;
    byte_t regCH ;
    byte_t regCL ;
    byte_t numPagActiva = ptrBiosArea->VIDEO_pagActiva ;
    asm
    (
        "  mov ah,03h     \n"    /* leer la posicion del cursor y su forma */
        "  mov bh,[bp-20] \n" /* numPagActiva */        /* pagina de video */
        "  int 10h        \n"
        "  mov [bp- 4],dh \n"
        "  mov [bp- 8],dl \n"
        "  mov [bp-12],ch \n"
        "  mov [bp-16],cl \n"
    ) ;
    *fila    = regDH ;
    *columna = regDL ;
    *linea1  = regCH ;
    *linea2  = regCL ;
}

/* Memoria (int 12h) */
/* tambien en BIOS AREA 0000:0413 */
word_t memBIOS ( void )    /* memoria reportada por el BIOS (en Kilobytes) */
{
    word_t numKBytes ;                          /* 1 Kilobyte = 1024 bytes */
    asm
    (
        "  int 12h        \n"                       /* BIOS: memoria total */
        "  jc errMemBIOS  \n"
        "  test ax,ax     \n"
        "  jz errMemBIOS  \n"
        "  mov [bp-8],ax  \n" /* numKBytes */
        "  jmp finMemBIOS \n"
        " errMemBIOS:     \n"
    ) ;
    printStrBIOS("\n error BIOS int 12h ") ;
    asm
    (
        "  cli             \n"
        "  hlt             \n"
        " finMemBIOS:      \n"
    ) ;
    return(numKBytes) ;
}

/* Puerto serie COM1 (int 14h) */

// /* Las siguientes funciones permiten enviar y recibir caracteres por el */
// /* puerto COM1. Hay que tener en cuenta que el BIOS permite las         */
// /* interrupciones durante la ejecucion de esas llamadas, por lo que no  */
// /* deben ser utilizadas desde el sistema operativo propiamente dicho.   */

void enviarBIOS ( char car )
{
    asm
    (
        "  mov al,[bp+8] \n" /* car */
        "  mov ah,01h    \n"
        "  mov dx,0000h  \n"                          /* puerto serie COM1 */
        "  int 14h       \n"
    ) ;
}

char recibirBIOS ( void )
{
    char car ;
    asm
    (
        "   mov ah,02h    \n"
        "   mov dx,0000h  \n"                         /* puerto serie COM1 */
        "   int 14h       \n"
        "   mov [bp-8],al \n" /* car */
    ) ;
    return(car) ;
}

/* APM */

bool_t hayApmBIOS ( word_t * version )
{
    bool_t res ;
    word_t v ;
    asm
    (
        "   mov ax,5300h \n"
        "   mov bx,0000h \n"
        "   int 15h      \n"
        "   jnc hayApm   \n"
    ) ;
    res = TRUE ;
    asm
    (
        "   jmp comun    \n"
        " hayApm:        \n"
    ) ;
    res = TRUE ;
    asm
    (
        " comun:           \n"
        "   mov [bp-12],ax \n" /* v */
    ) ;
    *version = v ;
    return(res) ;
}

int connectApmBIOS ( void )
{
    byte_t res ;
    asm
    (
        "   mov ax,5301h       \n"
        "   mov bx,0000h       \n"
        "   int 15h            \n"
        "   jc apmConnectError \n"
    ) ;
    return(0) ;
    asm
    (
        " apmConnectError:     \n"
        "   mov [bp-8],ah      \n" /* res */
    ) ;
    return(res) ;
}

int disconnectApmBIOS ( void )
{
    byte_t res ;
    asm
    (
        "   mov ax,5304h          \n"
        "   mov bx,0000h          \n"
        "   int 15h               \n"
        "   jc apmDisconnectError \n"
    ) ;
    return(0) ;
    asm
    (
        " apmDisconnectError:     \n"
        "   mov [bp-8],ah         \n" /* res */
    ) ;
    return(res) ;
}

void cpuIdleBIOS ( void )
{
    asm
    (
        "   mov ax,5305h \n"
        "   int 15h      \n"
    ) ;
}

void cpuBusyBIOS ( void )
{
    asm
    (
        "   mov ax,5306h \n"
        "   int 15h      \n"
    ) ;
}

