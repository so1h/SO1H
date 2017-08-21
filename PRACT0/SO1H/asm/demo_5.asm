bits 16

; glb intptr_t : int
; glb uintptr_t : unsigned
; glb intmax_t : int
; glb uintmax_t : unsigned
; glb int8_t : signed char
; glb int_least8_t : signed char
; glb int_fast8_t : signed char
; glb uint8_t : unsigned char
; glb uint_least8_t : unsigned char
; glb uint_fast8_t : unsigned char
; glb int16_t : short
; glb int_least16_t : short
; glb int_fast16_t : short
; glb uint16_t : unsigned short
; glb uint_least16_t : unsigned short
; glb uint_fast16_t : unsigned short
; glb int32_t : int
; glb int_least32_t : int
; glb int_fast32_t : int
; glb uint32_t : unsigned
; glb uint_least32_t : unsigned
; glb uint_fast32_t : unsigned
; glb imaxdiv_t : struct <something>
; glb bool_t : int
; glb pointer_t : * unsigned char
; glb funcion_t : * (
; prm     <something> : * void
;     ) * void
; glb manejador_t : * (void) void
; glb rti_t : * (void) void
; glb isr_t : * (void) void
; glb handler_t : * (void) void
; glb retardarThread_t : * (void) int
; glb ptrTVI_t : * * (void) void
; glb modoSO1_t : int
; glb lh_t : struct <something>
; glb address_t : struct <something>
; glb uPtrAdr_t : union <something>
; glb pid_t : int
; glb tid_t : int
; glb uid_t : int
; glb gid_t : int
; glb pindx_t : int
; glb tindx_t : int
; glb df_t : int
; glb dfs_t : int
; glb rindx_t : int
; glb modoAp_t : unsigned short
; glb tramaDWords_t : struct <something>
; glb tramaWords_t : struct <something>
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; glb tramaBytes_t : struct <something>
; glb trama_t : union <something>
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
; glb bloque_t : struct <something>
; glb ptrBloque_t : * struct <something>
; glb dobleEnlace_t : struct <something>
; glb c2c_t : struct <something>
; glb posicionC2c : (
; prm     i : int
; prm     c2c : struct <something>
;     ) int
; glb eliminarC2c : (
; prm     i : int
; prm     c2c : struct <something>
;     ) void
; glb apilarC2c : (
; prm     i : int
; prm     c2c : struct <something>
;     ) void
; glb encolarC2c : (
; prm     i : int
; prm     c2c : struct <something>
;     ) void
; glb desencolarC2c : (
; prm     c2c : struct <something>
;     ) int
; glb inicializarC2c : (
; prm     c2c : * struct <something>
; prm     e : * struct <something>
; prm     cabecera : int
; prm     compartida : int
;     ) void
; glb ptrC2c_t : * struct <something>
; glb posicionPC2c : (
; prm     i : int
; prm     c2c : * struct <something>
;     ) int
; glb eliminarPC2c : (
; prm     i : int
; prm     ptrC2c : * struct <something>
;     ) void
; glb apilarPC2c : (
; prm     i : int
; prm     ptrC2c : * struct <something>
;     ) void
; glb encolarPC2c : (
; prm     i : int
; prm     ptrC2c : * struct <something>
;     ) void
; glb desencolarPC2c : (
; prm     ptrC2c : * struct <something>
;     ) int
; glb inicializarPC2c : (
; prm     ptrC2c : * struct <something>
; prm     e : * struct <something>
; prm     cabecera : int
; prm     compartida : int
;     ) void
; glb callBack_t : * (
; prm     arg : * void
;     ) int
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
; glb descCcb_t : struct <something>
; glb ccb_t : * struct <something>
; glb inicCcb : (
; prm     ccb : * struct <something>
; prm     max : unsigned short
;     ) int
; glb encolarCcb : (
; prm     cb : * (
; prm         arg : * void
;         ) int
; prm     ccb : * struct <something>
;     ) int
; glb desencolarCcb : (
; prm     ccb : * struct <something>
;     ) * (
; prm     arg : * void
;     ) int
; glb eliminarCcb : (
; prm     cb : * (
; prm         arg : * void
;         ) int
; prm     ccb : * struct <something>
;     ) int
; glb eliminarSegCcb : (
; prm     segmento : unsigned short
; prm     ccb : * struct <something>
;     ) int
; glb vaciarCcb : (
; prm     ccb : * struct <something>
;     ) int
; glb atenderCcb : (
; prm     ccb : * struct <something>
;     ) int
; glb estado_t : int
; glb dfa_t : struct <something>
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
; RPN'ized expression: "80 "
; Expanded expression: "80 "
; Expression value: 80
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
; glb descProceso_t : struct <something>
; glb descThread_t : struct <something>
; glb tipoFichero_t : int
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
; glb descFichero_t : struct <something>
; glb tipoRecurso_t : int
; glb open_t : * (
; prm     dfs : int
; prm     modo : unsigned short
;     ) int
; glb release_t : * (
; prm     dfs : int
;     ) int
; glb read_t : * (
; prm     dfs : int
; prm     dir : * unsigned char
; prm     nbytes : unsigned short
;     ) int
; glb aio_read_t : * (
; prm     dfs : int
; prm     dir : * unsigned char
; prm     nbytes : unsigned short
;     ) int
; glb write_t : * (
; prm     dfs : int
; prm     dir : * unsigned char
; prm     nbytes : unsigned short
;     ) int
; glb aio_write_t : * (
; prm     dfs : int
; prm     dir : * unsigned char
; prm     nbytes : unsigned short
;     ) int
; glb lseek_t : * (
; prm     dfs : int
; prm     pos : int
; prm     whence : unsigned short
;     ) int
; glb fcntl_t : * (
; prm     dfs : int
; prm     cmd : unsigned short
; prm     arg : unsigned short
;     ) int
; glb ioctl_t : * (
; prm     dfs : int
; prm     request : unsigned short
; prm     arg : unsigned short
;     ) int
; glb eliminar_t : * (
; prm     pindx : int
;     ) int
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; glb descRecurso_t : struct <something>
; glb info_t : struct <something>
; glb cabecera_t : struct <something>
; RPN'ized expression: "16 1 + "
; Expanded expression: "17 "
; Expression value: 17
; RPN'ized expression: "16 2 + "
; Expanded expression: "18 "
; Expression value: 18
; RPN'ized expression: "2010 1 + "
; Expanded expression: "2011 "
; Expression value: 2011
; RPN'ized expression: "2010 2 + "
; Expanded expression: "2012 "
; Expression value: 2012
; RPN'ized expression: "20 1 + "
; Expanded expression: "21 "
; Expression value: 21
; RPN'ized expression: "20 2 + "
; Expanded expression: "22 "
; Expression value: 22
; RPN'ized expression: "14 1 + "
; Expanded expression: "15 "
; Expression value: 15
; RPN'ized expression: "14 2 + "
; Expanded expression: "16 "
; Expression value: 16
; RPN'ized expression: "16 16 + "
; Expanded expression: "32 "
; Expression value: 32
; RPN'ized expression: "2010 16 + "
; Expanded expression: "2026 "
; Expression value: 2026
; RPN'ized expression: "2010 1 + "
; Expanded expression: "2011 "
; Expression value: 2011
; RPN'ized expression: "2010 1 + "
; Expanded expression: "2011 "
; Expression value: 2011
; RPN'ized expression: "16 1 + "
; Expanded expression: "17 "
; Expression value: 17
; RPN'ized expression: "2010 1 + "
; Expanded expression: "2011 "
; Expression value: 2011
; RPN'ized expression: "20 14 + "
; Expanded expression: "34 "
; Expression value: 34
; glb e2PFR_t : struct <something>
; glb cPFR_t : int
; glb sigThread_t : * () int
; glb activarThread_t : * (
; prm     tindx : int
;     ) void
; glb buscarNuevoThreadActual_t : * (void) void
; glb bloquearThreadActual_t : * (
; prm     rindx : int
;     ) void
; glb descSO1H_t : struct <something>
; glb thread_attribs_t : struct <something>
; glb thread_create : (
; prm     tid : * int
; prm     attribs : * struct <something>
; prm     funcionInicial : * * void
; prm     arg : * void
;     ) int
; glb thread_join : (
; prm     tid : int
; prm     res : * * void
;     ) int
; glb thread_exit : (
; prm     res : * void
;     ) void
; glb thread_yield : (void) int
; glb thread_self : (void) int
; glb pos_t : struct <something>
; RPN'ized expression: "50 "
; Expanded expression: "50 "
; Expression value: 50
; RPN'ized expression: "80 "
; Expanded expression: "80 "
; Expression value: 80
; glb pantalla_t : union <something>
; glb tamPantalla : (
; prm     numFilas : unsigned char
;     ) unsigned short
; glb pantallazo : (
; prm     pantalla : * union <something>
; prm     numFilas : unsigned short
; prm     car : char
; prm     atr : char
; prm     esqSupDeF : unsigned char
; prm     esqSupDeC : unsigned char
; prm     esqInfIzF : unsigned char
; prm     esqInfIzC : unsigned char
;     ) void
; glb borrarPantalla : (
; prm     pantalla : * union <something>
; prm     numFilas : unsigned short
;     ) void
; glb borrarCPantalla : (
; prm     pantalla : * union <something>
; prm     numFilas : unsigned short
;     ) void
; glb copiarPantalla : (
; prm     p1 : * union <something>
; prm     p2 : * union <something>
; prm     numFilas : unsigned short
;     ) void
; glb copiarCPantalla : (
; prm     p1 : * union <something>
; prm     p2 : * union <something>
; prm     numFilas : unsigned short
;     ) void
; glb scrollPantalla : (
; prm     pantalla : * union <something>
; prm     numFilas : unsigned short
;     ) void
; glb scrollCPantalla : (
; prm     pantalla : * union <something>
; prm     numFilas : unsigned short
;     ) void
; glb cursorF : unsigned char
; glb cursorC : unsigned char
; glb lineaOriginal1 : unsigned char
; glb lineaOriginal2 : unsigned char
; glb inicMemVideo : (void) void
; glb finMemVideo : (void) int
; glb goToXYVideo : (
; prm     F : unsigned char
; prm     C : unsigned char
;     ) void
; glb printCarVideo : (
; prm     car : char
;     ) int
; glb printCarVideo : (
; prm     car : char
;     ) int
; glb printLnVideo : (void) int
; glb printStrVideo : (
; prm     str : * char
;     ) int
; glb printStrHastaVideo : (
; prm     str : * char
; prm     n : unsigned short
; prm     lleno : int
;     ) int
; glb printDecVideo : (
; prm     num : unsigned short
; prm     l : unsigned short
;     ) int
; glb printLDecVideo : (
; prm     num : unsigned
; prm     l : unsigned short
;     ) int
; glb printIntVideo : (
; prm     num : int
; prm     l : unsigned short
;     ) int
; glb printLIntVideo : (
; prm     num : int
; prm     l : unsigned short
;     ) int
; glb printHexVideo : (
; prm     num : unsigned short
; prm     l : unsigned short
;     ) int
; glb printLHexVideo : (
; prm     num : unsigned
; prm     l : unsigned short
;     ) int
; glb printBinVideo : (
; prm     num : unsigned short
; prm     l : unsigned short
;     ) int
; glb printLBinVideo : (
; prm     num : unsigned
; prm     l : unsigned short
;     ) int
; glb printPtrVideo : (
; prm     ptr : * unsigned char
;     ) int
; glb printByteVideo : (
; prm     b : unsigned char
;     ) int
; glb printWordVideo : (
; prm     w : unsigned short
;     ) int
; glb printCadVideo : (
; prm     cad : * char
;     ) int
; glb HWLIST_t : unsigned short
; glb KBDFLAGS_t : unsigned short
; glb KBDSTATUS_t : unsigned short
; glb VIDEOCONTROL_t : unsigned char
; glb DRECSTATUS_t : unsigned char
; glb DMOTORSTATUS_t : unsigned char
; glb FDOPSTATUS_t : unsigned char
; glb VIDEOSWITCHES_t : unsigned char
; glb VGAOPTIONS_t : unsigned char
; glb VIDEOSAVETBL_t : struct <something>
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
; RPN'ized expression: "25 "
; Expanded expression: "25 "
; Expression value: 25
; RPN'ized expression: "20 "
; Expanded expression: "20 "
; Expression value: 20
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
; glb VIDEOPARAM_t : struct <something>
; RPN'ized expression: "256 "
; Expanded expression: "256 "
; Expression value: 256
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
; RPN'ized expression: "3 "
; Expanded expression: "3 "
; Expression value: 3
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; RPN'ized expression: "3 "
; Expanded expression: "3 "
; Expression value: 3
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
; RPN'ized expression: "68 "
; Expanded expression: "68 "
; Expression value: 68
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
; glb BIOSAREA_t : struct <something>
; glb ptrBiosArea : * struct <something>
; glb ptrFechaBios : * unsigned char
; glb tipoOrdenador : (void) unsigned char
; glb rebootLegacy : (void) void
; glb tipoTeclado : (void) unsigned char
; glb leerTeclaBIOS : (void) unsigned short
; glb leerTeclaExtBIOS : (void) unsigned short
; glb teclaListaBIOS : (void) unsigned short
; glb leerTeclaListaBDA : (void) unsigned short
; glb teclaListaBDA : (void) unsigned short
; glb printCarBIOS : (
; prm     car : char
;     ) int
; glb printCarPagBIOS : (
; prm     car : char
; prm     pag : unsigned char
;     ) int
; glb printCarAtrPagBIOS : (
; prm     car : char
; prm     atr : unsigned char
; prm     pag : unsigned char
;     ) int
; glb printLnBIOS : (void) int
; glb printStrBIOS : (
; prm     str : * char
;     ) int
; glb printStrHastaBIOS : (
; prm     str : * char
; prm     n : unsigned short
; prm     lleno : int
;     ) int
; glb printDecBIOS : (
; prm     num : unsigned short
; prm     l : unsigned short
;     ) int
; glb printLDecBIOS : (
; prm     num : unsigned
; prm     l : unsigned short
;     ) int
; glb printIntBIOS : (
; prm     num : short
; prm     l : unsigned short
;     ) int
; glb printLIntBIOS : (
; prm     num : int
; prm     l : unsigned short
;     ) int
; glb printHexBIOS : (
; prm     num : unsigned short
; prm     l : unsigned short
;     ) int
; glb printLHexBIOS : (
; prm     num : unsigned
; prm     l : unsigned short
;     ) int
; glb printBinBIOS : (
; prm     num : unsigned short
; prm     l : unsigned short
;     ) int
; glb printLBinBIOS : (
; prm     num : unsigned
; prm     l : unsigned short
;     ) int
; glb printPtrBIOS : (
; prm     ptr : * unsigned char
;     ) int
; glb printByteBIOS : (
; prm     b : unsigned char
;     ) int
; glb printWordBIOS : (
; prm     w : unsigned short
;     ) int
; glb printCadBIOS : (
; prm     cad : * char
;     ) int
; glb esperarTicsBIOS : (
; prm     tics : unsigned short
;     ) void
; glb modoDeVideo : (void) unsigned char
; glb establecerModoDeVideo : (
; prm     modo : unsigned char
;     ) void
; glb paginaActiva : (void) unsigned char
; glb establecerPaginaActiva : (
; prm     num : unsigned char
;     ) void
; glb numPagsVideo : (void) unsigned char
; glb scrollPagBDA : (
; prm     numLineas : unsigned char
; prm     pag : unsigned char
;     ) void
; glb scrollPagBIOS : (
; prm     numLineas : unsigned char
; prm     pag : unsigned char
;     ) void
; glb scrollBIOS : (
; prm     numLineas : unsigned char
;     ) void
; glb goToXYPag : (
; prm     fila : unsigned char
; prm     columna : unsigned char
; prm     pag : unsigned char
;     ) void
; glb goToXYBIOS : (
; prm     fila : unsigned char
; prm     columna : unsigned char
;     ) void
; glb setCursorBIOS : (
; prm     linea1 : unsigned char
; prm     linea2 : unsigned char
;     ) void
; glb ocultaCursorBIOS : (void) void
; glb readXYPagBIOS : (
; prm     fila : * unsigned char
; prm     columna : * unsigned char
; prm     linea1 : * unsigned char
; prm     linea2 : * unsigned char
; prm     pag : unsigned char
;     ) void
; glb readXYBIOS : (
; prm     fila : * unsigned char
; prm     columna : * unsigned char
; prm     linea1 : * unsigned char
; prm     linea2 : * unsigned char
;     ) void
; glb memBIOS : (void) unsigned short
; glb enviarBIOS : (
; prm     car : char
;     ) void
; glb recibirBIOS : (void) char
; glb hayApmBIOS : (
; prm     version : * unsigned short
;     ) int
; glb connectApmBIOS : (void) int
; glb disconnectApmBIOS : (void) int
; glb cpuIdleBIOS : (void) void
; glb cpuBusyBIOS : (void) void
; glb tamBloqueMax : unsigned short
; glb listaLibres : * struct <something>
; glb k_buscarBloque : (
; prm     tam : unsigned short
;     ) unsigned short
; glb k_devolverBloque : (
; prm     segmento : unsigned short
; prm     tam : unsigned short
;     ) int
; glb rec_gm : int
; glb inicGM : (void) void
; glb mostrarListaLibres : (void) void
; glb link_gm_k : (void) void
; glb size_t : unsigned
; glb memset : (
; prm     <something> : * void
; prm     <something> : int
; prm     <something> : unsigned
;     ) * void
; glb memcpy : (
; prm     <something> : * void
; prm     <something> : * void
; prm     <something> : unsigned
;     ) * void
; glb memmove : (
; prm     <something> : * void
; prm     <something> : * void
; prm     <something> : unsigned
;     ) * void
; glb memchr : (
; prm     <something> : * char
; prm     <something> : int
; prm     <something> : unsigned
;     ) * char
; glb memcmp : (
; prm     <something> : * void
; prm     <something> : * void
; prm     <something> : unsigned
;     ) int
; glb strcpy : (
; prm     <something> : * char
; prm     <something> : * char
;     ) * char
; glb strncpy : (
; prm     <something> : * char
; prm     <something> : * char
; prm     <something> : unsigned
;     ) * char
; glb strxfrm : (
; prm     <something> : * char
; prm     <something> : * char
; prm     <something> : unsigned
;     ) unsigned
; glb strcat : (
; prm     <something> : * char
; prm     <something> : * char
;     ) * char
; glb strncat : (
; prm     <something> : * char
; prm     <something> : * char
; prm     <something> : unsigned
;     ) * char
; glb strlen : (
; prm     <something> : * char
;     ) unsigned
; glb strchr : (
; prm     <something> : * char
; prm     <something> : int
;     ) * char
; glb strrchr : (
; prm     <something> : * char
; prm     <something> : int
;     ) * char
; glb strstr : (
; prm     <something> : * char
; prm     <something> : * char
;     ) * char
; glb strspn : (
; prm     <something> : * char
; prm     <something> : * char
;     ) unsigned
; glb strcspn : (
; prm     <something> : * char
; prm     <something> : * char
;     ) unsigned
; glb strpbrk : (
; prm     <something> : * char
; prm     <something> : * char
;     ) * char
; glb strtok : (
; prm     <something> : * char
; prm     <something> : * char
;     ) * char
; glb strcmp : (
; prm     <something> : * char
; prm     <something> : * char
;     ) int
; glb strncmp : (
; prm     <something> : * char
; prm     <something> : * char
; prm     <something> : unsigned
;     ) int
; glb strcoll : (
; prm     <something> : * char
; prm     <something> : * char
;     ) int
; glb strerror : (
; prm     <something> : int
;     ) * char
; glb numThreads : int
section .bss
	alignb 4
