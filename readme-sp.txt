
SO1H es un pequeño sistema operativo para la arquitectura 80386+.
Esta escrito en C utilizando el compilador Smaller C de Alexei Frunze
(http://github.com/alexfru/SmallerC/wiki). Smaller C genera código de 
16 bits para NASM que puede ser ensamblado y enlazado para generar 
ficheros ejecutables binarios propios de SO1H. El modelo de 
programación utilizado por esos binarios corresponde al modelo HUGE
propuesto por Alexei Frunze como parte de su proyecto Smaller C.

SO1H parte de la experiencia en la implementación del sistema SO1
(https://github.com/so1h/so1, https://sourceforge.net/projects/so1).
SO1 está programado en C utilizando el compilador Borland C 5.02 de
manera que se generan ficheros binarios basados en el modelo de 
programación clásico conocido como SMALL. El modelo SMALL limita 
de forma severa el tamaño del segmento de código a 64 KBytes. 
Esta limitación desaparece en el modelo HUGE en el cual el código
de cada función por separado puede ocupar hasta 64 KBytes.

Otra gran ventaja de utilizar SmallerC es que los punteros toman
valores correspondientes a direcciones lineales no segmentadas
en el rango 0x000000 a 0x0FFFFF, que cubre la mayor parte del rango 
de direcciones accesibles en el modo real puro del 80386+ 
(0x000000 a 0x10FFEF).

El sistema SO1H está principalmente dirigido a la enseñanza de
los sistemas operativos en un curso de iniciación en la materia.


Pedro Pablo                                      Julio    
López Rodríguez                                  Lozano Del Pozo

                     -- enero de 2017 --
