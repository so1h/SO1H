/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                   gm.c                                  */
/* ----------------------------------------------------------------------- */
/*   Gestor de Memoria: Particiones variables (lista de bloques libres)    */
/* ----------------------------------------------------------------------- */


#include "..\so1hpub.h\bios_0.h"                                /* memBIOS */
#include "..\so1hpub.h\printvid.h"                        /* printStrVideo */
#include "..\so1hpub.h\msdos.h"
//#include "..\so1hpub.h\strings.h"
#include "..\so1h.h\ajustsp.h"                                 /* SP0_SO1H */
#include "..\so1h.h\ajustes.h"                    /* CS_SO1H, .. , SS_SO1H */
//#include "..\so1h.h\recursos.h"
#include "..\so1h.h\procesos.h"                             /* descProceso */
#include "..\so1h.h\gm.h"

rindx_t rec_gm ;

dfs_t dfs_gm ;

ptrBloque_t listaLibres ;            /* lista de bloques libres (cabecera) */

word_t tamBloqueMax ;          /* mayor bloque de memoria libre disponible */

word_t k_buscarBloque ( word_t tam )
{

    ptrBloque_t ptrBloqueIz, ptrBloque, ptrBloqueDe ;
    ptrBloque_t ptrBloqueNuevo ;
    word_t segmento, segmentoNuevo ;
    word_t tamOriginal ;

    if (tam > tamBloqueMax) return(0x0000) ;

    ptrBloque = (ptrBloque_t)MK_P_SEG(listaLibres->sig) ;
    while (ptrBloque->tam < tam)
        ptrBloque = (ptrBloque_t)MK_P_SEG(ptrBloque->sig) ;

    segmento = SEG(ptrBloque) ;

//printStrVideo("\n k_buscarBloque: segmento = ") ;
//printHexVideo(segmento, 4) ;
//leerTeclaBIOS() ;

    tamOriginal = ptrBloque->tam ;

    ptrBloqueIz = (ptrBloque_t)MK_P_SEG(ptrBloque->ant) ;
    ptrBloqueDe = (ptrBloque_t)MK_P_SEG(ptrBloque->sig) ;

    if (tamOriginal > tam)                         /* ptrBloque->tam > tam */
    {
        segmentoNuevo = SEG(ptrBloque) + tam ;
        ptrBloqueNuevo = (ptrBloque_t)MK_P_SEG(segmentoNuevo) ;
        ptrBloqueNuevo->tam = tamOriginal - tam ;
        ptrBloqueNuevo->sig = ptrBloque->sig ;
        ptrBloqueNuevo->ant = ptrBloque->ant ;
        ptrBloqueIz->sig = SEG(ptrBloqueNuevo) ;
        ptrBloqueDe->ant = SEG(ptrBloqueNuevo) ;
        ptrBloque->tam = tam ;
    }
    else                                             /* tamOriginal == tam */
    {
        ptrBloqueIz->sig = ptrBloque->sig ;
        ptrBloqueDe->ant = ptrBloque->ant ;
    }

    if (tamOriginal == tamBloqueMax)            /* actualizar tamBloqueMax */
    {
        tamBloqueMax = 0 ;
        ptrBloque = (ptrBloque_t)MK_P_SEG(listaLibres->sig) ;
        while (ptrBloque != listaLibres)
        {
            if (ptrBloque->tam > tamBloqueMax)
                tamBloqueMax = ptrBloque->tam ;
            ptrBloque = (ptrBloque_t)MK_P_SEG(ptrBloque->sig) ;
        }
    }

//  printStrVideo(" tamBloqueMax = ") ;
//  printHexVideo(tamBloqueMax, 4) ;
//  printStrVideo(" Ps") ;

    return(segmento) ;

}

