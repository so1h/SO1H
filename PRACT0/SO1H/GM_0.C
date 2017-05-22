/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                  gm_0.c                                 */
/* ----------------------------------------------------------------------- */
/*   Gestor de Memoria: Particiones variables (lista de bloques libres)    */
/* ----------------------------------------------------------------------- */


#include <so1hpub.h\bios_0.h>                                   /* memBIOS */
#include <so1hpub.h\printvid.h>                           /* printStrVideo */
#include <so1hpub.h\msdos.h>
//#include <so1hpub.h\strings.h>
#include <so1h.h\ajustsp.h>                                    /* SP0_SO1H */
#include <so1h.h\ajustes.h>            /* SS_Kernel, CS_SO1H, .. , SS_SO1H */
//#include <so1h.h\recursos.h>
#include <so1h.h\procs.h>                                   /* descProceso */
#include <so1h.h\gm.h>

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
//  copiarStr("GM", dR.nombre) ;
    strcpy(dR.nombre, "GM") ;
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

