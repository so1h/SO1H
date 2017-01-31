
SO1H es un pequeño sistema operativo para la arquitectura 80386+.
Esta escrito en C utilizando el compilador Smaller C de Alexei Frunze
(http://github.com/alexfru/SmallerC/wiki). Smaller C genera código de 
16 bits para NASM que puede ser ensamblado y enlazado para generar 
ficheros ejecutables binarios propios de SO1H. El modelo de 
programación utilizado por esos binarios corresponde al modelo HUGE
propuesto por Alexei Frunze en su proyecto Smaller C.

SO1H parte de la experiencia en la implementación del sistema SO1.
Está programado en C utilizando el compilador Borland C 5.02 de
manera que se generan ficheros binarios basados en el modelo de 
programación clásico conocido como SMALL. Este modelo limita 
de forma severa el tamaño del segmento de código a 64 KBytes. 
Esta limitación desaparece en el modelo HUGE en el cual el código
de cada función por separado puede ocupar hasta 64 KBytes.

Otra gran ventaja de utilizar SmallerC es que los punteros toman
valores correspondientes a direcciones lineales no segmentadas
en el rango 0x00000 a 0x10FFFE, que es el rango de direccionamiento 
accesible en el modo real del 80386+.

El sistema SO1H está principalmente dirigido a la enseñanza de
los sistemas operativos en un curso de iniciación en la materia.

Pedro Pablo                                      Julio    
López Rodríguez                                  Lozano Del Pozo

                     -- enero de 2017 --