_numThreads:
	resb	4

; glb f_1 : int
section .bss
	alignb 4
_f_1:
	resb	4

; glb c_1 : int
section .bss
	alignb 4
_c_1:
	resb	4

; glb f_2 : int
section .bss
	alignb 4
_f_2:
	resb	4

; glb c_2 : int
section .bss
	alignb 4
_c_2:
	resb	4

; glb alto : int
section .bss
	alignb 4
_alto:
	resb	4

; glb ancho : int
section .bss
	alignb 4
_ancho:
	resb	4

; glb fin : int
section .data
	align 4
_fin:
; =
; RPN'ized expression: "FALSE "
; Expanded expression: "0 "
; Expression value: 0
	dd	0

; RPN'ized expression: "80 "
; Expanded expression: "80 "
; Expression value: 80
; glb renglon : [80u] char
section .bss
_renglon:
	resb	80

; RPN'ized expression: "80 "
; Expanded expression: "80 "
; Expression value: 80
; glb numOrden : [80u] char
section .bss
_numOrden:
	resb	80

; glb funcion : (
; prm     arg : * void
;     ) * void
section .text
_funcion:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         48
; loc     arg : (@8): * void
; loc     i : (@-4): int
; loc     k : (@-8): int
; loc     kant : (@-12): int
; loc     incremento : (@-16): int
; loc     lentitud : (@-20): int
; loc     pasos : (@-24): int
; loc     f : (@-28): int
; loc     c : (@-32): int
; loc     fant : (@-36): int
; loc     letra : (@-40): char
; loc     atributo : (@-44): unsigned char
; loc     ptrPant : (@-48): * union <something>
; loc     <something> : * union <something>
; RPN'ized expression: "ptrPant 753664 (something3) = "
; Expanded expression: "(@-48) 753664 =(4) "
; Fused expression:    "=(204) *(@-48) 753664 "
	mov	eax, 753664
	mov	[bp-48], eax
; loc     <something> : int
; RPN'ized expression: "c arg (something4) = "
; Expanded expression: "(@-32) (@8) *(4) =(4) "
; Fused expression:    "=(204) *(@-32) *(@8) "
	mov	eax, [bp+8]
	mov	[bp-32], eax
