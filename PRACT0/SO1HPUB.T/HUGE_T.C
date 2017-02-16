/***************************************************************************/
/*                                 HUGE_T.C                                */
/***************************************************************************/
/*                                                                         */
/***************************************************************************/

#include "..\so1hpub.t\def_test.h"                                 /* TEST */

#ifdef TEST

#include "..\so1hpub.h\tipos.h"                                  /* word_t */

void test_spin ( void )
{

    word_t * ptr = 0x0B8000 ;

    while (TRUE)
    {
        ptr[0]++  ;
    }
}

char global [ ] =                                       /* variable global */

    "  GLOBAL: Global variable. I am here." ;

void test_global ( void )
{
    word_t * ptrBufer = 0x0B8000 ;
    int i = 0 ;

    while (global[i] != '\0')
    {
        *ptrBufer++ = 0x0700 | global[i] ;
        i++ ;
    }

}

void funcion ( char * str, int fila )
{

    word_t * ptrBufer = 0x0B8000 + fila*(2*80) ;
    int i = 0 ;

    while (str[i] != '\0')
    {
        *ptrBufer++ = 0x0700 | global[i] ;
        i++ ;
    }

}

void test_funcion ( void )
{

    funcion(global, 2) ;

    funcion(global, 4) ;

}

void test_puntero ( void )
{

    /* En el modelo HUGE la dirección a la que se accede con el puntero es:    */
    /*                                                                         */
    /*   (((puntero >> 4) & 0x0000FFFFF) << 4) | (puntero & 0x0000000F)        */

//byte_t * puntero = 0x0FFFFF ;                 /* el acceso funciona bien */
    byte_t * puntero = 0x100000 ;                 /* el acceso funciona mal  */
    /* ya que accede a 0x00000 */
    byte_t byte ;

//while (TRUE) ;

    byte = *puntero ;

}

#endif
