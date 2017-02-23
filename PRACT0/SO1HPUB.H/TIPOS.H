/***************************************************************************/
/*                                 tipos.h                                 */
/***************************************************************************/
/*                                                                         */
/***************************************************************************/

#ifndef TIPOS_H
#define TIPOS_H

#include <inttypes.h>                         /* uint8_t, uint16_t, uint32 */

typedef enum { FALSE, TRUE } bool_t ;

#define byte_t uint8_t                                           /* byte_t */

#define word_t uint16_t                                          /* word_t */

#define dword_t uint32_t                                        /* dword_t */

typedef byte_t * pointer_t ;

#define interrupt __interrupt

typedef void interrupt (* rti_t) ( void ) ;      /* rutina de trat. de int */

typedef rti_t * ptrTVI_t ;            /* tabla de vectores de interrupcion */

typedef enum
{
    modoSO1_Bin,             /* SO1 se ejecuta como so1.bin (boot)         */
    modoSO1_Exe,             /* SO1 se ejecuta como so1.exe (MSDOS/NTVDM)  */
    modoSO1_Bs               /* SO1 se carga en 0000:7C00   (SYSLINUX)     *//* 2015-06-21 */
} modoSO1_t ;

typedef struct
{
    byte_t lo ;
    byte_t hi ;
} lh_t ;

typedef struct
{
    word_t offset ;
    word_t segment ;
} address_t ;                                  /* direccion 8086 (32 bits) */

typedef union
{
    pointer_t ptr ;
    address_t adr ;
} uPtrAdr_t ;                                   /* union pointer y address */

typedef int pid_t ;                            /* identificador de proceso */

typedef int uid_t ;                            /* identificador de usuario */

typedef int gid_t ;                              /* identificador de grupo */

typedef int pindx_t ;         /* indice de proceso en la tabla de procesos */

#define NIL (pindx_t)(-1)      /* fin de una lista de procesos (campo sig) */

typedef int df_t ;        /* indice en la tabla de descriptores de fichero */

typedef int dfs_t ;      /* indice en la tabla de descriptores del sistema */

typedef int rindx_t ;         /* indice de recurso en la tabla de recursos */

#define MK_P_SEG(seg) (((dword_t)seg) << 4) 

#define MK_P(seg, off) (MK_P_SEG(seg) + (dword_t)off) 

#define SEG(dir_lineal) ((word_t)((dword_t)dir_lineal >> 4))  

#define OFF(dir_lineal) (((word_t)dir_lineal) & 0x000F)  

#endif /* TIPOS_H */