; RPN'ized expression: "pasos 0 = "
; Expanded expression: "(@-24) 0 =(4) "
; Fused expression:    "=(204) *(@-24) 0 "
	mov	eax, 0
	mov	[bp-24], eax
; RPN'ized expression: "k alto 2 / = "
; Expanded expression: "(@-8) alto *(4) 2 / =(4) "
; Fused expression:    "alto / *ax 2 =(204) *(@-8) ax "
section .relod
	dd	L5
section .text
	db	0x66, 0xB8
L5:
	dd	_alto
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	[bp-8], eax
; RPN'ized expression: "kant k = "
; Expanded expression: "(@-12) (@-8) *(4) =(4) "
; Fused expression:    "=(204) *(@-12) *(@-8) "
	mov	eax, [bp-8]
	mov	[bp-12], eax
; RPN'ized expression: "incremento 1 = "
; Expanded expression: "(@-16) 1 =(4) "
; Fused expression:    "=(204) *(@-16) 1 "
	mov	eax, 1
	mov	[bp-16], eax
; RPN'ized expression: "lentitud numThreads 1 - = "
; Expanded expression: "(@-20) numThreads *(4) 1 - =(4) "
; Fused expression:    "numThreads - *ax 1 =(204) *(@-20) ax "
section .relod
	dd	L6
section .text
	db	0x66, 0xB8
L6:
	dd	_numThreads
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	dec	eax
	mov	[bp-20], eax
; RPN'ized expression: "letra renglon c + *u = "
; Expanded expression: "(@-40) renglon (@-32) *(4) + *(-1) =(-1) "
; Fused expression:    "renglon + ax *(@-32) =(119) *(@-40) *ax "
section .relod
	dd	L7
section .text
	db	0x66, 0xB8
L7:
	dd	_renglon
	add	eax, [bp-32]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	mov	[bp-40], al
	movsx	eax, al
; RPN'ized expression: "atributo 2 c 5 % + = "
; Expanded expression: "(@-44) 2 (@-32) *(4) 5 % + =(1) "
; Fused expression:    "% *(@-32) 5 + 2 ax =(156) *(@-44) ax "
	mov	eax, [bp-32]
	cdq
	mov	ecx, 5
	idiv	ecx
	mov	eax, edx
	mov	ecx, eax
	mov	eax, 2
	add	eax, ecx
	mov	[bp-44], al
	movzx	eax, al
; while
; RPN'ized expression: "fin 0 == "
; Expanded expression: "fin *(4) 0 == "
L8:
; Fused expression:    "fin == *ax 0 IF! "
section .relod
	dd	L10
section .text
	db	0x66, 0xB8
L10:
	dd	_fin
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 0
	jne	L9
; {
; if
; RPN'ized expression: "pasos numOrden c + *u lentitud + % 0 == "
; Expanded expression: "(@-24) *(4) numOrden (@-32) *(4) + *(-1) (@-20) *(4) + % 0 == "
; Fused expression:    "numOrden + ax *(@-32) + *ax *(@-20) % *(@-24) ax == ax 0 IF! "
section .relod
	dd	L13
section .text
	db	0x66, 0xB8
L13:
	dd	_numOrden
	add	eax, [bp-32]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	add	eax, [bp-20]
	mov	ecx, eax
	mov	eax, [bp-24]
	cdq
	idiv	ecx
	mov	eax, edx
	cmp	eax, 0
	jne	L11
; {
; RPN'ized expression: "f f_1 k + = "
; Expanded expression: "(@-28) f_1 *(4) (@-8) *(4) + =(4) "
; Fused expression:    "f_1 + *ax *(@-8) =(204) *(@-28) ax "
section .relod
	dd	L14
section .text
	db	0x66, 0xB8
L14:
	dd	_f_1
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, [bp-8]
	mov	[bp-28], eax
; RPN'ized expression: "fant f_1 kant + = "
; Expanded expression: "(@-36) f_1 *(4) (@-12) *(4) + =(4) "
; Fused expression:    "f_1 + *ax *(@-12) =(204) *(@-36) ax "
section .relod
	dd	L15
section .text
	db	0x66, 0xB8
L15:
	dd	_f_1
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, [bp-12]
	mov	[bp-36], eax
; RPN'ized expression: "ptrPant t -> *u fant + *u c + *u &u car -> *u 32 = "
; Expanded expression: "(@-48) *(4) 0 + (@-36) *(4) 160 * + (@-32) *(4) 2 * + 0 + 32 =(1) "
; Fused expression:    "+ *(@-48) 0 push-ax * *(@-36) 160 + *sp ax push-ax * *(@-32) 2 + *sp ax + ax 0 =(156) *ax 32 "
	mov	eax, [bp-48]
	push	eax
	mov	eax, [bp-36]
	imul	eax, eax, 160
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	mov	eax, [bp-32]
	imul	eax, eax, 2
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	eax, 32
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; RPN'ized expression: "ptrPant t -> *u fant + *u c + *u &u atr -> *u 7 = "
; Expanded expression: "(@-48) *(4) 0 + (@-36) *(4) 160 * + (@-32) *(4) 2 * + 1 + 7 =(1) "
; Fused expression:    "+ *(@-48) 0 push-ax * *(@-36) 160 + *sp ax push-ax * *(@-32) 2 + *sp ax + ax 1 =(156) *ax 7 "
	mov	eax, [bp-48]
	push	eax
	mov	eax, [bp-36]
	imul	eax, eax, 160
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	mov	eax, [bp-32]
	imul	eax, eax, 2
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	inc	eax
	mov	ebx, eax
	mov	eax, 7
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; RPN'ized expression: "ptrPant t -> *u f + *u c + *u &u car -> *u letra = "
; Expanded expression: "(@-48) *(4) 0 + (@-28) *(4) 160 * + (@-32) *(4) 2 * + 0 + (@-40) *(-1) =(1) "
; Fused expression:    "+ *(@-48) 0 push-ax * *(@-28) 160 + *sp ax push-ax * *(@-32) 2 + *sp ax + ax 0 =(151) *ax *(@-40) "
	mov	eax, [bp-48]
	push	eax
	mov	eax, [bp-28]
	imul	eax, eax, 160
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	mov	eax, [bp-32]
	imul	eax, eax, 2
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	al, [bp-40]
	movsx	eax, al
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; RPN'ized expression: "ptrPant t -> *u f + *u c + *u &u atr -> *u atributo = "
; Expanded expression: "(@-48) *(4) 0 + (@-28) *(4) 160 * + (@-32) *(4) 2 * + 1 + (@-44) *(1) =(1) "
; Fused expression:    "+ *(@-48) 0 push-ax * *(@-28) 160 + *sp ax push-ax * *(@-32) 2 + *sp ax + ax 1 =(153) *ax *(@-44) "
	mov	eax, [bp-48]
	push	eax
	mov	eax, [bp-28]
	imul	eax, eax, 160
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	mov	eax, [bp-32]
	imul	eax, eax, 2
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	inc	eax
	mov	ebx, eax
	mov	al, [bp-44]
	movzx	eax, al
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; RPN'ized expression: "kant k = "
; Expanded expression: "(@-12) (@-8) *(4) =(4) "
; Fused expression:    "=(204) *(@-12) *(@-8) "
	mov	eax, [bp-8]
	mov	[bp-12], eax
; RPN'ized expression: "k k incremento + = "
; Expanded expression: "(@-8) (@-8) *(4) (@-16) *(4) + =(4) "
; Fused expression:    "+ *(@-8) *(@-16) =(204) *(@-8) ax "
	mov	eax, [bp-8]
	add	eax, [bp-16]
	mov	[bp-8], eax
; if
; RPN'ized expression: "k alto >= "
; Expanded expression: "(@-8) *(4) alto *(4) >= "
; Fused expression:    "alto >= *(@-8) *ax IF! "
section .relod
	dd	L18
section .text
	db	0x66, 0xB8
L18:
	dd	_alto
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp-8]
	cmp	eax, ecx
	jl	L16
; {
; RPN'ized expression: "incremento 1 -u = "
; Expanded expression: "(@-16) -1 =(4) "
; Fused expression:    "=(204) *(@-16) -1 "
	mov	eax, -1
	mov	[bp-16], eax
; RPN'ized expression: "k alto 1 - = "
; Expanded expression: "(@-8) alto *(4) 1 - =(4) "
; Fused expression:    "alto - *ax 1 =(204) *(@-8) ax "
section .relod
	dd	L19
section .text
	db	0x66, 0xB8
L19:
	dd	_alto
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	dec	eax
	mov	[bp-8], eax
; }
L16:
; if
; RPN'ized expression: "k 1 -u <= "
; Expanded expression: "(@-8) *(4) -1 <= "
; Fused expression:    "<= *(@-8) -1 IF! "
	mov	eax, [bp-8]
	cmp	eax, -1
	jg	L20
; {
; RPN'ized expression: "incremento 1 = "
; Expanded expression: "(@-16) 1 =(4) "
; Fused expression:    "=(204) *(@-16) 1 "
	mov	eax, 1
	mov	[bp-16], eax
; RPN'ized expression: "k 0 = "
; Expanded expression: "(@-8) 0 =(4) "
; Fused expression:    "=(204) *(@-8) 0 "
	mov	eax, 0
	mov	[bp-8], eax
; }
L20:
; }
L11:
; RPN'ized expression: "pasos ++p "
; Expanded expression: "(@-24) ++p(4) "
; Fused expression:    "++p(4) *(@-24) "
	mov	eax, [bp-24]
	inc	dword [bp-24]
; RPN'ized expression: "( thread_yield ) "
; Expanded expression: " thread_yield ()0 "
; Fused expression:    "( thread_yield )0 "
	db	0x9A
section .relot
	dd	L22
section .text
L22:
	dd	_thread_yield
; }
	jmp	L8
L9:
; loc     <something> : * void
; RPN'ized expression: "( c (something23) thread_exit ) "
; Expanded expression: " (@-32) *(4)  thread_exit ()4 "
; Fused expression:    "( *(4) (@-32) , thread_exit )4 "
	push	dword [bp-32]
	db	0x9A
section .relot
	dd	L24
section .text
L24:
	dd	_thread_exit
	sub	sp, -4
L1:
	db	0x66
	leave
	retf
L25:

section .fxnsz noalloc
	dd	L25 - _funcion

; glb funcioncilla : (
; prm     arg : * void
;     ) void
section .text
_funcioncilla:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     arg : (@8): * void
; loc     i : (@-4): int
; loc     <something> : int
; RPN'ized expression: "i arg (something28) = "
; Expanded expression: "(@-4) (@8) *(4) =(4) "
; Fused expression:    "=(204) *(@-4) *(@8) "
	mov	eax, [bp+8]
	mov	[bp-4], eax
; while
; RPN'ized expression: "fin 0 == "
; Expanded expression: "fin *(4) 0 == "
L29:
; Fused expression:    "fin == *ax 0 IF! "
section .relod
	dd	L31
section .text
	db	0x66, 0xB8
L31:
	dd	_fin
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 0
	jne	L30
