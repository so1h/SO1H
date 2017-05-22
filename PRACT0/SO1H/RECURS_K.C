/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                recurs_k.c                               */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

#include <so1h.h\ints.h>                                        /* recVInt */
#include <so1h.h\procs.h>                                 /* c2cPFR, e2PFR */
//                           /* DFLibres, DFOcupados, DRLibres, DROcupados */
#include <so1h.h\recurs.h>

#include <so1hpub.h\tipos.h>                              /* TRUE, tindx_t */
#include <so1hpub.h\const.h>                        /* dfsMax, maxRecursos */
#include <so1hpub.h\ptrc2c.h>            /* ptrC2c_t, inicPC2c, apilarPC2c */
#include <so1hpub.h\ccb.h>                                        /* ccb_t */
#include <so1hpub.h\def_proc.h>                                  /* rLibre */
#include <so1hpub.h\fcntl.h>                                  /* O_DENYALL */

asm                                                      /* implementacion */
(
    " section .text           \n"
    "   global _link_recurs_k \n"
    " _link_recurs_k:         \n"
) ;

rindx_t crearRec ( descRecurso_t * dR )
{

    rindx_t rindx ;
    byte_t nVInt ;
    byte_t irq ;
    isr_t isr ;
    int i ;

    if ((dR->tipo <= rLibre) || (dR->tipo > rOtro)) return(-1) ;

    if (dR->numVI > 2) return(-2) ;                    /* 2 VI como máximo */

    rindx = c2cPFR[DROcupados].primero ;               /* ver si existe ya */
    while (rindx != c2cPFR[DROcupados].cabecera)
    {
//		if (iguales(descRecurso[rindx].nombre, dR->nombre)) return(-3) ;
        if (strcmp(descRecurso[rindx].nombre, dR->nombre) == 0) return(-3) ;
        rindx = c2cPFR[DROcupados].e[rindx].sig ;
    }

    if (c2cPFR[DRLibres].numElem == 0) return(-4) ; /* no hay desc. libres */

    for ( i = 0 ; i < dR->numVI ; i++ )
        if (recVInt[dR->nVInt[i]] >= 0) return(-5) ;      /* nVInt ocupado */

    rindx = desapilarPC2c((ptrC2c_t)&c2cPFR[DRLibres]) ;
    apilarPC2c(rindx, (ptrC2c_t)&c2cPFR[DROcupados]) ;

    descRecurso[rindx].tipo = dR->tipo ;
//	copiarStr(dR->nombre, descRecurso[rindx].nombre) ;
    strcpy(descRecurso[rindx].nombre, dR->nombre) ;
    descRecurso[rindx].ccb = dR->ccb ;
    descRecurso[rindx].tindx = dR->tindx ;
    inicPC2c(&descRecurso[rindx].c2cFichRec, &e2PFR.e2FichRec, dfsMax + rindx, TRUE) ;
    descRecurso[rindx].numVI = dR->numVI ;

    for ( i = 0 ; i < dR->numVI ; i++ )
    {
        nVInt = dR->nVInt[i] ;
        irq = dR->irq[i] ;
        isr = dR->isr[i] ;
        descRecurso[rindx].nVInt[i] = nVInt ;
        descRecurso[rindx].irq[i] = irq ;
        descRecurso[rindx].isr[i] = isr ;
        if (irq < 16)
            redirigirIntHardware(irq, isr) ;
        else
            redirigirInt(nVInt, isr) ;
        recVInt[nVInt] = rindx ;
    }

//	memcpy(&descRecurso[rindx], &dR, sizeof(descRecurso_t)) ;

    descRecurso[rindx].open =      dR->open ;
    descRecurso[rindx].release =   dR->release ;
    descRecurso[rindx].read =      dR->read ;
    descRecurso[rindx].aio_read =  dR->aio_read ;
    descRecurso[rindx].write =     dR->write ;
    descRecurso[rindx].aio_write = dR->aio_write ;
    descRecurso[rindx].lseek =     dR->lseek ;
    descRecurso[rindx].fcntl =     dR->fcntl ;
    descRecurso[rindx].ioctl =     dR->ioctl ;

    descRecurso[rindx].eliminar =  dR->eliminar ;


    return(rindx) ;

}

dfs_t crearFich ( const char *  nombre,
                  rindx_t       rindx,
                  word_t        menor,
                  tipoFichero_t tipo )
{

    dfs_t dfs ;

    if (tipo == flibre) return(-1) ;

    if ((rindx < 0) && (rindx < maxRecursos)) return(-2) ;

    dfs = c2cPFR[DFOcupados].primero ;                 /* ver si existe ya */
    while (dfs != c2cPFR[DFOcupados].cabecera)
    {
//		if (iguales(descFichero[dfs].nombre, nombre)) return(-3) ;
        if (strcmp(descFichero[dfs].nombre, nombre) == 0) return(-3) ;
        dfs = c2cPFR[DFOcupados].e[dfs].sig ;
    }

    if (c2cPFR[DFLibres].numElem == 0) return(-4) ; /* no hay desc. libres */
    dfs = desapilarPC2c((ptrC2c_t)&c2cPFR[DFLibres]) ;
    apilarPC2c(dfs, (ptrC2c_t)&c2cPFR[DFOcupados]) ;
    apilarPC2c(dfs, (ptrC2c_t)&descRecurso[rindx].c2cFichRec) ;
//	copiarStr(nombre, descFichero[dfs].nombre) ;
    strcpy(descFichero[dfs].nombre, nombre) ;
    descFichero[dfs].rindx = rindx ;
    descFichero[dfs].menor = menor ;
    descFichero[dfs].tipo = tipo ;

    return(dfs) ;

}