bool_t k_devolverBloque ( word_t segmento, word_t tam )
{

    ptrBloque_t ptrBloqueIz, ptrBloque, ptrBloqueDe ;

    ptrBloqueDe = (ptrBloque_t)MK_P_SEG(listaLibres->sig) ;
    while (SEG(ptrBloqueDe) < segmento)
        ptrBloqueDe = (ptrBloque_t)MK_P_SEG(ptrBloqueDe->sig) ;

    if (SEG(ptrBloqueDe) < segmento+tam)
        return(FALSE) ;

    ptrBloque = (ptrBloque_t)MK_P_SEG(segmento) ;

    ptrBloque->tam = tam ;
    ptrBloque->sig = SEG(ptrBloqueDe) ;
    ptrBloque->ant = ptrBloqueDe->ant ;

    ptrBloqueIz = (ptrBloque_t)MK_P_SEG(ptrBloqueDe->ant) ;

    ptrBloqueDe->ant = segmento ;

    ptrBloqueIz->sig = segmento ;

    if (((segmento+tam) == SEG(ptrBloqueDe)) &&
            (ptrBloqueDe != listaLibres))
    {
        ptrBloque->tam += ptrBloqueDe->tam ;
        ptrBloque->sig = ptrBloqueDe->sig ;
        ptrBloqueDe = (ptrBloque_t)MK_P_SEG(ptrBloqueDe->sig) ;
        ptrBloqueDe->ant = segmento ;
    }

    if (((SEG(ptrBloqueIz)+ptrBloqueIz->tam) == segmento) &&
            (ptrBloqueIz != listaLibres))
    {
        ptrBloqueIz->tam += ptrBloque->tam ;
        ptrBloqueIz->sig = ptrBloque->sig ;
        ptrBloqueDe = (ptrBloque_t)MK_P_SEG(ptrBloque->sig) ;
        ptrBloqueDe->ant = SEG(ptrBloqueIz) ;
        ptrBloque = ptrBloqueIz ;
    }

    if (ptrBloque->tam > tamBloqueMax)          /* actualizar tamBloqueMax */
        tamBloqueMax = ptrBloque->tam ;

//  printStrVideo("\n k_devolverBloque: tamBloqueMax = ") ;
//  printHexVideo(tamBloqueMax, 4) ;
//  printStrVideo(" Ps") ;

    return(TRUE) ;

}

#if (0)

static int openGM ( int dfs, modoAp_t modo )
{
    return(0) ;
}

static int releaseGM ( int dfs )
{
    return(0) ;
}

static int readGM ( int dfs, pointer_t dir, word_t nbytes )
{
    word_t far * tam = (word_t far *)dir ;
    word_t far * segmento = (word_t far *)dir ;
    if (nbytes == 2)
    {
        *segmento = k_buscarBloque(*tam) ;
        return(nbytes) ;
    }
    return(-1) ;
}

static int aio_readGM ( int dfs, pointer_t dir, word_t nbytes )
{
    word_t far * ptrWord = (word_t far *)dir ;
    word_t segmento ;
    word_t tam ;
    switch (nbytes)
    {
    case 2 :
        *ptrWord = tamBloqueMax ;
        return(nbytes) ;
    case 4 :
        segmento = ptrWord[0] ;
        tam = ptrWord[1] ;
        if (k_devolverBloque(segmento, tam))
            return(nbytes) ;
    }
    return(-1) ;
}

static int writeGM ( int dfs, pointer_t dir, word_t nbytes )
{
    return(0) ;
}

static int aio_writeGM ( int dfs, pointer_t dir, word_t nbytes )
{
    return(writeGM(dfs, dir, nbytes)) ;
}

static long int lseekGM ( int dfs, long int pos, word_t whence )
{
    return((long int)-1) ;
}

static int fcntlGM ( int dfs, word_t cmd, word_t arg )
{
    return(0) ;
}

static int ioctlGM ( int dfs, word_t request, word_t arg )
{
    return(0) ;
}

#define maxCbGM 0

static descCcb_t descCcbGM = { 0, 0, 0, maxCbGM, NULL } ;

#endif

/* inicGM inicializa la memoria disponible tras la carga de SO1H, y asigna */
/* memoria al proceso 0 (codigo y datos) y a su tread 0 (pila) que se      */
/* corresponde con SO1H, todo ello sin modificar esas zonas de memoria.    */