; {
; loc         <something> : * unsigned
; RPN'ized expression: "753664 (something32) i + *u ++p "
; Expanded expression: "753664 (@-4) *(4) 4 * + ++p(4) "
; Fused expression:    "* *(@-4) 4 + 753664 ax ++p(4) *ax "
	mov	eax, [bp-4]
	imul	eax, eax, 4
	mov	ecx, eax
	mov	eax, 753664
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	inc	dword [si]
; RPN'ized expression: "( thread_yield ) "
; Expanded expression: " thread_yield ()0 "
; Fused expression:    "( thread_yield )0 "
	db	0x9A
section .relot
	dd	L33
section .text
L33:
	dd	_thread_yield
; }
	jmp	L29
L30:
L26:
	db	0x66
	leave
	retf
L34:

section .fxnsz
	dd	L34 - _funcioncilla

; glb retardarTics : (
; prm     tics : unsigned
;     ) void
section .text
_retardarTics:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     tics : (@8): unsigned
; loc     tics_0 : (@-4): unsigned
; RPN'ized expression: "tics_0 ptrBiosArea BIOS_timer -> *u = "
; Expanded expression: "(@-4) ptrBiosArea *(4) 1132 + *(4) =(4) "
; Fused expression:    "ptrBiosArea + *ax 1132 =(204) *(@-4) *ax "
section .relod
	dd	L37
section .text
	db	0x66, 0xB8
L37:
	dd	_ptrBiosArea
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 1132
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-4], eax
; while
; RPN'ized expression: "ptrBiosArea BIOS_timer -> *u tics_0 tics + <= "
; Expanded expression: "ptrBiosArea *(4) 1132 + *(4) (@-4) *(4) (@8) *(4) + <=u "
L38:
; Fused expression:    "ptrBiosArea + *ax 1132 push-ax + *(@-4) *(@8) <=u **sp ax IF! "
section .relod
	dd	L40
section .text
	db	0x66, 0xB8
L40:
	dd	_ptrBiosArea
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 1132
	push	eax
	mov	eax, [bp-4]
	add	eax, [bp+8]
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, ecx
	ja	L39
	jmp	L38
L39:
L35:
	db	0x66
	leave
	retf
L41:

section .fxnsz
	dd	L41 - _retardarTics

; glb demo_5 : (
; prm     frase : * char
; prm     f1 : int
; prm     c1 : int
; prm     f2 : int
; prm     c2 : int
;     ) void
section .text
	global	_demo_5
_demo_5:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         28
; loc     frase : (@8): * char
; loc     f1 : (@12): int
; loc     c1 : (@16): int
; loc     f2 : (@20): int
; loc     c2 : (@24): int

section .data
	align 4
L44:
; RPN'ized expression: "512 "
; Expanded expression: "512 "
; Expression value: 512
	dw	512
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
	dw	0

section .text
; loc     attribs : (@-4): struct <something>
; =
; Fused expression:    "( (@-4) , L44 , 4u , L45 )12 "
	xor	eax, eax
	mov	ax, ss
	shl	eax, 4
	lea	eax, [ebp+eax-4]
	push	eax
section .relod
	dd	L46
section .text
	db	0x66, 0x68
L46:
	dd	L44
	push	dword 4
	db	0x9A
section .relot
	dd	L47
section .text
L47:
	dd	L45
	sub	sp, -12
; loc     tid : (@-8): int
; loc     i : (@-12): int
; loc     j : (@-16): int
; loc     cont : (@-20): int
; RPN'ized expression: "f_1 f1 = "
; Expanded expression: "f_1 (@12) *(4) =(4) "
; Fused expression:    "f_1 =(204) *ax *(@12) "
section .relod
	dd	L48
section .text
	db	0x66, 0xB8
L48:
	dd	_f_1
	mov	ebx, eax
	mov	eax, [bp+12]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "c_1 c1 = "
; Expanded expression: "c_1 (@16) *(4) =(4) "
; Fused expression:    "c_1 =(204) *ax *(@16) "
section .relod
	dd	L49
section .text
	db	0x66, 0xB8
L49:
	dd	_c_1
	mov	ebx, eax
	mov	eax, [bp+16]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "f_2 f2 = "
; Expanded expression: "f_2 (@20) *(4) =(4) "
; Fused expression:    "f_2 =(204) *ax *(@20) "
section .relod
	dd	L50
section .text
	db	0x66, 0xB8
L50:
	dd	_f_2
	mov	ebx, eax
	mov	eax, [bp+20]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "c_2 c2 = "
; Expanded expression: "c_2 (@24) *(4) =(4) "
; Fused expression:    "c_2 =(204) *ax *(@24) "
section .relod
	dd	L51
section .text
	db	0x66, 0xB8
L51:
	dd	_c_2
	mov	ebx, eax
	mov	eax, [bp+24]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "alto f2 f1 - 1 + = "
; Expanded expression: "alto (@20) *(4) (@12) *(4) - 1 + =(4) "
; Fused expression:    "alto push-ax - *(@20) *(@12) + ax 1 =(204) **sp ax "
section .relod
	dd	L52
section .text
	db	0x66, 0xB8
L52:
	dd	_alto
	push	eax
	mov	eax, [bp+20]
	sub	eax, [bp+12]
	inc	eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "ancho c2 c1 - 1 + = "
; Expanded expression: "ancho (@24) *(4) (@16) *(4) - 1 + =(4) "
; Fused expression:    "ancho push-ax - *(@24) *(@16) + ax 1 =(204) **sp ax "
section .relod
	dd	L53
section .text
	db	0x66, 0xB8
L53:
	dd	_ancho
	push	eax
	mov	eax, [bp+24]
	sub	eax, [bp+16]
	inc	eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     ptrPant : (@-24): * union <something>
; loc     <something> : * union <something>
; RPN'ized expression: "ptrPant 753664 (something54) = "
; Expanded expression: "(@-24) 753664 =(4) "
; Fused expression:    "=(204) *(@-24) 753664 "
	mov	eax, 753664
	mov	[bp-24], eax
sti
; RPN'ized expression: "( 12 printCarVideo ) "
; Expanded expression: " 12  printCarVideo ()4 "
; Fused expression:    "( 12 , printCarVideo )4 "
	push	dword 12
	db	0x9A
section .relot
	dd	L55
section .text
L55:
	dd	_printCarVideo
	sub	sp, -4
; if
; RPN'ized expression: "( frase strlen ) 0 > "
; Expanded expression: " (@8) *(4)  strlen ()4 0 >u "
; Fused expression:    "( *(4) (@8) , strlen )4 >u ax 0 IF! "
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L58
section .text
L58:
	dd	_strlen
	sub	sp, -4
	cmp	eax, 0
	jbe	L56
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-12) 0 =(4) "
; Fused expression:    "=(204) *(@-12) 0 "
	mov	eax, 0
	mov	[bp-12], eax
L59:
; RPN'ized expression: "i 80 < "
; Expanded expression: "(@-12) *(4) 80 < "
; Fused expression:    "< *(@-12) 80 IF! "
	mov	eax, [bp-12]
	cmp	eax, 80
	jge	L62
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-12) ++p(4) "
; RPN'ized expression: "renglon i + *u frase i ( frase strlen ) % + *u = "
; Expanded expression: "renglon (@-12) *(4) + (@8) *(4) (@-12) *(4)  (@8) *(4)  strlen ()4 %u + *(-1) =(-1) "
; Fused expression:    "renglon + ax *(@-12) push-ax ( *(4) (@8) , strlen )4 %u *(@-12) ax + *(@8) ax =(119) **sp *ax "
section .relod
	dd	L63
section .text
	db	0x66, 0xB8
L63:
	dd	_renglon
	add	eax, [bp-12]
	push	eax
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L64
section .text
L64:
	dd	_strlen
	sub	sp, -4
	mov	ecx, eax
	mov	eax, [bp-12]
	mov	edx, 0
	div	ecx
	mov	eax, edx
	mov	ecx, eax
	mov	eax, [bp+8]
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movsx	eax, al
L60:
; Fused expression:    "++p(4) *(@-12) "
	mov	eax, [bp-12]
	inc	dword [bp-12]
	jmp	L59
L62:
	jmp	L57
L56:
; else
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-12) 0 =(4) "
; Fused expression:    "=(204) *(@-12) 0 "
	mov	eax, 0
	mov	[bp-12], eax
L65:
; RPN'ized expression: "i 80 < "
; Expanded expression: "(@-12) *(4) 80 < "
; Fused expression:    "< *(@-12) 80 IF! "
	mov	eax, [bp-12]
	cmp	eax, 80
	jge	L68
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-12) ++p(4) "
; RPN'ized expression: "renglon i + *u 111 = "
; Expanded expression: "renglon (@-12) *(4) + 111 =(-1) "
; Fused expression:    "renglon + ax *(@-12) =(124) *ax 111 "
section .relod
	dd	L69
section .text
	db	0x66, 0xB8
L69:
	dd	_renglon
	add	eax, [bp-12]
	mov	ebx, eax
	mov	eax, 111
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movsx	eax, al
L66:
; Fused expression:    "++p(4) *(@-12) "
	mov	eax, [bp-12]
	inc	dword [bp-12]
	jmp	L65
L68:
L57:
; for
; RPN'ized expression: "i 20 = "
; Expanded expression: "(@-12) 20 =(4) "
; Fused expression:    "=(204) *(@-12) 20 "
	mov	eax, 20
	mov	[bp-12], eax
L70:
; RPN'ized expression: "i 60 < "
; Expanded expression: "(@-12) *(4) 60 < "
; Fused expression:    "< *(@-12) 60 IF! "
	mov	eax, [bp-12]
	cmp	eax, 60
	jge	L73
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-12) ++p(4) "
; {
; loc         <something> : char
; RPN'ized expression: "( i , 21 , 20 , 21 , 7 , 254 (something74) , 50 , ptrPant pantallazo ) "
; Expanded expression: " (@-12) *(4)  21  20  21  7  -2  50  (@-24) *(4)  pantallazo ()32 "
; Fused expression:    "( *(4) (@-12) , 21 , 20 , 21 , 7 , -2 , 50 , *(4) (@-24) , pantallazo )32 "
	push	dword [bp-12]
	push	dword 21
	push	dword 20
	push	dword 21
	push	dword 7
	push	dword -2
	push	dword 50
	push	dword [bp-24]
	db	0x9A
section .relot
	dd	L75
section .text
L75:
	dd	_pantallazo
	sub	sp, -32
; RPN'ized expression: "( 0 retardarTics ) "
; Expanded expression: " 0  retardarTics ()4 "
; Fused expression:    "( 0 , retardarTics )4 "
	push	dword 0
	db	0x9A
section .relot
	dd	L76
section .text
L76:
	dd	_retardarTics
	sub	sp, -4
; if
; loc         <something> : char
; loc         <something> : char
; RPN'ized expression: "( leerTeclaListaBDA ) (something79) 27 (something80) == "
; Expanded expression: " leerTeclaListaBDA ()0 signed char 27 == "
; Fused expression:    "( leerTeclaListaBDA )0 signed char == ax 27 IF! "
	db	0x9A
section .relot
	dd	L81
section .text
L81:
	dd	_leerTeclaListaBDA
	movsx	eax, al
	cmp	eax, 27
	jne	L77
; break
	jmp	L73
L77:
; }
L71:
; Fused expression:    "++p(4) *(@-12) "
	mov	eax, [bp-12]
	inc	dword [bp-12]
	jmp	L70
