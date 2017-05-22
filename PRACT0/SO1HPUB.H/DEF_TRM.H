/*
  Copyright (c) 2017, Pedro Pablo Lopez Rodriguez & Julio Lozano Del Pozo
  2-clause BSD license.
*/

/* ----------------------------------------------------------------------- */
/*                                 def_trm.h                               */
/* ----------------------------------------------------------------------- */
/*  Deficiones relativas a la trama de pila de un proceso no en ejecucion  */
/* ----------------------------------------------------------------------- */

#ifndef DEF_TRM_H
#define DEF_TRM_H

#include <so1hpub.h\tipos.h>

#pragma pack(push, 1)

typedef struct
{
    word_t DS, ES ;                                 /* apilados por software */
    dword_t EDI, ESI, EBP, ESP ;                                   /* pushad */
    dword_t EBX, EDX, ECX, EAX ;                                   /* pushad */
    word_t IP, CS, Flags ;                                            /* int */
} tramaDWords_t ;

typedef struct
{
    word_t DS, ES ;                                 /* apilados por software */
    word_t DI, rDI, SI, rSI, BP, rBP, SP, rSP ;                    /* pushad */
    word_t BX, rBX, DX, rDX, CX, rCX, AX, rAX ;                    /* pushad */
    word_t IP, CS, Flags ;                                            /* int */
} tramaWords_t ;

typedef struct
{
    word_t DS, ES ;                                 /* apilados por software */
    word_t DI, rDI, SI, rSI, BP, rBP, SP, rSP ;                    /* pushad */
    byte_t BL, BH, rB[2], DL, DH, rD[2],
           CL, CH, rC[2], AL, AH, rA[2] ;                          /* pushad */
    word_t IP, CS, Flags ;                                            /* int */
} tramaBytes_t ;

typedef union
{
    tramaDWords_t td ;
    tramaWords_t tw ;
    tramaBytes_t tb ;
} trama_t ;

#pragma pack(pop)

#define EDI td.EDI       /* para simplificar las referencias trama->td.EDI */
#define ESI td.ESI                                  /* quedando trama->EDI */
#define EBP td.EBP
#define ESP td.ESP
#define EBX td.EBX
#define EDX td.EDX
#define ECX td.ECX
#define EAX td.EAX

#define DS tw.DS          /* para simplificar las referencias trama->tw.DS */
#define ES tw.ES                                     /* quedando trama->DS */
#define DI tw.DI
#define SI tw.SI
#define BP tw.BP
#define SP tw.SP
#define BX tw.BX
#define DX tw.DX
#define CX tw.CX
#define AX tw.AX
#define IP tw.IP
#define CS tw.CS
#define Flags tw.Flags

#define BL tb.BL          /* para simplificar las referencias trama->tb.BL */
#define BH tb.BH                                     /* quedando trama->BL */
#define DL tb.DL
#define DH tb.DH
#define CL tb.CL
#define CH tb.CH
#define AL tb.AL
#define AH tb.AH

#endif /* DEF_TRM */

