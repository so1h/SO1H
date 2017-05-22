/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                blockpr.c                                */
/* ----------------------------------------------------------------------- */
/*             Operaciones relacionadas con el bloqueo de threads          */
/* ----------------------------------------------------------------------- */

#include <so1h.h\ajustsp.h>
#include <so1h.h\main.h>
#include <so1h.h\ajustes.h>              /* SS_Kernel, establecerDS_SO1H_1 */
#include <so1h.h\blockpr.h>

#include <so1hpub.h\bios_0.h>

#include <so1h.h\procs.h>

// antes estaba declarada SS_Kernel en AJUSTES.C o AJUST_0.C
word_t SS_Kernel ;                   /* segmento de pila del kernel   SO1H */

word_t SS_Thread ;             /* pila thread que hace una llamada al s.o. */

word_t SP_Thread ;                           /* o que ha sido interrumpido */

word_t SS_Tarea ;                   /* pila tarea que ha sido interrumpida */

word_t SP_Tarea ;

int nivelActivacionSO1H = 0 ;                   /* 0 => thread, 1 => tarea */

int nVIntActual ;              /* numero de v.i. de la interrupcion actual */

bool_t enHalt = FALSE ;           /* se interrumpio en el hlt de sigThread */

bool_t activarAlEpilogo1 = FALSE ;

//           /* activar al epilogo (de nivel 1) el primer thread preparado */

bool_t hayTic = FALSE ;         /* no se acaba de producir un tic de reloj */

//  /* hayTic se utiliza en activarProceso para determinar mejor la rodaja */

dword_t reg_DL ( void ) ;
asm
(
    " section .text    \n"
    "   global _reg_DL \n"
    " _reg_DL:         \n"
    "   movzx eax,dl   \n"
    "   retf           \n"
) ;

//              /* en setKernelStack el orden de los parametros es critico */

void setKernelStack ( word_t reg_SS, word_t reg_SP )
{

    SS_Thread = reg_SS ;                   /* salvamos la pila del proceso */
    SP_Thread = reg_SP ;
    reg_SS = SS_Kernel ;                /* establecemos la pila del Kernel */
    reg_SP = SP0_Kernel ;

    asm                    /* usamos cx, bx y eax para no modificar dl (nVInt) */
    (
        "   mov cx,[bp+8]  \n" /* reg_SS */
        "   mov bx,[bp+12] \n" /* reg_SP */
        "   mov eax,[bp+4] \n" /* dir. ret. */
        "   mov ss,cx      \n"
        "   mov sp,bx      \n"
        "   push eax       \n"
        "   retf           \n"
    ) ;

}

void setThreadStack ( word_t SS_Thread, word_t SP_Thread )
{
    asm                                    /* establecemos la pila del proceso */
    (
        "   mov cx,[bp+8]  \n" /* reg_SS */
        "   mov bx,[bp+12] \n" /* reg_SP */
        "   mov eax,[bp+4] \n" /* dir. ret. */
        "   mov ss,cx      \n"
        "   mov sp,bx      \n"
        "   add eax,3      \n"   /* para no ejecutar la retirada de parametros */
        "   push eax       \n"
        "   retf           \n"
    ) ;
}

void prepararDesbloqueadosUrgentes ( void )
{
    while (c2cPFR[TUrgentes].numElem > 0)
        apilarPC2c(
            desapilarPC2c((ptrC2c_t)&c2cPFR[TUrgentes]),
            (ptrC2c_t)&c2cPFR[TPreparados]
        ) ;

//  while (c2cPFR[TUrgentes].numElem > 0)
//      encolarPC2c(
//          desencolarPC2c((ptrC2c_t)&c2cPFR[TUrgentes]),
//          (ptrC2c_t)&c2cPFR[TPreparados]
//      ) ;
}

///* un thread puede terminar durante una llamada o durante una rti        */
///* o ser expulsado */

void buscarNuevoThreadActual ( void )                       /* nivel 1 o 2 */
{
//                         /* esta funcion puede ser llamada por un driver */

    if (nivelActivacionSO1H == 1)
    {
        asm("mov sp,SP0_Kernel") ;                    /* reset pila Kernel */

        if (ccbAlEpilogo->num > 0) atenderCcb(ccbAlEpilogo) ;
        prepararDesbloqueadosUrgentes() ;
        activarThread(sigThread()) ;
    }
    else activarAlEpilogo1 = TRUE ;

}

///* en principio solo se bloquean procesos desde las llamadas al sistema  */
///* pero vamos a contemplar bloqueos incluso desde una rti                */

void bloquearThreadActual ( rindx_t rindx )               /* nivel 1 (o 2) */
{
    tindx_t tindx = indThreadActual ;

//                         /* esta funcion puede ser llamada por un driver */

    descThread[tindx].trama = tramaThread ;
    descThread[tindx].estado = bloqueado ;
    descThread[tindx].esperandoPor = rindx ;

    buscarNuevoThreadActual() ;

}