L73:
; RPN'ized expression: "( 12 printCarVideo ) "
; Expanded expression: " 12  printCarVideo ()4 "
; Fused expression:    "( 12 , printCarVideo )4 "
	push	dword 12
	db	0x9A
section .relot
	dd	L82
section .text
L82:
	dd	_printCarVideo
	sub	sp, -4
; RPN'ized expression: "numThreads 0 = "
; Expanded expression: "numThreads 0 =(4) "
; Fused expression:    "numThreads =(204) *ax 0 "
section .relod
	dd	L83
section .text
	db	0x66, 0xB8
L83:
	dd	_numThreads
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; for
; loc     i : (@-28): int
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-28) 0 =(4) "
; Fused expression:    "=(204) *(@-28) 0 "
	mov	eax, 0
	mov	[bp-28], eax
L84:
; RPN'ized expression: "i 80 < "
; Expanded expression: "(@-28) *(4) 80 < "
; Fused expression:    "< *(@-28) 80 IF! "
	mov	eax, [bp-28]
	cmp	eax, 80
	jge	L87
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-28) ++p(4) "
; {
; if
; RPN'ized expression: "renglon i + *u 32 != "
; Expanded expression: "renglon (@-28) *(4) + *(-1) 32 != "
; Fused expression:    "renglon + ax *(@-28) != *ax 32 IF! "
section .relod
	dd	L90
section .text
	db	0x66, 0xB8
L90:
	dd	_renglon
	add	eax, [bp-28]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	cmp	eax, 32
	je	L88
; {
; if
; RPN'ized expression: "renglon i + *u 95 == "
; Expanded expression: "renglon (@-28) *(4) + *(-1) 95 == "
; Fused expression:    "renglon + ax *(@-28) == *ax 95 IF! "
section .relod
	dd	L93
section .text
	db	0x66, 0xB8
L93:
	dd	_renglon
	add	eax, [bp-28]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	cmp	eax, 95
	jne	L91
; RPN'ized expression: "renglon i + *u 32 = "
; Expanded expression: "renglon (@-28) *(4) + 32 =(-1) "
; Fused expression:    "renglon + ax *(@-28) =(124) *ax 32 "
section .relod
	dd	L94
section .text
	db	0x66, 0xB8
L94:
	dd	_renglon
	add	eax, [bp-28]
	mov	ebx, eax
	mov	eax, 32
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movsx	eax, al
L91:
; RPN'ized expression: "( i , funcion , attribs &u , tid &u thread_create ) "
; Expanded expression: " (@-28) *(4)  funcion  (@-4)  (@-8)  thread_create ()16 "
; Fused expression:    "( *(4) (@-28) , funcion , (@-4) , (@-8) , thread_create )16 "
	push	dword [bp-28]
section .relod
	dd	L95
section .text
	db	0x66, 0x68
L95:
	dd	_funcion
	xor	eax, eax
	mov	ax, ss
	shl	eax, 4
	lea	eax, [ebp+eax-4]
	push	eax
	xor	eax, eax
	mov	ax, ss
	shl	eax, 4
	lea	eax, [ebp+eax-8]
	push	eax
	db	0x9A
section .relot
	dd	L96
section .text
L96:
	dd	_thread_create
	sub	sp, -16
; RPN'ized expression: "numOrden i + *u numThreads = "
; Expanded expression: "numOrden (@-28) *(4) + numThreads *(4) =(-1) "
; Fused expression:    "numOrden + ax *(@-28) push-ax numThreads =(124) **sp *ax "
section .relod
	dd	L97
section .text
	db	0x66, 0xB8
L97:
	dd	_numOrden
	add	eax, [bp-28]
	push	eax
section .relod
	dd	L98
section .text
	db	0x66, 0xB8
L98:
	dd	_numThreads
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movsx	eax, al
; RPN'ized expression: "numThreads ++p "
; Expanded expression: "numThreads ++p(4) "
; Fused expression:    "numThreads ++p(4) *ax "
section .relod
	dd	L99
section .text
	db	0x66, 0xB8
L99:
	dd	_numThreads
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	inc	dword [si]
; }
L88:
; }
L85:
; Fused expression:    "++p(4) *(@-28) "
	mov	eax, [bp-28]
	inc	dword [bp-28]
	jmp	L84
L87:
; RPN'ized expression: "fin FALSE = "
; Expanded expression: "fin 0 =(4) "
; Fused expression:    "fin =(204) *ax 0 "
section .relod
	dd	L100
section .text
	db	0x66, 0xB8
L100:
	dd	_fin
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; while
; loc     <something> : char
; loc     <something> : char
; RPN'ized expression: "( leerTeclaListaBDA ) (something103) 27 (something104) != "
; Expanded expression: " leerTeclaListaBDA ()0 signed char 27 != "
L101:
; Fused expression:    "( leerTeclaListaBDA )0 signed char != ax 27 IF! "
	db	0x9A
section .relot
	dd	L105
section .text
L105:
	dd	_leerTeclaListaBDA
	movsx	eax, al
	cmp	eax, 27
	je	L102
; RPN'ized expression: "( thread_yield ) "
; Expanded expression: " thread_yield ()0 "
; Fused expression:    "( thread_yield )0 "
	db	0x9A
section .relot
	dd	L106
section .text
L106:
	dd	_thread_yield
	jmp	L101
L102:
; RPN'ized expression: "fin TRUE = "
; Expanded expression: "fin 1 =(4) "
; Fused expression:    "fin =(204) *ax 1 "
section .relod
	dd	L107
section .text
	db	0x66, 0xB8
L107:
	dd	_fin
	mov	ebx, eax
	mov	eax, 1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-12) 0 =(4) "
; Fused expression:    "=(204) *(@-12) 0 "
	mov	eax, 0
	mov	[bp-12], eax
L108:
; RPN'ized expression: "i numThreads < "
; Expanded expression: "(@-12) *(4) numThreads *(4) < "
; Fused expression:    "numThreads < *(@-12) *ax IF! "
section .relod
	dd	L112
section .text
	db	0x66, 0xB8
L112:
	dd	_numThreads
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp-12]
	cmp	eax, ecx
	jge	L111
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-12) ++p(4) "
; loc     <something> : * unsigned char
; RPN'ized expression: "tid ( 0 (something113) , 1 -u thread_join ) = "
; Expanded expression: "(@-8)  0  -1  thread_join ()8 =(4) "
; Fused expression:    "( 0 , -1 , thread_join )8 =(204) *(@-8) ax "
	push	dword 0
	push	dword -1
	db	0x9A
section .relot
	dd	L114
section .text
L114:
	dd	_thread_join
	sub	sp, -8
	mov	[bp-8], eax
L109:
; Fused expression:    "++p(4) *(@-12) "
	mov	eax, [bp-12]
	inc	dword [bp-12]
	jmp	L108
L111:
; RPN'ized expression: "( 80 1 - , 25 1 - , 0 , 0 , 7 , 32 , 25 , ptrPant pantallazo ) "
; Expanded expression: " 79  24  0  0  7  32  25  (@-24) *(4)  pantallazo ()32 "
; Fused expression:    "( 79 , 24 , 0 , 0 , 7 , 32 , 25 , *(4) (@-24) , pantallazo )32 "
	push	dword 79
	push	dword 24
	push	dword 0
	push	dword 0
	push	dword 7
	push	dword 32
	push	dword 25
	push	dword [bp-24]
	db	0x9A
section .relot
	dd	L115
section .text
L115:
	dd	_pantallazo
	sub	sp, -32
; RPN'ized expression: "( 12 printCarVideo ) "
; Expanded expression: " 12  printCarVideo ()4 "
; Fused expression:    "( 12 , printCarVideo )4 "
	push	dword 12
	db	0x9A
section .relot
	dd	L116
section .text
L116:
	dd	_printCarVideo
	sub	sp, -4

section .rodata
L117:
	db	10," Pulse una tecla para crear el numero maximo de threads ... "
	times	1 db 0

section .text
; RPN'ized expression: "( L117 printStrVideo ) "
; Expanded expression: " L117  printStrVideo ()4 "
; Fused expression:    "( L117 , printStrVideo )4 "
section .relod
	dd	L118
section .text
	db	0x66, 0x68
L118:
	dd	L117
	db	0x9A
section .relot
	dd	L119
section .text
L119:
	dd	_printStrVideo
	sub	sp, -4
; while
; loc     <something> : char
; loc     <something> : char
; RPN'ized expression: "( leerTeclaListaBDA ) (something122) 0 (something123) == "
; Expanded expression: " leerTeclaListaBDA ()0 signed char 0 == "
L120:
; Fused expression:    "( leerTeclaListaBDA )0 signed char == ax 0 IF! "
	db	0x9A
section .relot
	dd	L124
section .text
L124:
	dd	_leerTeclaListaBDA
	movsx	eax, al
	cmp	eax, 0
	jne	L121
	jmp	L120
L121:

section .rodata
L125:
	db	10,10," thread_create(&tid, { 0x200, 0x0000 }, funcioncilla,     ) Ok "
	times	1 db 0

section .text
; RPN'ized expression: "( L125 printStrVideo ) "
; Expanded expression: " L125  printStrVideo ()4 "
; Fused expression:    "( L125 , printStrVideo )4 "
section .relod
	dd	L126
section .text
	db	0x66, 0x68
L126:
	dd	L125
	db	0x9A
section .relot
	dd	L127
section .text
L127:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "cont 0 = "
; Expanded expression: "(@-20) 0 =(4) "
; Fused expression:    "=(204) *(@-20) 0 "
	mov	eax, 0
	mov	[bp-20], eax
; while
; RPN'ized expression: "( cont , funcioncilla , attribs &u , tid &u thread_create ) 0 >= "
; Expanded expression: " (@-20) *(4)  funcioncilla  (@-4)  (@-8)  thread_create ()16 0 >= "
L128:
; Fused expression:    "( *(4) (@-20) , funcioncilla , (@-4) , (@-8) , thread_create )16 >= ax 0 IF! "
	push	dword [bp-20]
section .relod
	dd	L130
section .text
	db	0x66, 0x68
L130:
	dd	_funcioncilla
	xor	eax, eax
	mov	ax, ss
	shl	eax, 4
	lea	eax, [ebp+eax-4]
	push	eax
	xor	eax, eax
	mov	ax, ss
	shl	eax, 4
	lea	eax, [ebp+eax-8]
	push	eax
	db	0x9A
section .relot
	dd	L131
section .text
L131:
	dd	_thread_create
	sub	sp, -16
	cmp	eax, 0
	jl	L129
