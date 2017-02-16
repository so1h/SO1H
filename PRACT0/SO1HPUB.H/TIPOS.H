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

#endif /* TIPOS_H */
