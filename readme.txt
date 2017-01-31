SO1H es un peque�o sistema operativo para la arquitectura 80386+
escrito en C utilizando el compilador SmallerC de Alexei Frunze
(http://github.com/alexfru/SmallerC/wiki) generando c�digo de 
16 bits para NASM que puede ser ensamblado y enlazado para 
generar ficheros ejecutables binarios propios. El modelo de 
programaci�n utilizado por estos binarios corresponde al modelo
HUGE propuesto por Alexei Frunze en su proyecto SmallerC.

SO1H parte de la experiencia en la implementaci�n del sistema SO1
programado en C utilizando el compilador Borland C 5.02 para 
producir ficheros binarios basado en el modelo de programaci�n
cl�sico conocido como SMALL, que limita el tama�o del segmento
de c�digo a 64 KBytes. Esta limitaci�n desaparece en el modelo
HUGE.

Una gran ventaja de utilizar SmallerC es que los punteros toman
valores correspondientes a direcciones lineales no segmentadas
en el rango 0x00000 a 0x10FFFE accesible en el modo real del
88386+.

El sistema SO1H est� principalmente dirigido a la ense�anza de
los sistemas operativos en cursos de iniciaci�n en la materia.