; {
; for
; RPN'ized expression: "j 0 = "
; Expanded expression: "(@-16) 0 =(4) "
; Fused expression:    "=(204) *(@-16) 0 "
	mov	eax, 0
	mov	[bp-16], eax
L132:
; RPN'ized expression: "j 9 < "
; Expanded expression: "(@-16) *(4) 9 < "
; Fused expression:    "< *(@-16) 9 IF! "
	mov	eax, [bp-16]
	cmp	eax, 9
	jge	L135
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-16) ++p(4) "
; RPN'ized expression: "( 8 printCarVideo ) "
; Expanded expression: " 8  printCarVideo ()4 "
; Fused expression:    "( 8 , printCarVideo )4 "
	push	dword 8
	db	0x9A
section .relot
	dd	L136
section .text
L136:
	dd	_printCarVideo
	sub	sp, -4
L133:
; Fused expression:    "++p(4) *(@-16) "
	mov	eax, [bp-16]
	inc	dword [bp-16]
	jmp	L132
L135:
; RPN'ized expression: "cont ++p "
; Expanded expression: "(@-20) ++p(4) "
; Fused expression:    "++p(4) *(@-20) "
	mov	eax, [bp-20]
	inc	dword [bp-20]
; RPN'ized expression: "( 4 , cont printDecVideo ) "
; Expanded expression: " 4  (@-20) *(4)  printDecVideo ()8 "
; Fused expression:    "( 4 , *(4) (@-20) , printDecVideo )8 "
	push	dword 4
	push	dword [bp-20]
	db	0x9A
section .relot
	dd	L137
section .text
L137:
	dd	_printDecVideo
	sub	sp, -8

section .rodata
L138:
	db	") Ok "
	times	1 db 0

section .text
; RPN'ized expression: "( L138 printStrVideo ) "
; Expanded expression: " L138  printStrVideo ()4 "
; Fused expression:    "( L138 , printStrVideo )4 "
section .relod
	dd	L139
section .text
	db	0x66, 0x68
L139:
	dd	L138
	db	0x9A
section .relot
	dd	L140
section .text
L140:
	dd	_printStrVideo
	sub	sp, -4
; }
	jmp	L128
L129:

section .rodata
L141:
	db	10,10," He podido crear "
	times	1 db 0

section .text
; RPN'ized expression: "( L141 printStrVideo ) "
; Expanded expression: " L141  printStrVideo ()4 "
; Fused expression:    "( L141 , printStrVideo )4 "
section .relod
	dd	L142
section .text
	db	0x66, 0x68
L142:
	dd	L141
	db	0x9A
section .relot
	dd	L143
section .text
L143:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 1 , cont printDecVideo ) "
; Expanded expression: " 1  (@-20) *(4)  printDecVideo ()8 "
; Fused expression:    "( 1 , *(4) (@-20) , printDecVideo )8 "
	push	dword 1
	push	dword [bp-20]
	db	0x9A
section .relot
	dd	L144
section .text
L144:
	dd	_printDecVideo
	sub	sp, -8

section .rodata
L145:
	db	" threads "
	times	1 db 0

section .text
; RPN'ized expression: "( L145 printStrVideo ) "
; Expanded expression: " L145  printStrVideo ()4 "
; Fused expression:    "( L145 , printStrVideo )4 "
section .relod
	dd	L146
section .text
	db	0x66, 0x68
L146:
	dd	L145
	db	0x9A
section .relot
	dd	L147
section .text
L147:
	dd	_printStrVideo
	sub	sp, -4

section .rodata
L148:
	db	10
	times	1 db 0

section .text
; RPN'ized expression: "( L148 printStrVideo ) "
; Expanded expression: " L148  printStrVideo ()4 "
; Fused expression:    "( L148 , printStrVideo )4 "
section .relod
	dd	L149
section .text
	db	0x66, 0x68
L149:
	dd	L148
	db	0x9A
section .relot
	dd	L150
section .text
L150:
	dd	_printStrVideo
	sub	sp, -4

section .rodata
L151:
	db	10
	times	1 db 0

section .text
; RPN'ized expression: "( L151 printStrVideo ) "
; Expanded expression: " L151  printStrVideo ()4 "
; Fused expression:    "( L151 , printStrVideo )4 "
section .relod
	dd	L152
section .text
	db	0x66, 0x68
L152:
	dd	L151
	db	0x9A
section .relot
	dd	L153
section .text
L153:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( mostrarListaLibres ) "
; Expanded expression: " mostrarListaLibres ()0 "
; Fused expression:    "( mostrarListaLibres )0 "
	db	0x9A
section .relot
	dd	L154
section .text
L154:
	dd	_mostrarListaLibres

section .rodata
L155:
	db	10
	db	10
	db	" tamBloqueMax = "
	times	1 db 0

section .text
; RPN'ized expression: "( L155 printStrVideo ) "
; Expanded expression: " L155  printStrVideo ()4 "
; Fused expression:    "( L155 , printStrVideo )4 "
section .relod
	dd	L156
section .text
	db	0x66, 0x68
L156:
	dd	L155
	db	0x9A
section .relot
	dd	L157
section .text
L157:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 1 , tamBloqueMax printDecVideo ) "
; Expanded expression: " 1  tamBloqueMax *(2)  printDecVideo ()8 "
; Fused expression:    "( 1 , tamBloqueMax *(2) ax , printDecVideo )8 "
	push	dword 1
section .relod
	dd	L158
section .text
	db	0x66, 0xB8
L158:
	dd	_tamBloqueMax
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	push	eax
	db	0x9A
section .relot
	dd	L159
section .text
L159:
	dd	_printDecVideo
	sub	sp, -8

section .rodata
L160:
	db	" paragrafos ("
	times	1 db 0

section .text
; RPN'ized expression: "( L160 printStrVideo ) "
; Expanded expression: " L160  printStrVideo ()4 "
; Fused expression:    "( L160 , printStrVideo )4 "
section .relod
	dd	L161
section .text
	db	0x66, 0x68
L161:
	dd	L160
	db	0x9A
section .relot
	dd	L162
section .text
L162:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , tamBloqueMax printHexVideo ) "
; Expanded expression: " 4  tamBloqueMax *(2)  printHexVideo ()8 "
; Fused expression:    "( 4 , tamBloqueMax *(2) ax , printHexVideo )8 "
	push	dword 4
section .relod
	dd	L163
section .text
	db	0x66, 0xB8
L163:
	dd	_tamBloqueMax
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	push	eax
	db	0x9A
section .relot
	dd	L164
section .text
L164:
	dd	_printHexVideo
	sub	sp, -8

section .rodata
L165:
	db	") = "
	times	1 db 0

section .text
; RPN'ized expression: "( L165 printStrVideo ) "
; Expanded expression: " L165  printStrVideo ()4 "
; Fused expression:    "( L165 , printStrVideo )4 "
section .relod
	dd	L166
section .text
	db	0x66, 0x68
L166:
	dd	L165
	db	0x9A
section .relot
	dd	L167
section .text
L167:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 1 , tamBloqueMax 1024 16 / / printDecVideo ) "
; Expanded expression: " 1  tamBloqueMax *(2) 64 /  printDecVideo ()8 "
; Fused expression:    "( 1 , tamBloqueMax / *ax 64 , printDecVideo )8 "
	push	dword 1
section .relod
	dd	L168
section .text
	db	0x66, 0xB8
L168:
	dd	_tamBloqueMax
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	cdq
	mov	ecx, 64
	idiv	ecx
	push	eax
	db	0x9A
section .relot
	dd	L169
section .text
L169:
	dd	_printDecVideo
	sub	sp, -8

section .rodata
L170:
	db	" KBytes"
	times	1 db 0

section .text
; RPN'ized expression: "( L170 printStrVideo ) "
; Expanded expression: " L170  printStrVideo ()4 "
; Fused expression:    "( L170 , printStrVideo )4 "
section .relod
	dd	L171
section .text
	db	0x66, 0x68
L171:
	dd	L170
	db	0x9A
section .relot
	dd	L172
section .text
L172:
	dd	_printStrVideo
	sub	sp, -4

section .rodata
L173:
	db	10,10," Pulse una tecla para permitir su ejecucion "
	times	1 db 0

section .text
; RPN'ized expression: "( L173 printStrVideo ) "
; Expanded expression: " L173  printStrVideo ()4 "
; Fused expression:    "( L173 , printStrVideo )4 "
section .relod
	dd	L174
section .text
	db	0x66, 0x68
L174:
	dd	L173
	db	0x9A
section .relot
	dd	L175
section .text
L175:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "fin FALSE = "
; Expanded expression: "fin 0 =(4) "
; Fused expression:    "fin =(204) *ax 0 "
section .relod
	dd	L176
section .text
	db	0x66, 0xB8
L176:
	dd	_fin
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; while
; loc     <something> : char
; loc     <something> : char
; RPN'ized expression: "( leerTeclaListaBDA ) (something179) 0 (something180) == "
; Expanded expression: " leerTeclaListaBDA ()0 signed char 0 == "
L177:
; Fused expression:    "( leerTeclaListaBDA )0 signed char == ax 0 IF! "
	db	0x9A
section .relot
	dd	L181
section .text
L181:
	dd	_leerTeclaListaBDA
	movsx	eax, al
	cmp	eax, 0
	jne	L178
	jmp	L177
L178:
; RPN'ized expression: "( 80 1 - , 25 1 - , 0 , 0 , 7 , 32 , 25 , ptrPant pantallazo ) "
; Expanded expression: " 79  24  0  0  7  32  25  (@-24) *(4)  pantallazo ()32 "
; Fused expression:    "( 79 , 24 , 0 , 0 , 7 , 32 , 25 , *(4) (@-24) , pantallazo )32 "
	push	dword 79
	push	dword 24
	push	dword 0
	push	dword 0
	push	dword 7
	push	dword 32
	push	dword 25
	push	dword [bp-24]
	db	0x9A
section .relot
	dd	L182
section .text
L182:
	dd	_pantallazo
	sub	sp, -32
; while
; loc     <something> : char
; loc     <something> : char
; RPN'ized expression: "( leerTeclaListaBDA ) (something185) 27 (something186) != "
; Expanded expression: " leerTeclaListaBDA ()0 signed char 27 != "
L183:
; Fused expression:    "( leerTeclaListaBDA )0 signed char != ax 27 IF! "
	db	0x9A
section .relot
	dd	L187
section .text
L187:
	dd	_leerTeclaListaBDA
	movsx	eax, al
	cmp	eax, 27
	je	L184
; RPN'ized expression: "( thread_yield ) "
; Expanded expression: " thread_yield ()0 "
; Fused expression:    "( thread_yield )0 "
	db	0x9A
section .relot
	dd	L188
section .text
L188:
	dd	_thread_yield
	jmp	L183
L184:
; RPN'ized expression: "( 80 1 - , 25 1 - , 0 , 0 , 7 , 32 , 25 , ptrPant pantallazo ) "
; Expanded expression: " 79  24  0  0  7  32  25  (@-24) *(4)  pantallazo ()32 "
; Fused expression:    "( 79 , 24 , 0 , 0 , 7 , 32 , 25 , *(4) (@-24) , pantallazo )32 "
	push	dword 79
	push	dword 24
	push	dword 0
	push	dword 0
	push	dword 7
	push	dword 32
	push	dword 25
	push	dword [bp-24]
	db	0x9A