void inicGM ( void )                             /* 1 paragrafo = 16 bytes */
{

#if (0)
    descRecurso_t dR ;
#endif
    word_t primerSegLibre ;                 /* tras asignar memoria a SO1H */
    word_t sigSeg ;        /* primer segmento inaccesible según MSDOS/BIOS */
    word_t memDisponible ;             /* memoria disponible en paragrafos */
    ptrBloque_t ptrBloque ;

    primerSegLibre = SS_Kernel + ((SP0_Kernel + 15)/16) ;

    printStrVideo(" primerSegLibre = ") ;
    printHexVideo(primerSegLibre, 4) ;

//  /* inicGM descuenta de la memoria libre la memoria ocupada por SO1H,   */
//  /* ya que si no, las escrituras en los nodos de la lista de bloques    */
//  /* libres podrían modificar los primeros bytes de codigo de SO1.       */

//  /* sigSeg = segmento siguiente al ultimo disponible por SO1H           */

    switch (modoSO1())
    {
        case modoSO1_Bin :                               /* so1.bin (boot) */
            sigSeg = memBIOS()*(1024/16) ;
            break ;
        case modoSO1_Exe :                                       /* hayDOS */
            sigSeg = *((word_t *)MK_P(segPSP(), 0x0002)) ;
            break ;
        default :
            printStrVideo("\n inicGM() ERROR: modoSO1() = ") ;
            printHexVideo(modoSO1(), 4) ;
            leerTeclaBIOS() ;
    }

    memDisponible = sigSeg - primerSegLibre ;                  /* sin SO1H */

    printStrVideo(" sigSeg = ") ;
    printHexVideo(sigSeg, 4) ;

    printStrVideo(" memDisponible = ") ;
    printHexVideo(memDisponible, 4) ;

//  /* unico bloque libre inicial */

    ptrBloque = (ptrBloque_t)MK_P_SEG(primerSegLibre) ;
    ptrBloque->tam = memDisponible-1 ;   /* descontamos el bloque cabecera */
    ptrBloque->sig = SEG(ptrBloque) + ptrBloque->tam ;
    ptrBloque->ant = ptrBloque->sig ;

//  /* bloque cabecera de la lista doblemente enlazada */

    listaLibres = (ptrBloque_t)MK_P_SEG(ptrBloque->sig) ;
    listaLibres->tam = 1 ;                                     /* 16 Bytes */
    listaLibres->sig = SEG(ptrBloque) ;
    listaLibres->ant = listaLibres->sig ;

    tamBloqueMax = ptrBloque->tam ;

//  printStrVideo(" \n inicGM: ptrBloque = ") ;
//  printPtrVideo((pointer_t)ptrBloque) ;

#if (0)

    dR.tipo = rGM ;
    copiarStr("GM", dR.nombre) ;
    dR.ccb = (ccb_t)&descCcbGM ;
    dR.pindx = indProcesoActual ;
    dR.numVI = 0 ;

    dR.open      = (open_t)pointer(_CS, (word_t)openGM) ;
    dR.release   = (release_t)pointer(_CS, (word_t)releaseGM) ;
    dR.read      = (read_t)pointer(_CS, (word_t)readGM) ;
    dR.aio_read  = (aio_read_t)pointer(_CS, (word_t)aio_readGM) ;
    dR.write     = (write_t)pointer(_CS, (word_t)writeGM) ;
    dR.aio_write = (aio_write_t)pointer(_CS, (word_t)aio_writeGM) ;
    dR.lseek     = (lseek_t)pointer(_CS, (word_t)lseekGM) ;
    dR.fcntl     = (fcntl_t)pointer(_CS, (word_t)fcntlGM) ;
    dR.ioctl     = (ioctl_t)pointer(_CS, (word_t)ioctlGM) ;

    rec_gm = crearRec(&dR) ;

    dfs_gm = crearFich("GM", rec_gm, 0, fedCaracteres) ;

#endif

}

void mostrarListaLibres ( void )
{

    ptrBloque_t ptrBloque ;
    int i, j ;

    ptrBloque = (ptrBloque_t)MK_P_SEG(listaLibres->sig) ;

    printStrVideo(
        "\n"
        "  ind   dir    tam    sig    ant    aux            relleno          \n"
        " ----- ------ ------ ------ ------ ------ ------------------------- \n") ;

    i = 0 ;

    do
    {
        printDecVideo(i, 4) ;
        printStrVideo("    ") ;
        printHexVideo(SEG(ptrBloque), 4) ;
        printStrVideo("   ") ;
        printHexVideo(ptrBloque->tam, 4) ;
        printStrVideo("   ") ;
        printHexVideo(ptrBloque->sig, 4) ;
        printStrVideo("   ") ;
        printHexVideo(ptrBloque->ant, 4) ;
        printStrVideo("   ") ;
        printHexVideo(ptrBloque->aux, 4) ;
        printStrVideo("   ") ;
        for ( j = 0 ; j < 8 ; j++ )
        {
            printHexVideo(ptrBloque->relleno[j], 2) ;
            printCarVideo(' ') ;
        }
        printStrVideo("\n") ;

        ptrBloque = (ptrBloque_t)MK_P_SEG(ptrBloque->sig) ;
        i++ ;
    }
    while (ptrBloque != (ptrBloque_t)MK_P_SEG(listaLibres->sig)) ;

}
