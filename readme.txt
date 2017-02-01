
SO1H is a small operating system for the 80386+ architecture.
It is written in C using the Smaller C compiler of Alexei Frunze
(http://github.com/alexfru/SmallerC/wiki). Smaller C generates 16 
bits code for NASM that can be assembled and linked to generate
binary executable files of SO1H. The model of programming used 
by those binaries corresponds to the model HUGE oroposed by 
Alexei Frunze as part of his Smaller C project.

SO1H come of the SO1 implementation experience. SO1 is programmed 
in C using the Borland C 5.02 binary files based on the
classic programming model known as SMALL. The SMALL model limits
the size of the code segment to 64 KBytes. This limitation 
disappears in the HUGE model in which the code of each function 
separately can occupy up to 64 KBytes.

Another great advantage of using SmallerC is that pointers take
values ??corresponding to non-segmented linear directions
in the range 0x00000 to 0xFFFFF, which covers most of the range
of accesible addresses in the pure real mode of the 80386+
(0x000000 to 0x10FFEF).

The SO1H system is mainly aimed at teaching the operating systems 
in a course of initiation in the matter.


Pedro Pablo                                              Julio
López Rodríguez                                Lozano Del Pozo

                      - January 2017 -