section .relot
	dd	L189
section .text
L189:
	dd	_pantallazo
	sub	sp, -32
; RPN'ized expression: "( 12 printCarVideo ) "
; Expanded expression: " 12  printCarVideo ()4 "
; Fused expression:    "( 12 , printCarVideo )4 "
	push	dword 12
	db	0x9A
section .relot
	dd	L190
section .text
L190:
	dd	_printCarVideo
	sub	sp, -4

section .rodata
L191:
	db	10," Pulse una tecla para destruirlos "
	times	1 db 0

section .text
; RPN'ized expression: "( L191 printStrVideo ) "
; Expanded expression: " L191  printStrVideo ()4 "
; Fused expression:    "( L191 , printStrVideo )4 "
section .relod
	dd	L192
section .text
	db	0x66, 0x68
L192:
	dd	L191
	db	0x9A
section .relot
	dd	L193
section .text
L193:
	dd	_printStrVideo
	sub	sp, -4
; while
; loc     <something> : char
; loc     <something> : char
; RPN'ized expression: "( leerTeclaListaBDA ) (something196) 0 (something197) == "
; Expanded expression: " leerTeclaListaBDA ()0 signed char 0 == "
L194:
; Fused expression:    "( leerTeclaListaBDA )0 signed char == ax 0 IF! "
	db	0x9A
section .relot
	dd	L198
section .text
L198:
	dd	_leerTeclaListaBDA
	movsx	eax, al
	cmp	eax, 0
	jne	L195
	jmp	L194
L195:

section .rodata
L199:
	db	10,10," Destruyendo tid = thread_join(-1, NULL)     "
	times	1 db 0

section .text
; RPN'ized expression: "( L199 printStrVideo ) "
; Expanded expression: " L199  printStrVideo ()4 "
; Fused expression:    "( L199 , printStrVideo )4 "
section .relod
	dd	L200
section .text
	db	0x66, 0x68
L200:
	dd	L199
	db	0x9A
section .relot
	dd	L201
section .text
L201:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "fin TRUE = "
; Expanded expression: "fin 1 =(4) "
; Fused expression:    "fin =(204) *ax 1 "
section .relod
	dd	L202
section .text
	db	0x66, 0xB8
L202:
	dd	_fin
	mov	ebx, eax
	mov	eax, 1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; while
; RPN'ized expression: "cont 0 > "
; Expanded expression: "(@-20) *(4) 0 > "
L203:
; Fused expression:    "> *(@-20) 0 IF! "
	mov	eax, [bp-20]
	cmp	eax, 0
	jle	L204
; {
; loc         <something> : * unsigned char
; RPN'ized expression: "tid ( 0 (something205) , 1 -u thread_join ) = "
; Expanded expression: "(@-8)  0  -1  thread_join ()8 =(4) "
; Fused expression:    "( 0 , -1 , thread_join )8 =(204) *(@-8) ax "
	push	dword 0
	push	dword -1
	db	0x9A
section .relot
	dd	L206
section .text
L206:
	dd	_thread_join
	sub	sp, -8
	mov	[bp-8], eax

section .rodata
L207:
	db	8,8,8,8
	times	1 db 0

section .text
; RPN'ized expression: "( L207 printStrVideo ) "
; Expanded expression: " L207  printStrVideo ()4 "
; Fused expression:    "( L207 , printStrVideo )4 "
section .relod
	dd	L208
section .text
	db	0x66, 0x68
L208:
	dd	L207
	db	0x9A
section .relot
	dd	L209
section .text
L209:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , tid printDecVideo ) "
; Expanded expression: " 4  (@-8) *(4)  printDecVideo ()8 "
; Fused expression:    "( 4 , *(4) (@-8) , printDecVideo )8 "
	push	dword 4
	push	dword [bp-8]
	db	0x9A
section .relot
	dd	L210
section .text
L210:
	dd	_printDecVideo
	sub	sp, -8
; RPN'ized expression: "cont --p "
; Expanded expression: "(@-20) --p(4) "
; Fused expression:    "--p(4) *(@-20) "
	mov	eax, [bp-20]
	dec	dword [bp-20]
; }
	jmp	L203
L204:

section .rodata
L211:
	db	10,10," Todos los threads han sido destruidos "
	times	1 db 0

section .text
; RPN'ized expression: "( L211 printStrVideo ) "
; Expanded expression: " L211  printStrVideo ()4 "
; Fused expression:    "( L211 , printStrVideo )4 "
section .relod
	dd	L212
section .text
	db	0x66, 0x68
L212:
	dd	L211
	db	0x9A
section .relot
	dd	L213
section .text
L213:
	dd	_printStrVideo
	sub	sp, -4

section .rodata
L214:
	db	10,10," Pulse una tecla para continuar ",10
	times	1 db 0

section .text
; RPN'ized expression: "( L214 printStrVideo ) "
; Expanded expression: " L214  printStrVideo ()4 "
; Fused expression:    "( L214 , printStrVideo )4 "
section .relod
	dd	L215
section .text
	db	0x66, 0x68
L215:
	dd	L214
	db	0x9A
section .relot
	dd	L216
section .text
L216:
	dd	_printStrVideo
	sub	sp, -4
cli
L42:
	db	0x66
	leave
	retf
L217:

section .fxnsz
	dd	L217 - _demo_5

section .text
L45:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
	mov	edi, [bp+16]
	ror	edi, 4
	mov	es, di
	shr	edi, 28
	mov	esi, [bp+12]
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ebx, [bp+8]
	cld
L218:
	mov	ecx, 32768
	cmp	ebx, ecx
	jc	L219
	sub	ebx, ecx
	rep	movsb
	and	di, 15
	mov	ax, es
	add	ax, 2048
	mov	es, ax
	and	si, 15
	mov	ax, ds
	add	ax, 2048
	mov	ds, ax
	jmp	L218
L219:
	mov	cx, bx
	rep	movsb
	mov	eax, [bp+16]
	db	0x66
	leave
	retf


	extern	_thread_yield
	extern	_thread_exit
	extern	_ptrBiosArea
	extern	_printCarVideo
	extern	_strlen
	extern	_pantallazo
	extern	_leerTeclaListaBDA
	extern	_thread_create
	extern	_thread_join
	extern	_printStrVideo
	extern	_printDecVideo
	extern	_mostrarListaLibres
	extern	_tamBloqueMax
	extern	_printHexVideo

; Syntax/declaration table/stack:
; Bytes used: 14945/40960


; Macro table:
; Macro __SMALLER_C__ = `0x0100`
; Macro __SMALLER_C_32__ = ``
; Macro __HUGE__ = ``
; Macro __SMALLER_C_SCHAR__ = ``
; Bytes used: 74/5120


