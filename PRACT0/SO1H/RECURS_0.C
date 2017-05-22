/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                recurs_0.c                               */
/* ----------------------------------------------------------------------- */
/*                                                                         */
/* ----------------------------------------------------------------------- */

#include <so1h.h\procs.h>                                 /* c2cPFR, e2PFR */
/* DFLibres, DFOcupados, DRLibres, DROcupados */
#include <so1h.h\recurs.h>
#include <so1hpub.h\tipos.h>                              /* TRUE, tindx_t */
#include <so1hpub.h\const.h>                        /* dfsMax, maxRecursos */
#include <so1hpub.h\ptrc2c.h>            /* ptrC2c_t, inicPC2c, apilarPC2c */
#include <so1hpub.h\ccb.h>                                        /* ccb_t */
#include <so1hpub.h\def_proc.h>                                  /* rLibre */
#include <so1hpub.h\fcntl.h>                                  /* O_DENYALL */

void inicRecursos ( void )
{

    int rindx, dfs, i ;

    /* inicializamos las pilas de recursos/descriptores libres/ocupados */

    inicPC2c(&c2cPFR[DFLibres],   &e2PFR.e2DescFichero.Libres,   dfsMax,          TRUE) ;
    inicPC2c(&c2cPFR[DFOcupados], &e2PFR.e2DescFichero.Ocupados, dfsMax + 1,      TRUE) ;
    inicPC2c(&c2cPFR[DRLibres],   &e2PFR.e2DescRecurso.Libres,   maxRecursos,     TRUE) ;
    inicPC2c(&c2cPFR[DROcupados], &e2PFR.e2DescRecurso.Ocupados, maxRecursos + 1, TRUE) ;

    /* inicializamos todos los descriptores de recursos */

    for ( rindx = maxRecursos-1 ; rindx >= 0 ; rindx-- )
    {
        apilarPC2c(rindx, (ptrC2c_t)&c2cPFR[DRLibres]) ;
        descRecurso[rindx].nombre[0] = (char)0 ;
        descRecurso[rindx].tipo = rLibre ;
        descRecurso[rindx].ccb = (ccb_t)0x00000000 ;
        descRecurso[rindx].tindx = (tindx_t)(-1) ;
        inicPC2c(&descRecurso[rindx].c2cFichRec, &e2PFR.e2FichRec, dfsMax + rindx, TRUE) ;
        descRecurso[rindx].numVI = 0 ;
        for ( i = 0 ; i < 2 ; i++ )
        {
            descRecurso[rindx].nVInt[i] = 0x00 ;
            descRecurso[rindx].irq[i] = 0x00 ;
            descRecurso[rindx].isr[i] = (isr_t)0x00000000 ;
        }
        descRecurso[rindx].open      = (open_t)      0x00000000 ;
        descRecurso[rindx].release   = (release_t)   0x00000000 ;
        descRecurso[rindx].read      = (read_t)      0x00000000 ;
        descRecurso[rindx].aio_read  = (aio_read_t)  0x00000000 ;
        descRecurso[rindx].write     = (write_t)     0x00000000 ;
        descRecurso[rindx].aio_write = (aio_write_t) 0x00000000 ;
        descRecurso[rindx].lseek     = (lseek_t)     0x00000000 ;
        descRecurso[rindx].fcntl     = (fcntl_t)     0x00000000 ;
        descRecurso[rindx].ioctl     = (ioctl_t)     0x00000000 ;

        descRecurso[rindx].eliminar  = (eliminar_t)  0x00000000 ;

    }

    /* inicializamos todos los descriptores de fichero del sistema */

    for ( dfs = 0 ; dfs < dfsMax ; dfs++ )
    {
        descFichero[dfs].nombre[0] = (char)0 ;
        descFichero[dfs].tipo = flibre ;
        descFichero[dfs].rindx = -1 ;
        descFichero[dfs].menor = 0 ;
        descFichero[dfs].contAp_L = 0 ;
        descFichero[dfs].contAp_E = 0 ;
        descFichero[dfs].shareMode = O_DENYALL ;
    }

    /* inicializamos la pila de descriptores de fichero del sist. libres */

    for ( dfs = dfsMax-1 ; dfs >= 0 ; dfs-- )
        apilarPC2c(dfs, (ptrC2c_t)&c2cPFR[DFLibres]) ;

}