int destruirFich ( dfs_t dfs )
{
    rindx_t rindx ;
    dfs_t i ;
    if ((dfs < 0) || (dfs >= dfsMax)) return(-1) ;
    rindx = descFichero[dfs].rindx ;
    i = descRecurso[rindx].c2cFichRec.primero ;
    while (i != descRecurso[rindx].c2cFichRec.cabecera)
    {
        if (i == dfs) break ;
        i = descRecurso[rindx].c2cFichRec.e[i].sig ;
    }
    if (i != dfs) return(-1) ;                                /* no existe */
    if ((descFichero[dfs].contAp_L > 0) || (descFichero[dfs].contAp_E > 0))
        return(-2) ;                                             /* en uso */
    eliminarPC2c(dfs, (ptrC2c_t)&descRecurso[rindx].c2cFichRec) ;
    eliminarPC2c(dfs, (ptrC2c_t)&c2cPFR[DFOcupados]) ;
    apilarPC2c(dfs, (ptrC2c_t)&c2cPFR[DFLibres]) ;
    descFichero[dfs].nombre[0] = (char)0 ;
    descFichero[dfs].tipo = flibre ;
    descFichero[dfs].rindx = -1 ;
    descFichero[dfs].menor = 0 ;
    descFichero[dfs].contAp_L = 0 ;
    descFichero[dfs].contAp_E = 0 ;
    return(0) ;
}

int destruirRec ( const char * nombre )
{
    rindx_t r ;
    rindx_t rindx ;
    pindx_t pindx ;
    dfs_t dfs, dfsSig ;
    byte_t nVInt ;
    int j ;
    word_t segmento ;

    r = c2cPFR[DROcupados].primero ;                   /* ver si existe ya */
    while (r != c2cPFR[DROcupados].cabecera)
    {
//		if (iguales(descRecurso[r].nombre, nombre)) {
        if (strcmp(descRecurso[r].nombre, nombre) == 0)
        {
            rindx = r ;                                  /* recurso encontrado */
            break ;
        }
        r = c2cPFR[DROcupados].e[r].sig ;
    }
    if (r == c2cPFR[DROcupados].cabecera) return(-1) ;        /* no existe */

///* eliminar todos los callbacks puestos por el recurso en otros recursos */

    segmento = descProceso[descRecurso[rindx].tindx].CSProc ;
    r = c2cPFR[DROcupados].primero ;
    while (r != c2cPFR[DROcupados].cabecera)
    {
        if (descRecurso[r].ccb != ccbNulo)           /* eliminar callbacks */
            eliminarSegCcb(segmento, descRecurso[r].ccb) ;
        r = c2cPFR[DROcupados].e[r].sig ;
    }

///* mirar si el recurso esta en uso (hay procesos con ficheros abiertos)  */

    dfs = descRecurso[rindx].c2cFichRec.primero ;
    while (dfs != descRecurso[rindx].c2cFichRec.cabecera)
    {
        dfsSig = descRecurso[rindx].c2cFichRec.e[dfs].sig ;
        if ((descFichero[dfs].contAp_L > 0) ||
                (descFichero[dfs].contAp_E > 0))
            return(-2) ;                                         /* en uso */
        else if (destruirFich(dfs) < 0)
            return(-3) ;                       /* no se puede destruir dfs */
        dfs = dfsSig ;
    }
    if (descRecurso[rindx].c2cFichRec.numElem > 0) return(-4) ;

    descRecurso[rindx].nombre[0] = (char)0 ;
    descRecurso[rindx].tipo = rLibre ;
    vaciarCcb(descRecurso[rindx].ccb) ;
    pindx = descRecurso[rindx].tindx ;
    descThread[pindx].estado = preparado ;      /* desbloqueamos el driver */
    encolarPC2c(pindx, (ptrC2c_t)&c2cPFR[TPreparados]) ;

//  encolarPC2c(pindx, (ptrC2c_t)&c2cPFR[PUrgentes]) ;        /* prioridad */
//  activarAlEpilogo1 = TRUE ;

    descRecurso[rindx].tindx = (pindx_t)(-1) ;

    for ( j = 0 ; j < descRecurso[rindx].numVI ; j++ )
    {
        nVInt = descRecurso[rindx].nVInt[j] ;
        recVInt[nVInt] = -1 ;
        restablecerInt(nVInt) ;
        descRecurso[rindx].nVInt[j] = 0 ;
        descRecurso[rindx].isr[j] = (isr_t)0x00000000 ;
    }

    descRecurso[rindx].numVI = 0 ;

    descRecurso[rindx].open =      (open_t)0x00000000 ;
    descRecurso[rindx].release =   (release_t)0x00000000 ;
    descRecurso[rindx].read =      (read_t)0x00000000 ;
    descRecurso[rindx].aio_read =  (aio_read_t)0x00000000 ;
    descRecurso[rindx].write =     (write_t)0x00000000 ;
    descRecurso[rindx].aio_write = (aio_write_t)0x00000000 ;
    descRecurso[rindx].lseek =     (lseek_t)0x00000000 ;
    descRecurso[rindx].fcntl =     (fcntl_t)0x00000000 ;
    descRecurso[rindx].ioctl =     (ioctl_t)0x00000000 ;

    descRecurso[rindx].eliminar =  (ioctl_t)0x00000000 ;

    eliminarPC2c(rindx, (ptrC2c_t)&c2cPFR[DROcupados]) ;
    apilarPC2c(rindx, (ptrC2c_t)&c2cPFR[DRLibres]) ;

    return(0) ;

}