; Identifier table:
; Ident __floatsisf
; Ident __floatunsisf
; Ident __fixsfsi
; Ident __fixunssfsi
; Ident __addsf3
; Ident __subsf3
; Ident __negsf2
; Ident __mulsf3
; Ident __divsf3
; Ident __lesf2
; Ident __gesf2
; Ident intptr_t
; Ident uintptr_t
; Ident intmax_t
; Ident uintmax_t
; Ident int8_t
; Ident int_least8_t
; Ident int_fast8_t
; Ident uint8_t
; Ident uint_least8_t
; Ident uint_fast8_t
; Ident int16_t
; Ident int_least16_t
; Ident int_fast16_t
; Ident uint16_t
; Ident uint_least16_t
; Ident uint_fast16_t
; Ident int32_t
; Ident int_least32_t
; Ident int_fast32_t
; Ident uint32_t
; Ident uint_least32_t
; Ident uint_fast32_t
; Ident <something>
; Ident quot
; Ident rem
; Ident imaxdiv_t
; Ident FALSE
; Ident TRUE
; Ident bool_t
; Ident pointer_t
; Ident funcion_t
; Ident manejador_t
; Ident rti_t
; Ident isr_t
; Ident handler_t
; Ident retardarThread_t
; Ident ptrTVI_t
; Ident modoSO1_Bin
; Ident modoSO1_Exe
; Ident modoSO1_Bs
; Ident modoSO1_t
; Ident lo
; Ident hi
; Ident lh_t
; Ident offset
; Ident segment
; Ident address_t
; Ident ptr
; Ident adr
; Ident uPtrAdr_t
; Ident pid_t
; Ident tid_t
; Ident uid_t
; Ident gid_t
; Ident pindx_t
; Ident tindx_t
; Ident df_t
; Ident dfs_t
; Ident rindx_t
; Ident modoAp_t
; Ident DS
; Ident ES
; Ident EDI
; Ident ESI
; Ident EBP
; Ident ESP
; Ident EBX
; Ident EDX
; Ident ECX
; Ident EAX
; Ident IP
; Ident CS
; Ident Flags
; Ident tramaDWords_t
; Ident DI
; Ident rDI
; Ident SI
; Ident rSI
; Ident BP
; Ident rBP
; Ident SP
; Ident rSP
; Ident BX
; Ident rBX
; Ident DX
; Ident rDX
; Ident CX
; Ident rCX
; Ident AX
; Ident rAX
; Ident tramaWords_t
; Ident BL
; Ident BH
; Ident rB
; Ident DL
; Ident DH
; Ident rD
; Ident CL
; Ident CH
; Ident rC
; Ident AL
; Ident AH
; Ident rA
; Ident tramaBytes_t
; Ident td
; Ident tw
; Ident tb
; Ident trama_t
; Ident tam
; Ident sig
; Ident ant
; Ident aux
; Ident relleno
; Ident bloque_t
; Ident ptrBloque_t
; Ident cab
; Ident dobleEnlace_t
; Ident numElem
; Ident primero
; Ident cabecera
; Ident e
; Ident c2c_t
; Ident posicionC2c
; Ident i
; Ident c2c
; Ident eliminarC2c
; Ident apilarC2c
; Ident encolarC2c
; Ident desencolarC2c
; Ident inicializarC2c
; Ident compartida
; Ident ptrC2c_t
; Ident posicionPC2c
; Ident eliminarPC2c
; Ident ptrC2c
; Ident apilarPC2c
; Ident encolarPC2c
; Ident desencolarPC2c
; Ident inicializarPC2c
; Ident callBack_t
; Ident arg
; Ident num
; Ident in
; Ident out
; Ident max
; Ident callBack
; Ident descCcb_t
; Ident ccb_t
; Ident inicCcb
; Ident ccb
; Ident encolarCcb
; Ident cb
; Ident desencolarCcb
; Ident eliminarCcb
; Ident eliminarSegCcb
; Ident segmento
; Ident vaciarCcb
; Ident atenderCcb
; Ident libre
; Ident preparado
; Ident ejecutandose
; Ident bloqueado
; Ident estado_t
; Ident modoAp
; Ident dfs
; Ident pos
; Ident dfa_t
; Ident pid
; Ident noStatus
; Ident status
; Ident ppindx
; Ident hpindx
; Ident c2cHijos
; Ident c2cThreads
; Ident CSProc
; Ident tamCodigo
; Ident desplBSS
; Ident desplPila
; Ident tamFichero
; Ident programa
; Ident comando
; Ident nfa
; Ident tfa
; Ident uid
; Ident gid
; Ident descProceso_t
; Ident tid
; Ident estado
; Ident esperandoPor
; Ident trama
; Ident ptindx
; Ident htindx
; Ident pindx
; Ident SSThread
; Ident SP0
; Ident descThread_t
; Ident flibre
; Ident fRegular
; Ident fedBloques
; Ident fedCaracteres
; Ident tuberia
; Ident tipoFichero_t
; Ident tipo
; Ident nombre
; Ident rindx
; Ident menor
; Ident shareMode
; Ident contAp_L
; Ident contAp_E
; Ident descFichero_t
; Ident rLibre
; Ident rDCaracteres
; Ident rDBloques
; Ident rTuberia
; Ident rGP
; Ident rGM
; Ident rSF
; Ident rOtro
; Ident tipoRecurso_t
; Ident open_t
; Ident modo
; Ident release_t
; Ident read_t
; Ident dir
; Ident nbytes
; Ident aio_read_t
; Ident write_t
; Ident aio_write_t
; Ident lseek_t
; Ident whence
; Ident fcntl_t
; Ident cmd
; Ident ioctl_t
; Ident request
; Ident eliminar_t
; Ident tindx
; Ident c2cFichRec
; Ident numVI
; Ident nVInt
; Ident irq
; Ident isr
; Ident open
; Ident release
; Ident read
; Ident aio_read
; Ident write
; Ident aio_write
; Ident lseek
; Ident fcntl
; Ident ioctl
; Ident eliminar
; Ident descRecurso_t
; Ident SP0_So1
; Ident IMR
; Ident modoSO1
; Ident ptrDebugWord
; Ident info_t
; Ident signatura
; Ident bytesUltSector
; Ident sectores
; Ident numDirReub
; Ident numParCabecera
; Ident minAlloc
; Ident maxAlloc
; Ident SS0
; Ident checkSum
; Ident IP0
; Ident CS0
; Ident offTablaReub
; Ident numOverlay
; Ident cabecera_t
; Ident Libres
; Ident Ocupados
; Ident e2DescProceso
; Ident e2DescThread
; Ident e2DescFichero
; Ident e2DescRecurso
; Ident e2Hijos
; Ident e2Threads
; Ident e2Preparados
; Ident e2Urgentes
; Ident e2POrdenados
; Ident e2TDormidos
; Ident e2FichRec
; Ident e2PFR_t
; Ident DPLibres
; Ident DPOcupados
; Ident DTLibres
; Ident DTOcupados
; Ident TPreparados
; Ident TUrgentes
; Ident POrdenados
; Ident TDormidos
; Ident DFLibres
; Ident DFOcupados
; Ident DRLibres
; Ident DROcupados
; Ident numColasPFR
; Ident cPFR_t
; Ident sigThread_t
; Ident activarThread_t
; Ident buscarNuevoThreadActual_t
; Ident bloquearThreadActual_t
; Ident ptrIndProcesoActual
; Ident ptrIndThreadActual
; Ident ptrTramaThread
; Ident ptrActivarAlEpilogo
; Ident ptrDescProceso
; Ident tamDescProceso
; Ident ptrDescThread
; Ident tamDescThread
; Ident ptrDescFichero
; Ident ptrDescRecurso
; Ident ptrC2cPFR
; Ident ptrE2PFR
; Ident ptrNivelActivacionSO1H
; Ident ptrEnHalt
; Ident ptrHayTic
; Ident ptrCcbAlEpilogo
; Ident ptrSS_Thread
; Ident ptrSP_Thread
; Ident ptrSS_Kernel
; Ident ptrSP0_Kernel
; Ident SP0_SO1H
; Ident ptrContRodajas
; Ident ptrContTicsRodaja
; Ident ptrVIOrg
; Ident sigThread
; Ident activarThread
; Ident buscarNuevoThreadActual
; Ident bloquearThreadActual
; Ident ptrListaLibres
; Ident ptrTamBloqueMax
; Ident descSO1H_t
; Ident opciones
; Ident thread_attribs_t
; Ident thread_create
; Ident attribs
; Ident funcionInicial
; Ident thread_join
; Ident res
; Ident thread_exit
; Ident thread_yield
; Ident thread_self
; Ident car
; Ident atr
; Ident pos_t
; Ident t
; Ident pantalla_t
; Ident tamPantalla
; Ident numFilas
; Ident pantallazo
; Ident pantalla
; Ident esqSupDeF
; Ident esqSupDeC
; Ident esqInfIzF
; Ident esqInfIzC
; Ident borrarPantalla
; Ident borrarCPantalla
; Ident copiarPantalla
; Ident p1
; Ident p2
; Ident copiarCPantalla
; Ident scrollPantalla
; Ident scrollCPantalla
; Ident cursorF
; Ident cursorC
; Ident lineaOriginal1
; Ident lineaOriginal2
; Ident inicMemVideo
; Ident finMemVideo
; Ident goToXYVideo
; Ident F
; Ident C
; Ident printCarVideo
; Ident printLnVideo
; Ident printStrVideo
; Ident str
; Ident printStrHastaVideo
; Ident n
; Ident lleno
; Ident printDecVideo
; Ident l
; Ident printLDecVideo
; Ident printIntVideo
; Ident printLIntVideo
; Ident printHexVideo
; Ident printLHexVideo
; Ident printBinVideo
; Ident printLBinVideo
; Ident printPtrVideo
; Ident printByteVideo
; Ident b
; Ident printWordVideo
; Ident w
; Ident printCadVideo
; Ident cad
; Ident HWLIST_t
; Ident KBDFLAGS_t
; Ident KBDSTATUS_t
; Ident VIDEOCONTROL_t
; Ident DRECSTATUS_t
; Ident DMOTORSTATUS_t
; Ident FDOPSTATUS_t
; Ident VIDEOSWITCHES_t
; Ident VGAOPTIONS_t
; Ident VIDEO_paramtbl
; Ident VIDEO_dynsavearea
; Ident VIDEO_text_charset
; Ident VIDEO_graph_charset
; Ident VIDEO_savetbl2
; Ident VIDEOSAVETBL_t
; Ident VPARAM_width
; Ident VPARAM_height
; Ident VPARAM_hchar
; Ident VPARAM_pagesize
; Ident VPARAM_SEQC
; Ident VPARAM_MISC
; Ident VPARAM_CRTC
; Ident VPARAM_ATC
; Ident VPARAM_GRC
; Ident VIDEOPARAM_t
; Ident IVT
; Ident COM_base
; Ident LPT_base
; Ident XBDA_seg
; Ident HW_list
; Ident relleno1
; Ident basemem_K
; Ident relleno2
; Ident KBD_flags
; Ident relleno3
; Ident KBD_bufhead
; Ident KBD_buftail
; Ident KBD_buffer
; Ident dRecStatus
; Ident dMotorStatus
; Ident motorShutoffCounter
; Ident fdOpStatus
; Ident relleno4
; Ident VIDEO_mode
; Ident VIDEO_width
; Ident VIDEO_pagesize
; Ident VIDEO_pageoff
; Ident CURSOR_pos
; Ident CURSOR_shape
; Ident VIDEO_pagActiva
; Ident CRTC_base
; Ident CRT_MODE
; Ident CRT_PALETTE
; Ident relleno5
; Ident BIOS_timer
; Ident BIOS_overflow
; Ident BIOS_ctrlbreak
; Ident BIOS_POSTreset
; Ident relleno6
; Ident BIOS_HD_cnt
; Ident relleno7
; Ident LPT_timeout
; Ident BIOS_4B_flags
; Ident COM_timeout
; Ident KBD_start
; Ident KBD_end1
; Ident VIDEO_lastrow
; Ident VIDEO_hchar
; Ident VIDEO_control
; Ident VIDEO_switches
; Ident VGA_options
; Ident VGA_DCC_index
; Ident relleno8
; Ident KBD_status
; Ident TIMER_waitflag
; Ident TIMER_waitmks
; Ident TIMER_active
; Ident relleno9
; Ident VIDEO_ptrtable
; Ident relleno10
; Ident IAC
; Ident BIOSAREA_t
; Ident ptrBiosArea
; Ident ptrFechaBios
; Ident tipoOrdenador
; Ident rebootLegacy
; Ident tipoTeclado
; Ident leerTeclaBIOS
; Ident leerTeclaExtBIOS
; Ident teclaListaBIOS
; Ident leerTeclaListaBDA
; Ident teclaListaBDA
; Ident printCarBIOS
; Ident printCarPagBIOS
; Ident pag
; Ident printCarAtrPagBIOS
; Ident printLnBIOS
; Ident printStrBIOS
; Ident printStrHastaBIOS
; Ident printDecBIOS
; Ident printLDecBIOS
; Ident printIntBIOS
; Ident printLIntBIOS
; Ident printHexBIOS
; Ident printLHexBIOS
; Ident printBinBIOS
; Ident printLBinBIOS
; Ident printPtrBIOS
; Ident printByteBIOS
; Ident printWordBIOS
; Ident printCadBIOS
; Ident esperarTicsBIOS
; Ident tics
; Ident modoDeVideo
; Ident establecerModoDeVideo
; Ident paginaActiva
; Ident establecerPaginaActiva
; Ident numPagsVideo
; Ident scrollPagBDA
; Ident numLineas
; Ident scrollPagBIOS
; Ident scrollBIOS
; Ident goToXYPag
; Ident fila
; Ident columna
; Ident goToXYBIOS
; Ident setCursorBIOS
; Ident linea1
; Ident linea2
; Ident ocultaCursorBIOS
; Ident readXYPagBIOS
; Ident readXYBIOS
; Ident memBIOS
; Ident enviarBIOS
; Ident recibirBIOS
; Ident hayApmBIOS
; Ident version
; Ident connectApmBIOS
; Ident disconnectApmBIOS
; Ident cpuIdleBIOS
; Ident cpuBusyBIOS
; Ident tamBloqueMax
; Ident listaLibres
; Ident k_buscarBloque
; Ident k_devolverBloque
; Ident rec_gm
; Ident inicGM
; Ident mostrarListaLibres
; Ident link_gm_k
; Ident size_t
; Ident memset
; Ident memcpy
; Ident memmove
; Ident memchr
; Ident memcmp
; Ident strcpy
; Ident strncpy
; Ident strxfrm
; Ident strcat
; Ident strncat
; Ident strlen
; Ident strchr
; Ident strrchr
; Ident strstr
; Ident strspn
; Ident strcspn
; Ident strpbrk
; Ident strtok
; Ident strcmp
; Ident strncmp
; Ident strcoll
; Ident strerror
; Ident numThreads
; Ident f_1
; Ident c_1
; Ident f_2
; Ident c_2
; Ident alto
; Ident ancho
; Ident fin
; Ident renglon
; Ident numOrden
; Ident funcion
; Ident funcioncilla
; Ident retardarTics
; Ident demo_5
; Ident frase
; Ident f1
; Ident c1
; Ident f2
; Ident c2
; Bytes used: 6448/16384

; Next label number: 220
; Compilation succeeded.
