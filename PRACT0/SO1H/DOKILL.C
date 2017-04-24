/* ----------------------------------------------------------------------- */
/*                                 dokill.c                                */
/* ----------------------------------------------------------------------- */
/*    codigo comun de la llamadas kill y de cerrar ventana con el raton    */
/* ----------------------------------------------------------------------- */

#include "..\so1hpub.h\tipos.h"
#include "..\so1hpub.h\ptrc2c.h"
#include "..\so1h.h\ajustes.h"
#include "..\so1h.h\procs.h"
#include "..\so1h.h\blockpr.h"                  /* buscarNuevoThreadActual */

int doKill ( pindx_t pindx )                   /* el proceso pindx termina */
{
    static pindx_t ppindx ;
    static int err = 0 ;

    ppindx = descProceso[pindx].ppindx ;
    if (descProceso[pindx].noStatus)
    {
        eliminarPC2c(pindx, (ptrC2c_t)&descProceso[ppindx].c2cHijos) ;
        matarProcIndx(pindx) ;                      /* cierra la vent. ... */
    }
    else if ((descThread[ppindx].estado == bloqueado) &&
             (descThread[ppindx].esperandoPor == rec_hijo) &&
             ((descProceso[ppindx].hpindx == pindx) ||
              (descProceso[ppindx].hpindx == -1)))
    {
        descThread[ppindx].trama->AX = tramaThread->BX ;         /* status */
        descThread[ppindx].trama->BX = descProceso[pindx].pid ; /* pidDifunto */
        descThread[ppindx].estado = preparado ;
        encolarPC2c(ppindx, (ptrC2c_t)&c2cPFR[TUrgentes]) ;
        eliminarPC2c(pindx, (ptrC2c_t)&descProceso[ppindx].c2cHijos) ;
        matarProcIndx(pindx) ;            /* matarProcIndx cierra la vent. */
/*
        if (pindx == indProcesoDeSuperficie)
            focalizarWin(descProceso[ppindx].win) ;
*/
    }
    else
    {                                                      /* queda zombie */
        descThread[pindx].estado = bloqueado ;
        descThread[pindx].esperandoPor = rec_zombie ;
        descThread[pindx].status = tramaThread->BX ;
        terminarProcIndx(pindx) ;                   /* cierra la vent. ... */
    }

	if (pindx == indThreadActual)
		buscarNuevoThreadActual() ;

	return(err) ;

}
