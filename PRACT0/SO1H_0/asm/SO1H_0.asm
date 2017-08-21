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
; glb salvarPantallaInicial : (void) void
; glb restaurarPantallaInicial : (void) void
; glb puntoDeParada : (void) void
; glb assert : (
; prm     condicion : int
; prm     str : * char
;     ) void
; glb valorFlags : (void) unsigned short
; glb mostrarFlags : (void) void
; glb debug_parar : int
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
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
; RPN'ized expression: "48 "
; Expanded expression: "48 "
; Expression value: 48
; glb tipoAdaptador_t : int
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
; RPN'ized expression: "14 "
; Expanded expression: "14 "
; Expression value: 14
; glb fontSize_t : int
; glb numFilas : unsigned char
; glb numColumnas : unsigned char
; glb ptrPant : * union <something>
; glb tipoAdaptador : int
; glb redimensionable : int
; glb fontSize : unsigned char
; glb visibilidad : unsigned char
; glb inicBiosCrt : (void) void
; glb finBiosCrt : (void) void
; glb getFontSize : (void) int
; glb getFilas : (void) unsigned char
; glb comprobarAdaptador : (
; prm     tipoAdaptador : int
;     ) int
; glb tipoDeAdaptador : (void) int
; glb setCursorVisibilidad : (
; prm     valorDeVisibilidad : int
;     ) unsigned char
; glb setFontSize : (
; prm     size : int
;     ) void
; glb set25x80 : (void) void
; glb redimensionar : (
; prm     nFilas : unsigned char
; prm     nCols : unsigned char
;     ) void
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
; glb _start__text : char
; glb _stop__text : char
; glb _start__rodata : char
; glb _stop__rodata : char
; glb _start__data : char
; glb _stop__data : char
; glb _start__bss : char
; glb _stop__bss : char
; glb _start_allcode__ : char
; glb _stop_allcode__ : char
; glb _start_alldata__ : char
; glb _stop_alldata__ : char
; glb mostrarSeccion : (
; prm     start : unsigned
; prm     stop : unsigned
; prm     descripcion : * char
;     ) void
; glb mostrarSecciones : (void) void
; glb puntoDeParadaSO1 : (void) void
; glb leerScancodeListo : (void) unsigned char
; glb leerScancode : (void) unsigned char
; glb mirarLoQueHay : (
; prm     loQueHay : * unsigned short
;     ) void
; glb mostrarLoQueHay : (
; prm     loQueHay : unsigned short
;     ) void
; glb tirarS0 : (
; prm     loQueHay : unsigned short
;     ) void
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
; glb nombreDF_t : [16u] char
; RPN'ized expression: "40 "
; Expanded expression: "40 "
; Expression value: 40
; glb comandoDF_t : [40u] char
; glb tipoDF_t : int
; glb entradaDF_t : struct <something>
; glb dirInicial : unsigned
; glb dirCargaFichero : unsigned
; glb dirFinal : unsigned
; glb reubicacion_t : struct <something>
; glb reubicacion : * struct <something>
; glb numER : unsigned
; glb inicKernel : (void) void
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
; glb dirInicial : unsigned
section .bss
	alignb 4
	global	_dirInicial
_dirInicial:
	resb	4

; glb dirCargaFichero : unsigned
section .bss
	alignb 4
	global	_dirCargaFichero
_dirCargaFichero:
	resb	4

; glb dirFinal : unsigned
section .bss
	alignb 4
	global	_dirFinal
_dirFinal:
	resb	4

; glb numEDF : unsigned
section .bss
	alignb 4
	global	_numEDF
_numEDF:
	resb	4

; glb numER : unsigned
section .bss
	alignb 4
	global	_numER
_numER:
	resb	4

; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
; glb TR : [8u] struct <something>
section .bss
	alignb 4
	global	_TR
_TR:
	resb	704

; glb reubicacion : * struct <something>
section .data
	align 4
	global	_reubicacion
_reubicacion:
; =
; RPN'ized expression: "TR &u "
; Expanded expression: "TR "
section .relod
	dd	L1
section .data
L1:
	dd	_TR

; glb main : (void) int
section .text
	global	_main
_main:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         16
; loc     loQueHay : (@-4): unsigned short
cli
; if
; RPN'ized expression: "( modoSO1 ) modoSO1_Exe == "
; Expanded expression: " modoSO1 ()0 1 == "
; Fused expression:    "( modoSO1 )0 == ax 1 IF! "
	db	0x9A
section .relot
	dd	L6
section .text
L6:
	dd	_modoSO1
	cmp	eax, 1
	jne	L4
; RPN'ized expression: "( salvarPantallaInicial ) "
; Expanded expression: " salvarPantallaInicial ()0 "
; Fused expression:    "( salvarPantallaInicial )0 "
	db	0x9A
section .relot
	dd	L7
section .text
L7:
	dd	_salvarPantallaInicial
	jmp	L5
L4:
; else
; if
; RPN'ized expression: "( modoSO1 ) modoSO1_Bin == "
; Expanded expression: " modoSO1 ()0 0 == "
; Fused expression:    "( modoSO1 )0 == ax 0 IF! "
	db	0x9A
section .relot
	dd	L10
section .text
L10:
	dd	_modoSO1
	cmp	eax, 0
	jne	L8
; RPN'ized expression: "( 0 scrollBIOS ) "
; Expanded expression: " 0  scrollBIOS ()4 "
; Fused expression:    "( 0 , scrollBIOS )4 "
	push	dword 0
	db	0x9A
section .relot
	dd	L11
section .text
L11:
	dd	_scrollBIOS
	sub	sp, -4
L8:
L5:
; RPN'ized expression: "( inicMemVideo ) "
; Expanded expression: " inicMemVideo ()0 "
; Fused expression:    "( inicMemVideo )0 "
	db	0x9A
section .relot
	dd	L12
section .text
L12:
	dd	_inicMemVideo
; RPN'ized expression: "( ocultaCursorBIOS ) "
; Expanded expression: " ocultaCursorBIOS ()0 "
; Fused expression:    "( ocultaCursorBIOS )0 "
	db	0x9A
section .relot
	dd	L13
section .text
L13:
	dd	_ocultaCursorBIOS
; loc     <something> : * unsigned short
; RPN'ized expression: "( loQueHay &u (something14) mirarLoQueHay ) "
; Expanded expression: " (@-4)  mirarLoQueHay ()4 "
; Fused expression:    "( (@-4) , mirarLoQueHay )4 "
	xor	eax, eax
	mov	ax, ss
	shl	eax, 4
	lea	eax, [ebp+eax-4]
	push	eax
	db	0x9A
section .relot
	dd	L15
section .text
L15:
	dd	_mirarLoQueHay
	sub	sp, -4
; RPN'ized expression: "( loQueHay mostrarLoQueHay ) "
; Expanded expression: " (@-4) *(2)  mostrarLoQueHay ()4 "
; Fused expression:    "( *(2) (@-4) , mostrarLoQueHay )4 "
	mov	ax, [bp-4]
	movzx	eax, ax
	push	eax
	db	0x9A
section .relot
	dd	L16
section .text
L16:
	dd	_mostrarLoQueHay
	sub	sp, -4
; switch
; RPN'ized expression: "( modoSO1 ) "
; Expanded expression: " modoSO1 ()0 "
; Fused expression:    "( modoSO1 )0  "
	db	0x9A
section .relot
	dd	L19
section .text
L19:
	dd	_modoSO1
	jmp	L18
; {
; case
; RPN'ized expression: "modoSO1_Bin "
; Expanded expression: "0 "
; Expression value: 0
L20:
; case
; RPN'ized expression: "modoSO1_Exe "
; Expanded expression: "1 "
; Expression value: 1
L21:
; RPN'ized expression: "( mostrarFlags ) "
; Expanded expression: " mostrarFlags ()0 "
; Fused expression:    "( mostrarFlags )0 "
	db	0x9A
section .relot
	dd	L22
section .text
L22:
	dd	_mostrarFlags

section .rodata
L23:
	db	"=> SO1H v 0.1.2 "
	times	1 db 0

section .text
; RPN'ized expression: "( L23 printStrVideo ) "
; Expanded expression: " L23  printStrVideo ()4 "
; Fused expression:    "( L23 , printStrVideo )4 "
section .relod
	dd	L24
section .text
	db	0x66, 0x68
L24:
	dd	L23
	db	0x9A
section .relot
	dd	L25
section .text
L25:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( printLnVideo ) "
; Expanded expression: " printLnVideo ()0 "
; Fused expression:    "( printLnVideo )0 "
	db	0x9A
section .relot
	dd	L26
section .text
L26:
	dd	_printLnVideo

section .rodata
L27:
	db	7,10," ERROR: ints. no inhibidas"
	times	1 db 0

section .text
; RPN'ized expression: "( L27 , ( valorFlags ) 512 & 0 == assert ) "
; Expanded expression: " L27   valorFlags ()0 512 & 0 ==  assert ()8 "
; Fused expression:    "( L27 , ( valorFlags )0 & ax 512 == ax 0 , assert )8 "
section .relod
	dd	L28
section .text
	db	0x66, 0x68
L28:
	dd	L27
	db	0x9A
section .relot
	dd	L29
section .text
L29:
	dd	_valorFlags
	and	eax, 512
	cmp	eax, 0
	sete	al
	movzx	eax, al
	push	eax
	db	0x9A
section .relot
	dd	L30
section .text
L30:
	dd	_assert
	sub	sp, -8
; }
	jmp	L17
L18:
	cmp	eax, 0
	je	L20
	cmp	eax, 1
	je	L21
L17:
; RPN'ized expression: "( leerScancode ) "
; Expanded expression: " leerScancode ()0 "
; Fused expression:    "( leerScancode )0 "
	db	0x9A
section .relot
	dd	L31
section .text
L31:
	dd	_leerScancode
; RPN'ized expression: "( leerScancode ) "
; Expanded expression: " leerScancode ()0 "
; Fused expression:    "( leerScancode )0 "
	db	0x9A
section .relot
	dd	L32
section .text
L32:
	dd	_leerScancode
; loc     <something> : unsigned
; loc     <something> : unsigned
; loc     <something> : struct <something>
; RPN'ized expression: "dirInicial ( CSInicial ) (something34) 4 << (something33) <something35> sizeof + = "
; Expanded expression: "dirInicial  CSInicial ()0 4 << 32u + =(4) "
; Fused expression:    "dirInicial push-ax ( CSInicial )0 << ax 4 + ax 32u =(204) **sp ax "
section .relod
	dd	L36
section .text
	db	0x66, 0xB8
L36:
	dd	_dirInicial
	push	eax
	db	0x9A
section .relot
	dd	L37
section .text
L37:
	dd	_CSInicial
	shl	eax, 4
	add	eax, 32
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     ptrDirf : (@-8): * struct <something>
; loc     <something> : unsigned
; loc     <something> : int
; loc     <something> : int
; loc     <something> : unsigned
; loc     <something> : unsigned
; RPN'ized expression: "ptrDirf dirInicial _start__bss &u (something39) _start__text &u (something40) - (something38) + 15 (something41) + 4294967280u (something42) & = "
; Expanded expression: "(@-8) dirInicial *(4) _start__bss _start__text - + 15u + 4294967280u & =(4) "
; Fused expression:    "dirInicial push-ax _start__bss push-ax _start__text - *sp ax + **sp ax + ax 15u & ax 4294967280u =(204) *(@-8) ax "
section .relod
	dd	L43
section .text
	db	0x66, 0xB8
L43:
	dd	_dirInicial
	push	eax
section .relod
	dd	L44
section .text
	db	0x66, 0xB8
L44:
	dd	__start__bss
	push	eax
section .relod
	dd	L45
section .text
	db	0x66, 0xB8
L45:
	dd	__start__text
	mov	ecx, eax
	pop	eax
	sub	eax, ecx
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	add	eax, 15
	and	eax, -16
	mov	[bp-8], eax
; loc     <something> : struct <something>
; RPN'ized expression: "numEDF ptrDirf 1 + *u &u tam -> *u <something46> sizeof / = "
; Expanded expression: "numEDF (@-8) *(4) 80 + 60 + *(4) 80u /u =(4) "
; Fused expression:    "numEDF push-ax + *(@-8) 80 + ax 60 /u *ax 80u =(204) **sp ax "
section .relod
	dd	L47
section .text
	db	0x66, 0xB8
L47:
	dd	_numEDF
	push	eax
	mov	eax, [bp-8]
	add	eax, 80
	add	eax, 60
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	edx, 0
	mov	ecx, 80
	div	ecx
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax

section .rodata
L48:
	db	7,10," ERROR: SO1HIMG (numEDF > maxEDF)"
	times	1 db 0

section .text
; RPN'ized expression: "( L48 , numEDF 8 2 + <= assert ) "
; Expanded expression: " L48  numEDF *(4) 10 <=u  assert ()8 "
; Fused expression:    "( L48 , numEDF <=u *ax 10 , assert )8 "
section .relod
	dd	L49
section .text
	db	0x66, 0x68
L49:
	dd	L48
section .relod
	dd	L50
section .text
	db	0x66, 0xB8
L50:
	dd	_numEDF
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 10
	setbe	al
	movzx	eax, al
	push	eax
	db	0x9A
section .relot
	dd	L51
section .text
L51:
	dd	_assert
	sub	sp, -8

section .rodata
L52:
	db	10," CSInicial = "
	times	1 db 0

section .text
; RPN'ized expression: "( L52 printStrVideo ) "
; Expanded expression: " L52  printStrVideo ()4 "
; Fused expression:    "( L52 , printStrVideo )4 "
section .relod
	dd	L53
section .text
	db	0x66, 0x68
L53:
	dd	L52
	db	0x9A
section .relot
	dd	L54
section .text
L54:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , ( CSInicial ) printHexVideo ) "
; Expanded expression: " 4   CSInicial ()0  printHexVideo ()8 "
; Fused expression:    "( 4 , ( CSInicial )0 , printHexVideo )8 "
	push	dword 4
	db	0x9A
section .relot
	dd	L55
section .text
L55:
	dd	_CSInicial
	push	eax
	db	0x9A
section .relot
	dd	L56
section .text
L56:
	dd	_printHexVideo
	sub	sp, -8

section .rodata
L57:
	db	" dirInicial = "
	times	1 db 0

section .text
; RPN'ized expression: "( L57 printStrVideo ) "
; Expanded expression: " L57  printStrVideo ()4 "
; Fused expression:    "( L57 , printStrVideo )4 "
section .relod
	dd	L58
section .text
	db	0x66, 0x68
L58:
	dd	L57
	db	0x9A
section .relot
	dd	L59
section .text
L59:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 8 , dirInicial printLHexVideo ) "
; Expanded expression: " 8  dirInicial *(4)  printLHexVideo ()8 "
; Fused expression:    "( 8 , dirInicial *(4) ax , printLHexVideo )8 "
	push	dword 8
section .relod
	dd	L60
section .text
	db	0x66, 0xB8
L60:
	dd	_dirInicial
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L61
section .text
L61:
	dd	_printLHexVideo
	sub	sp, -8

section .rodata
L62:
	db	" ptrDirf = "
	times	1 db 0

section .text
; RPN'ized expression: "( L62 printStrVideo ) "
; Expanded expression: " L62  printStrVideo ()4 "
; Fused expression:    "( L62 , printStrVideo )4 "
section .relod
	dd	L63
section .text
	db	0x66, 0x68
L63:
	dd	L62
	db	0x9A
section .relot
	dd	L64
section .text
L64:
	dd	_printStrVideo
	sub	sp, -4
; loc     <something> : unsigned
; RPN'ized expression: "( 8 , ptrDirf (something65) printLHexVideo ) "
; Expanded expression: " 8  (@-8) *(4)  printLHexVideo ()8 "
; Fused expression:    "( 8 , *(4) (@-8) , printLHexVideo )8 "
	push	dword 8
	push	dword [bp-8]
	db	0x9A
section .relot
	dd	L66
section .text
L66:
	dd	_printLHexVideo
	sub	sp, -8

section .rodata
L67:
	db	" numEDF = "
	times	1 db 0

section .text
; RPN'ized expression: "( L67 printStrVideo ) "
; Expanded expression: " L67  printStrVideo ()4 "
; Fused expression:    "( L67 , printStrVideo )4 "
section .relod
	dd	L68
section .text
	db	0x66, 0x68
L68:
	dd	L67
	db	0x9A
section .relot
	dd	L69
section .text
L69:
	dd	_printStrVideo
	sub	sp, -4
; loc     <something> : unsigned
; RPN'ized expression: "( 1 , numEDF (something70) printLDecVideo ) "
; Expanded expression: " 1  numEDF *(4)  printLDecVideo ()8 "
; Fused expression:    "( 1 , numEDF *(4) ax , printLDecVideo )8 "
	push	dword 1
section .relod
	dd	L71
section .text
	db	0x66, 0xB8
L71:
	dd	_numEDF
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L72
section .text
L72:
	dd	_printLDecVideo
	sub	sp, -8

section .rodata
L73:
	db	10,10," dirf: "
	times	1 db 0

section .text
; RPN'ized expression: "( L73 printStrVideo ) "
; Expanded expression: " L73  printStrVideo ()4 "
; Fused expression:    "( L73 , printStrVideo )4 "
section .relod
	dd	L74
section .text
	db	0x66, 0x68
L74:
	dd	L73
	db	0x9A
section .relot
	dd	L75
section .text
L75:
	dd	_printStrVideo
	sub	sp, -4

section .rodata
L76:
	db	10
	db	10
	db	" ind        nombre               comando        pos   tam  start  SS  SP0  t ",10
	db	" --- -------------------- -------------------- ----- ----- ----- ---- ---- - ",10
	times	1 db 0

section .text
; RPN'ized expression: "( L76 printStrVideo ) "
; Expanded expression: " L76  printStrVideo ()4 "
; Fused expression:    "( L76 , printStrVideo )4 "
section .relod
	dd	L77
section .text
	db	0x66, 0x68
L77:
	dd	L76
	db	0x9A
section .relot
	dd	L78
section .text
L78:
	dd	_printStrVideo
	sub	sp, -4
; for
; loc     i : (@-12): int
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-12) 0 =(4) "
; Fused expression:    "=(204) *(@-12) 0 "
	mov	eax, 0
	mov	[bp-12], eax
L79:
; RPN'ized expression: "i numEDF < "
; Expanded expression: "(@-12) *(4) numEDF *(4) <u "
; Fused expression:    "numEDF <u *(@-12) *ax IF! "
section .relod
	dd	L83
section .text
	db	0x66, 0xB8
L83:
	dd	_numEDF
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp-12]
	cmp	eax, ecx
	jae	L82
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-12) ++p(4) "
; {
; RPN'ized expression: "( 4 , i printDecVideo ) "
; Expanded expression: " 4  (@-12) *(4)  printDecVideo ()8 "
; Fused expression:    "( 4 , *(4) (@-12) , printDecVideo )8 "
	push	dword 4
	push	dword [bp-12]
	db	0x9A
section .relot
	dd	L84
section .text
L84:
	dd	_printDecVideo
	sub	sp, -8

section .rodata
L85:
	db	" "
	times	1 db 0

section .text
; RPN'ized expression: "( L85 printStrVideo ) "
; Expanded expression: " L85  printStrVideo ()4 "
; Fused expression:    "( L85 , printStrVideo )4 "
section .relod
	dd	L86
section .text
	db	0x66, 0x68
L86:
	dd	L85
	db	0x9A
section .relot
	dd	L87
section .text
L87:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( TRUE , 20 , ptrDirf i + *u &u nombre -> *u printStrHastaVideo ) "
; Expanded expression: " 1  20  (@-8) *(4) (@-12) *(4) 80 * + 0 +  printStrHastaVideo ()12 "
; Fused expression:    "( 1 , 20 , * *(@-12) 80 + *(@-8) ax + ax 0 , printStrHastaVideo )12 "
	push	dword 1
	push	dword 20
	mov	eax, [bp-12]
	imul	eax, eax, 80
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	push	eax
	db	0x9A
section .relot
	dd	L88
section .text
L88:
	dd	_printStrHastaVideo
	sub	sp, -12

section .rodata
L89:
	db	" "
	times	1 db 0

section .text
; RPN'ized expression: "( L89 printStrVideo ) "
; Expanded expression: " L89  printStrVideo ()4 "
; Fused expression:    "( L89 , printStrVideo )4 "
section .relod
	dd	L90
section .text
	db	0x66, 0x68
L90:
	dd	L89
	db	0x9A
section .relot
	dd	L91
section .text
L91:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( TRUE , 20 , ptrDirf i + *u &u comando -> *u printStrHastaVideo ) "
; Expanded expression: " 1  20  (@-8) *(4) (@-12) *(4) 80 * + 16 +  printStrHastaVideo ()12 "
; Fused expression:    "( 1 , 20 , * *(@-12) 80 + *(@-8) ax + ax 16 , printStrHastaVideo )12 "
	push	dword 1
	push	dword 20
	mov	eax, [bp-12]
	imul	eax, eax, 80
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	add	eax, 16
	push	eax
	db	0x9A
section .relot
	dd	L92
section .text
L92:
	dd	_printStrHastaVideo
	sub	sp, -12

section .rodata
L93:
	db	" "
	times	1 db 0

section .text
; RPN'ized expression: "( L93 printStrVideo ) "
; Expanded expression: " L93  printStrVideo ()4 "
; Fused expression:    "( L93 , printStrVideo )4 "
section .relod
	dd	L94
section .text
	db	0x66, 0x68
L94:
	dd	L93
	db	0x9A
section .relot
	dd	L95
section .text
L95:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 5 , ptrDirf i + *u &u pos -> *u printLHexVideo ) "
; Expanded expression: " 5  (@-8) *(4) (@-12) *(4) 80 * + 56 + *(4)  printLHexVideo ()8 "
; Fused expression:    "( 5 , * *(@-12) 80 + *(@-8) ax + ax 56 *(4) ax , printLHexVideo )8 "
	push	dword 5
	mov	eax, [bp-12]
	imul	eax, eax, 80
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	add	eax, 56
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L96
section .text
L96:
	dd	_printLHexVideo
	sub	sp, -8
; RPN'ized expression: "( 6 , ptrDirf i + *u &u tam -> *u printLDecVideo ) "
; Expanded expression: " 6  (@-8) *(4) (@-12) *(4) 80 * + 60 + *(4)  printLDecVideo ()8 "
; Fused expression:    "( 6 , * *(@-12) 80 + *(@-8) ax + ax 60 *(4) ax , printLDecVideo )8 "
	push	dword 6
	mov	eax, [bp-12]
	imul	eax, eax, 80
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	add	eax, 60
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L97
section .text
L97:
	dd	_printLDecVideo
	sub	sp, -8

section .rodata
L98:
	db	" "
	times	1 db 0

section .text
; RPN'ized expression: "( L98 printStrVideo ) "
; Expanded expression: " L98  printStrVideo ()4 "
; Fused expression:    "( L98 , printStrVideo )4 "
section .relod
	dd	L99
section .text
	db	0x66, 0x68
L99:
	dd	L98
	db	0x9A
section .relot
	dd	L100
section .text
L100:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 5 , ptrDirf i + *u &u start -> *u printLHexVideo ) "
; Expanded expression: " 5  (@-8) *(4) (@-12) *(4) 80 * + 64 + *(4)  printLHexVideo ()8 "
; Fused expression:    "( 5 , * *(@-12) 80 + *(@-8) ax + ax 64 *(4) ax , printLHexVideo )8 "
	push	dword 5
	mov	eax, [bp-12]
	imul	eax, eax, 80
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	add	eax, 64
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L101
section .text
L101:
	dd	_printLHexVideo
	sub	sp, -8

section .rodata
L102:
	db	" "
	times	1 db 0

section .text
; RPN'ized expression: "( L102 printStrVideo ) "
; Expanded expression: " L102  printStrVideo ()4 "
; Fused expression:    "( L102 , printStrVideo )4 "
section .relod
	dd	L103
section .text
	db	0x66, 0x68
L103:
	dd	L102
	db	0x9A
section .relot
	dd	L104
section .text
L104:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , ptrDirf i + *u &u SS -> *u printHexVideo ) "
; Expanded expression: " 4  (@-8) *(4) (@-12) *(4) 80 * + 72 + *(2)  printHexVideo ()8 "
; Fused expression:    "( 4 , * *(@-12) 80 + *(@-8) ax + ax 72 *(2) ax , printHexVideo )8 "
	push	dword 4
	mov	eax, [bp-12]
	imul	eax, eax, 80
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	add	eax, 72
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
	dd	L105
section .text
L105:
	dd	_printHexVideo
	sub	sp, -8

section .rodata
L106:
	db	" "
	times	1 db 0

section .text
; RPN'ized expression: "( L106 printStrVideo ) "
; Expanded expression: " L106  printStrVideo ()4 "
; Fused expression:    "( L106 , printStrVideo )4 "
section .relod
	dd	L107
section .text
	db	0x66, 0x68
L107:
	dd	L106
	db	0x9A
section .relot
	dd	L108
section .text
L108:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , ptrDirf i + *u &u SP0 -> *u printHexVideo ) "
; Expanded expression: " 4  (@-8) *(4) (@-12) *(4) 80 * + 74 + *(2)  printHexVideo ()8 "
; Fused expression:    "( 4 , * *(@-12) 80 + *(@-8) ax + ax 74 *(2) ax , printHexVideo )8 "
	push	dword 4
	mov	eax, [bp-12]
	imul	eax, eax, 80
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	add	eax, 74
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
	dd	L109
section .text
L109:
	dd	_printHexVideo
	sub	sp, -8

section .rodata
L110:
	db	" "
	times	1 db 0

section .text
; RPN'ized expression: "( L110 printStrVideo ) "
; Expanded expression: " L110  printStrVideo ()4 "
; Fused expression:    "( L110 , printStrVideo )4 "
section .relod
	dd	L111
section .text
	db	0x66, 0x68
L111:
	dd	L110
	db	0x9A
section .relot
	dd	L112
section .text
L112:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 1 , ptrDirf i + *u &u tipo -> *u printDecVideo ) "
; Expanded expression: " 1  (@-8) *(4) (@-12) *(4) 80 * + 76 + *(4)  printDecVideo ()8 "
; Fused expression:    "( 1 , * *(@-12) 80 + *(@-8) ax + ax 76 *(4) ax , printDecVideo )8 "
	push	dword 1
	mov	eax, [bp-12]
	imul	eax, eax, 80
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	add	eax, 76
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L113
section .text
L113:
	dd	_printDecVideo
	sub	sp, -8
; RPN'ized expression: "( printLnVideo ) "
; Expanded expression: " printLnVideo ()0 "
; Fused expression:    "( printLnVideo )0 "
	db	0x9A
section .relot
	dd	L114
section .text
L114:
	dd	_printLnVideo
; }
L80:
; Fused expression:    "++p(4) *(@-12) "
	mov	eax, [bp-12]
	inc	dword [bp-12]
	jmp	L79
L82:
; loc     dirReub : (@-12): unsigned
; RPN'ized expression: "dirReub dirInicial = "
; Expanded expression: "(@-12) dirInicial *(4) =(4) "
; Fused expression:    "dirInicial =(204) *(@-12) *ax "
section .relod
	dd	L115
section .text
	db	0x66, 0xB8
L115:
	dd	_dirInicial
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-12], eax
; if
; RPN'ized expression: "( modoSO1 ) modoSO1_Exe != "
; Expanded expression: " modoSO1 ()0 1 != "
; Fused expression:    "( modoSO1 )0 != ax 1 IF! "
	db	0x9A
section .relot
	dd	L118
section .text
L118:
	dd	_modoSO1
	cmp	eax, 1
	je	L116
; RPN'ized expression: "dirCargaFichero dirInicial = "
; Expanded expression: "dirCargaFichero dirInicial *(4) =(4) "
; Fused expression:    "dirCargaFichero push-ax dirInicial =(204) **sp *ax "
section .relod
	dd	L119
section .text
	db	0x66, 0xB8
L119:
	dd	_dirCargaFichero
	push	eax
section .relod
	dd	L120
section .text
	db	0x66, 0xB8
L120:
	dd	_dirInicial
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
	mov	[si], eax
	jmp	L117
L116:
; else
; loc     <something> : struct <something>
; RPN'ized expression: "dirCargaFichero dirInicial <something121> sizeof - = "
; Expanded expression: "dirCargaFichero dirInicial *(4) 32u - =(4) "
; Fused expression:    "dirCargaFichero push-ax dirInicial - *ax 32u =(204) **sp ax "
section .relod
	dd	L122
section .text
	db	0x66, 0xB8
L122:
	dd	_dirCargaFichero
	push	eax
section .relod
	dd	L123
section .text
	db	0x66, 0xB8
L123:
	dd	_dirInicial
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	sub	eax, 32
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
L117:
; for
; loc     i : (@-16): int
; RPN'ized expression: "i 2 = "
; Expanded expression: "(@-16) 2 =(4) "
; Fused expression:    "=(204) *(@-16) 2 "
	mov	eax, 2
	mov	[bp-16], eax
L124:
; RPN'ized expression: "i numEDF < "
; Expanded expression: "(@-16) *(4) numEDF *(4) <u "
; Fused expression:    "numEDF <u *(@-16) *ax IF! "
section .relod
	dd	L128
section .text
	db	0x66, 0xB8
L128:
	dd	_numEDF
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp-16]
	cmp	eax, ecx
	jae	L127
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-16) ++p(4) "
; {

section .rodata
L129:
	db	10," reubicando i = "
	times	1 db 0

section .text
; RPN'ized expression: "( L129 printStrVideo ) "
; Expanded expression: " L129  printStrVideo ()4 "
; Fused expression:    "( L129 , printStrVideo )4 "
section .relod
	dd	L130
section .text
	db	0x66, 0x68
L130:
	dd	L129
	db	0x9A
section .relot
	dd	L131
section .text
L131:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 1 , i printLIntVideo ) "
; Expanded expression: " 1  (@-16) *(4)  printLIntVideo ()8 "
; Fused expression:    "( 1 , *(4) (@-16) , printLIntVideo )8 "
	push	dword 1
	push	dword [bp-16]
	db	0x9A
section .relot
	dd	L132
section .text
L132:
	dd	_printLIntVideo
	sub	sp, -8

section .rodata
L133:
	db	" nombre = "
	times	1 db 0

section .text
; RPN'ized expression: "( L133 printStrVideo ) "
; Expanded expression: " L133  printStrVideo ()4 "
; Fused expression:    "( L133 , printStrVideo )4 "
section .relod
	dd	L134
section .text
	db	0x66, 0x68
L134:
	dd	L133
	db	0x9A
section .relot
	dd	L135
section .text
L135:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( ptrDirf i + *u &u nombre -> *u printStrVideo ) "
; Expanded expression: " (@-8) *(4) (@-16) *(4) 80 * + 0 +  printStrVideo ()4 "
; Fused expression:    "( * *(@-16) 80 + *(@-8) ax + ax 0 , printStrVideo )4 "
	mov	eax, [bp-16]
	imul	eax, eax, 80
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	push	eax
	db	0x9A
section .relot
	dd	L136
section .text
L136:
	dd	_printStrVideo
	sub	sp, -4
; loc         <something> : struct <something>
; RPN'ized expression: "( <something137> sizeof , ptrDirf i + *u &u , reubicacion i 2 - + *u &u entradaDF -> *u &u memcpy ) "
; Expanded expression: " 80u  (@-8) *(4) (@-16) *(4) 80 * +  reubicacion *(4) (@-16) *(4) 2 - 88 * + 0 +  memcpy ()12 "
; Fused expression:    "( 80u , * *(@-16) 80 + *(@-8) ax , reubicacion push-ax - *(@-16) 2 * ax 88 + **sp ax + ax 0 , memcpy )12 "
	push	dword 80
	mov	eax, [bp-16]
	imul	eax, eax, 80
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	push	eax
section .relod
	dd	L138
section .text
	db	0x66, 0xB8
L138:
	dd	_reubicacion
	push	eax
	mov	eax, [bp-16]
	sub	eax, 2
	imul	eax, eax, 88
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	push	eax
	db	0x9A
section .relot
	dd	L139
section .text
L139:
	dd	_memcpy
	sub	sp, -12
; RPN'ized expression: "reubicacion i 2 - + *u &u origen -> *u dirCargaFichero ptrDirf i + *u &u pos -> *u + = "
; Expanded expression: "reubicacion *(4) (@-16) *(4) 2 - 88 * + 80 + dirCargaFichero *(4) (@-8) *(4) (@-16) *(4) 80 * + 56 + *(4) + =(4) "
; Fused expression:    "reubicacion push-ax - *(@-16) 2 * ax 88 + **sp ax + ax 80 push-ax dirCargaFichero push-ax * *(@-16) 80 + *(@-8) ax + ax 56 + **sp *ax =(204) **sp ax "
section .relod
	dd	L140
section .text
	db	0x66, 0xB8
L140:
	dd	_reubicacion
	push	eax
	mov	eax, [bp-16]
	sub	eax, 2
	imul	eax, eax, 88
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	add	eax, 80
	push	eax
section .relod
	dd	L141
section .text
	db	0x66, 0xB8
L141:
	dd	_dirCargaFichero
	push	eax
	mov	eax, [bp-16]
	imul	eax, eax, 80
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	add	eax, 56
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "reubicacion i 2 - + *u &u destino -> *u dirReub = "
; Expanded expression: "reubicacion *(4) (@-16) *(4) 2 - 88 * + 84 + (@-12) *(4) =(4) "
; Fused expression:    "reubicacion push-ax - *(@-16) 2 * ax 88 + **sp ax + ax 84 =(204) *ax *(@-12) "
section .relod
	dd	L142
section .text
	db	0x66, 0xB8
L142:
	dd	_reubicacion
	push	eax
	mov	eax, [bp-16]
	sub	eax, 2
	imul	eax, eax, 88
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	add	eax, 84
	mov	ebx, eax
	mov	eax, [bp-12]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; if
; RPN'ized expression: "ptrDirf i + *u &u tipo -> *u proceso_DF == ptrDirf i + *u &u tipo -> *u so1h_k_DF == || "
; Expanded expression: "(@-8) *(4) (@-16) *(4) 80 * + 76 + *(4) 3 == [sh||->145] (@-8) *(4) (@-16) *(4) 80 * + 76 + *(4) 2 == ||[145] "
; Fused expression:    "* *(@-16) 80 + *(@-8) ax + ax 76 == *ax 3 [sh||->145] * *(@-16) 80 + *(@-8) ax + ax 76 == *ax 2 ||[145]  "
	mov	eax, [bp-16]
	imul	eax, eax, 80
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	add	eax, 76
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 3
	sete	al
	movzx	eax, al
; JumpIfNotZero
	test	eax, eax
	jne	L145
	mov	eax, [bp-16]
	imul	eax, eax, 80
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	add	eax, 76
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 2
	sete	al
	movzx	eax, al
L145:
; JumpIfZero
	test	eax, eax
	je	L143
; loc         <something> : unsigned
; loc         <something> : unsigned
; RPN'ized expression: "dirReub dirReub ptrDirf i + *u &u SS -> *u (something146) 4 << + ptrDirf i + *u &u SP0 -> *u 15 + 4294967280u (something147) & + = "
; Expanded expression: "(@-12) (@-12) *(4) (@-8) *(4) (@-16) *(4) 80 * + 72 + *(2) 4 << + (@-8) *(4) (@-16) *(4) 80 * + 74 + *(2) 15 + 4294967280u & + =(4) "
; Fused expression:    "* *(@-16) 80 + *(@-8) ax + ax 72 << *ax 4 + *(@-12) ax push-ax * *(@-16) 80 + *(@-8) ax + ax 74 + *ax 15 & ax 4294967280u + *sp ax =(204) *(@-12) ax "
	mov	eax, [bp-16]
	imul	eax, eax, 80
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	add	eax, 72
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	shl	eax, 4
	mov	ecx, eax
	mov	eax, [bp-12]
	add	eax, ecx
	push	eax
	mov	eax, [bp-16]
	imul	eax, eax, 80
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	add	eax, 74
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	add	eax, 15
	and	eax, -16
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	[bp-12], eax
	jmp	L144
L143:
; else
; loc         <something> : unsigned
; RPN'ized expression: "dirReub dirReub ptrDirf i + *u &u tam -> *u 15 + 4294967280u (something148) & + = "
; Expanded expression: "(@-12) (@-12) *(4) (@-8) *(4) (@-16) *(4) 80 * + 60 + *(4) 15 + 4294967280u & + =(4) "
; Fused expression:    "* *(@-16) 80 + *(@-8) ax + ax 60 + *ax 15 & ax 4294967280u + *(@-12) ax =(204) *(@-12) ax "
	mov	eax, [bp-16]
	imul	eax, eax, 80
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	add	eax, 60
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 15
	and	eax, -16
	mov	ecx, eax
	mov	eax, [bp-12]
	add	eax, ecx
	mov	[bp-12], eax
L144:
; }
L125:
; Fused expression:    "++p(4) *(@-16) "
	mov	eax, [bp-16]
	inc	dword [bp-16]
	jmp	L124
L127:
; RPN'ized expression: "dirFinal dirReub = "
; Expanded expression: "dirFinal (@-12) *(4) =(4) "
; Fused expression:    "dirFinal =(204) *ax *(@-12) "
section .relod
	dd	L149
section .text
	db	0x66, 0xB8
L149:
	dd	_dirFinal
	mov	ebx, eax
	mov	eax, [bp-12]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "numER numEDF 2 - = "
; Expanded expression: "numER numEDF *(4) 2 - =(4) "
; Fused expression:    "numER push-ax numEDF - *ax 2 =(204) **sp ax "
section .relod
	dd	L150
section .text
	db	0x66, 0xB8
L150:
	dd	_numER
	push	eax
section .relod
	dd	L151
section .text
	db	0x66, 0xB8
L151:
	dd	_numEDF
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	sub	eax, 2
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax

section .rodata
L152:
	db	10,10," dirInicial = "
	times	1 db 0

section .text
; RPN'ized expression: "( L152 printStrVideo ) "
; Expanded expression: " L152  printStrVideo ()4 "
; Fused expression:    "( L152 , printStrVideo )4 "
section .relod
	dd	L153
section .text
	db	0x66, 0x68
L153:
	dd	L152
	db	0x9A
section .relot
	dd	L154
section .text
L154:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 8 , dirInicial printLHexVideo ) "
; Expanded expression: " 8  dirInicial *(4)  printLHexVideo ()8 "
; Fused expression:    "( 8 , dirInicial *(4) ax , printLHexVideo )8 "
	push	dword 8
section .relod
	dd	L155
section .text
	db	0x66, 0xB8
L155:
	dd	_dirInicial
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L156
section .text
L156:
	dd	_printLHexVideo
	sub	sp, -8

section .rodata
L157:
	db	" dirFinal = "
	times	1 db 0

section .text
; RPN'ized expression: "( L157 printStrVideo ) "
; Expanded expression: " L157  printStrVideo ()4 "
; Fused expression:    "( L157 , printStrVideo )4 "
section .relod
	dd	L158
section .text
	db	0x66, 0x68
L158:
	dd	L157
	db	0x9A
section .relot
	dd	L159
section .text
L159:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 8 , dirFinal printLHexVideo ) "
; Expanded expression: " 8  dirFinal *(4)  printLHexVideo ()8 "
; Fused expression:    "( 8 , dirFinal *(4) ax , printLHexVideo )8 "
	push	dword 8
section .relod
	dd	L160
section .text
	db	0x66, 0xB8
L160:
	dd	_dirFinal
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L161
section .text
L161:
	dd	_printLHexVideo
	sub	sp, -8

section .rodata
L162:
	db	10
	times	1 db 0

section .text
; RPN'ized expression: "( L162 printStrVideo ) "
; Expanded expression: " L162  printStrVideo ()4 "
; Fused expression:    "( L162 , printStrVideo )4 "
section .relod
	dd	L163
section .text
	db	0x66, 0x68
L163:
	dd	L162
	db	0x9A
section .relot
	dd	L164
section .text
L164:
	dd	_printStrVideo
	sub	sp, -4
; for
; loc     j : (@-16): int
; RPN'ized expression: "j 0 = "
; Expanded expression: "(@-16) 0 =(4) "
; Fused expression:    "=(204) *(@-16) 0 "
	mov	eax, 0
	mov	[bp-16], eax
L165:
; RPN'ized expression: "j numER < "
; Expanded expression: "(@-16) *(4) numER *(4) <u "
; Fused expression:    "numER <u *(@-16) *ax IF! "
section .relod
	dd	L169
section .text
	db	0x66, 0xB8
L169:
	dd	_numER
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp-16]
	cmp	eax, ecx
	jae	L168
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-16) ++p(4) "
; {
; RPN'ized expression: "( reubicacion j + *u &u entradaDF -> *u &u tam -> *u , reubicacion j + *u &u origen -> *u , reubicacion j + *u &u destino -> *u memmove ) "
; Expanded expression: " reubicacion *(4) (@-16) *(4) 88 * + 0 + 60 + *(4)  reubicacion *(4) (@-16) *(4) 88 * + 80 + *(4)  reubicacion *(4) (@-16) *(4) 88 * + 84 + *(4)  memmove ()12 "
; Fused expression:    "( reubicacion push-ax * *(@-16) 88 + **sp ax + ax 0 + ax 60 *(4) ax , reubicacion push-ax * *(@-16) 88 + **sp ax + ax 80 *(4) ax , reubicacion push-ax * *(@-16) 88 + **sp ax + ax 84 *(4) ax , memmove )12 "
section .relod
	dd	L170
section .text
	db	0x66, 0xB8
L170:
	dd	_reubicacion
	push	eax
	mov	eax, [bp-16]
	imul	eax, eax, 88
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	add	eax, 60
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
section .relod
	dd	L171
section .text
	db	0x66, 0xB8
L171:
	dd	_reubicacion
	push	eax
	mov	eax, [bp-16]
	imul	eax, eax, 88
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	add	eax, 80
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
section .relod
	dd	L172
section .text
	db	0x66, 0xB8
L172:
	dd	_reubicacion
	push	eax
	mov	eax, [bp-16]
	imul	eax, eax, 88
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	add	eax, 84
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L173
section .text
L173:
	dd	_memmove
	sub	sp, -12

section .rodata
L174:
	db	10," nombre = "
	times	1 db 0

section .text
; RPN'ized expression: "( L174 printStrVideo ) "
; Expanded expression: " L174  printStrVideo ()4 "
; Fused expression:    "( L174 , printStrVideo )4 "
section .relod
	dd	L175
section .text
	db	0x66, 0x68
L175:
	dd	L174
	db	0x9A
section .relot
	dd	L176
section .text
L176:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( TRUE , 20 , reubicacion j + *u &u entradaDF -> *u &u nombre -> *u printStrHastaVideo ) "
; Expanded expression: " 1  20  reubicacion *(4) (@-16) *(4) 88 * + 0 + 0 +  printStrHastaVideo ()12 "
; Fused expression:    "( 1 , 20 , reubicacion push-ax * *(@-16) 88 + **sp ax + ax 0 + ax 0 , printStrHastaVideo )12 "
	push	dword 1
	push	dword 20
section .relod
	dd	L177
section .text
	db	0x66, 0xB8
L177:
	dd	_reubicacion
	push	eax
	mov	eax, [bp-16]
	imul	eax, eax, 88
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	push	eax
	db	0x9A
section .relot
	dd	L178
section .text
L178:
	dd	_printStrHastaVideo
	sub	sp, -12

section .rodata
L179:
	db	" origen = "
	times	1 db 0

section .text
; RPN'ized expression: "( L179 printStrVideo ) "
; Expanded expression: " L179  printStrVideo ()4 "
; Fused expression:    "( L179 , printStrVideo )4 "
section .relod
	dd	L180
section .text
	db	0x66, 0x68
L180:
	dd	L179
	db	0x9A
section .relot
	dd	L181
section .text
L181:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 8 , reubicacion j + *u &u origen -> *u printLHexVideo ) "
; Expanded expression: " 8  reubicacion *(4) (@-16) *(4) 88 * + 80 + *(4)  printLHexVideo ()8 "
; Fused expression:    "( 8 , reubicacion push-ax * *(@-16) 88 + **sp ax + ax 80 *(4) ax , printLHexVideo )8 "
	push	dword 8
section .relod
	dd	L182
section .text
	db	0x66, 0xB8
L182:
	dd	_reubicacion
	push	eax
	mov	eax, [bp-16]
	imul	eax, eax, 88
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	add	eax, 80
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L183
section .text
L183:
	dd	_printLHexVideo
	sub	sp, -8

section .rodata
L184:
	db	" destino = "
	times	1 db 0

section .text
; RPN'ized expression: "( L184 printStrVideo ) "
; Expanded expression: " L184  printStrVideo ()4 "
; Fused expression:    "( L184 , printStrVideo )4 "
section .relod
	dd	L185
section .text
	db	0x66, 0x68
L185:
	dd	L184
	db	0x9A
section .relot
	dd	L186
section .text
L186:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 8 , reubicacion j + *u &u destino -> *u printLHexVideo ) "
; Expanded expression: " 8  reubicacion *(4) (@-16) *(4) 88 * + 84 + *(4)  printLHexVideo ()8 "
; Fused expression:    "( 8 , reubicacion push-ax * *(@-16) 88 + **sp ax + ax 84 *(4) ax , printLHexVideo )8 "
	push	dword 8
section .relod
	dd	L187
section .text
	db	0x66, 0xB8
L187:
	dd	_reubicacion
	push	eax
	mov	eax, [bp-16]
	imul	eax, eax, 88
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	add	eax, 84
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L188
section .text
L188:
	dd	_printLHexVideo
	sub	sp, -8

section .rodata
L189:
	db	" tam = "
	times	1 db 0

section .text
; RPN'ized expression: "( L189 printStrVideo ) "
; Expanded expression: " L189  printStrVideo ()4 "
; Fused expression:    "( L189 , printStrVideo )4 "
section .relod
	dd	L190
section .text
	db	0x66, 0x68
L190:
	dd	L189
	db	0x9A
section .relot
	dd	L191
section .text
L191:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 1 , reubicacion j + *u &u entradaDF -> *u &u tam -> *u printLDecVideo ) "
; Expanded expression: " 1  reubicacion *(4) (@-16) *(4) 88 * + 0 + 60 + *(4)  printLDecVideo ()8 "
; Fused expression:    "( 1 , reubicacion push-ax * *(@-16) 88 + **sp ax + ax 0 + ax 60 *(4) ax , printLDecVideo )8 "
	push	dword 1
section .relod
	dd	L192
section .text
	db	0x66, 0xB8
L192:
	dd	_reubicacion
	push	eax
	mov	eax, [bp-16]
	imul	eax, eax, 88
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	add	eax, 60
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L193
section .text
L193:
	dd	_printLDecVideo
	sub	sp, -8
; }
L166:
; Fused expression:    "++p(4) *(@-16) "
	mov	eax, [bp-16]
	inc	dword [bp-16]
	jmp	L165
L168:
; for
; loc     j : (@-16): int
; RPN'ized expression: "j 0 = "
; Expanded expression: "(@-16) 0 =(4) "
; Fused expression:    "=(204) *(@-16) 0 "
	mov	eax, 0
	mov	[bp-16], eax
L194:
; RPN'ized expression: "j numER < "
; Expanded expression: "(@-16) *(4) numER *(4) <u "
; Fused expression:    "numER <u *(@-16) *ax IF! "
section .relod
	dd	L198
section .text
	db	0x66, 0xB8
L198:
	dd	_numER
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp-16]
	cmp	eax, ecx
	jae	L197
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-16) ++p(4) "
; {
; if
; RPN'ized expression: "reubicacion j + *u &u entradaDF -> *u &u tipo -> *u proceso_DF == reubicacion j + *u &u entradaDF -> *u &u tipo -> *u so1h_k_DF == || "
; Expanded expression: "reubicacion *(4) (@-16) *(4) 88 * + 0 + 76 + *(4) 3 == [sh||->201] reubicacion *(4) (@-16) *(4) 88 * + 0 + 76 + *(4) 2 == ||[201] "
; Fused expression:    "reubicacion push-ax * *(@-16) 88 + **sp ax + ax 0 + ax 76 == *ax 3 [sh||->201] reubicacion push-ax * *(@-16) 88 + **sp ax + ax 0 + ax 76 == *ax 2 ||[201]  "
section .relod
	dd	L202
section .text
	db	0x66, 0xB8
L202:
	dd	_reubicacion
	push	eax
	mov	eax, [bp-16]
	imul	eax, eax, 88
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	add	eax, 76
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 3
	sete	al
	movzx	eax, al
; JumpIfNotZero
	test	eax, eax
	jne	L201
section .relod
	dd	L203
section .text
	db	0x66, 0xB8
L203:
	dd	_reubicacion
	push	eax
	mov	eax, [bp-16]
	imul	eax, eax, 88
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	add	eax, 76
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 2
	sete	al
	movzx	eax, al
L201:
; JumpIfZero
	test	eax, eax
	je	L199
; {
; loc             <something> : unsigned
; RPN'ized expression: "( reubicacion j + *u &u entradaDF -> *u &u SS -> *u (something204) 4 << reubicacion j + *u &u entradaDF -> *u &u tam -> *u - , 0 , reubicacion j + *u &u destino -> *u reubicacion j + *u &u entradaDF -> *u &u tam -> *u + memset ) "
; Expanded expression: " reubicacion *(4) (@-16) *(4) 88 * + 0 + 72 + *(2) 4 << reubicacion *(4) (@-16) *(4) 88 * + 0 + 60 + *(4) -  0  reubicacion *(4) (@-16) *(4) 88 * + 84 + *(4) reubicacion *(4) (@-16) *(4) 88 * + 0 + 60 + *(4) +  memset ()12 "
; Fused expression:    "( reubicacion push-ax * *(@-16) 88 + **sp ax + ax 0 + ax 72 << *ax 4 push-ax reubicacion push-ax * *(@-16) 88 + **sp ax + ax 0 + ax 60 - *sp *ax , 0 , reubicacion push-ax * *(@-16) 88 + **sp ax + ax 84 push-ax reubicacion push-ax * *(@-16) 88 + **sp ax + ax 0 + ax 60 + **sp *ax , memset )12 "
section .relod
	dd	L205
section .text
	db	0x66, 0xB8
L205:
	dd	_reubicacion
	push	eax
	mov	eax, [bp-16]
	imul	eax, eax, 88
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	add	eax, 72
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	shl	eax, 4
	push	eax
section .relod
	dd	L206
section .text
	db	0x66, 0xB8
L206:
	dd	_reubicacion
	push	eax
	mov	eax, [bp-16]
	imul	eax, eax, 88
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	add	eax, 60
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	pop	eax
	sub	eax, ecx
	push	eax
	push	dword 0
section .relod
	dd	L207
section .text
	db	0x66, 0xB8
L207:
	dd	_reubicacion
	push	eax
	mov	eax, [bp-16]
	imul	eax, eax, 88
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	add	eax, 84
	push	eax
section .relod
	dd	L208
section .text
	db	0x66, 0xB8
L208:
	dd	_reubicacion
	push	eax
	mov	eax, [bp-16]
	imul	eax, eax, 88
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	add	eax, 60
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	push	eax
	db	0x9A
section .relot
	dd	L209
section .text
L209:
	dd	_memset
	sub	sp, -12
; loc             <something> : unsigned
; loc             <something> : unsigned
; loc             <something> : unsigned
; RPN'ized expression: "( reubicacion j + *u &u entradaDF -> *u &u SP0 -> *u (something211) 15 + 4294967280u (something212) & , 0 , reubicacion j + *u &u destino -> *u reubicacion j + *u &u entradaDF -> *u &u SS -> *u (something210) 4 << + memset ) "
; Expanded expression: " reubicacion *(4) (@-16) *(4) 88 * + 0 + 74 + *(2) 15 + 4294967280u &  0  reubicacion *(4) (@-16) *(4) 88 * + 84 + *(4) reubicacion *(4) (@-16) *(4) 88 * + 0 + 72 + *(2) 4 << +  memset ()12 "
; Fused expression:    "( reubicacion push-ax * *(@-16) 88 + **sp ax + ax 0 + ax 74 + *ax 15 & ax 4294967280u , 0 , reubicacion push-ax * *(@-16) 88 + **sp ax + ax 84 push-ax reubicacion push-ax * *(@-16) 88 + **sp ax + ax 0 + ax 72 << *ax 4 + **sp ax , memset )12 "
section .relod
	dd	L213
section .text
	db	0x66, 0xB8
L213:
	dd	_reubicacion
	push	eax
	mov	eax, [bp-16]
	imul	eax, eax, 88
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	add	eax, 74
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	add	eax, 15
	and	eax, -16
	push	eax
	push	dword 0
section .relod
	dd	L214
section .text
	db	0x66, 0xB8
L214:
	dd	_reubicacion
	push	eax
	mov	eax, [bp-16]
	imul	eax, eax, 88
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	add	eax, 84
	push	eax
section .relod
	dd	L215
section .text
	db	0x66, 0xB8
L215:
	dd	_reubicacion
	push	eax
	mov	eax, [bp-16]
	imul	eax, eax, 88
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	add	eax, 72
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	shl	eax, 4
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	push	eax
	db	0x9A
section .relot
	dd	L216
section .text
L216:
	dd	_memset
	sub	sp, -12
; }
L199:
; }
L195:
; Fused expression:    "++p(4) *(@-16) "
	mov	eax, [bp-16]
	inc	dword [bp-16]
	jmp	L194
L197:
; RPN'ized expression: "( inicKernel ) "
; Expanded expression: " inicKernel ()0 "
; Fused expression:    "( inicKernel )0 "
	db	0x9A
section .relot
	dd	L217
section .text
L217:
	dd	_inicKernel
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L2
; Fused expression:    "0  "
	mov	eax, 0
L2:
	db	0x66
	leave
	retf
L218:

section .fxnsz noalloc
	dd	L218 - _main


	extern	_modoSO1
	extern	_salvarPantallaInicial
	extern	_scrollBIOS
	extern	_inicMemVideo
	extern	_ocultaCursorBIOS
	extern	_mirarLoQueHay
	extern	_mostrarLoQueHay
	extern	_mostrarFlags
	extern	_printStrVideo
	extern	_printLnVideo
	extern	_valorFlags
	extern	_assert
	extern	_leerScancode
	extern	_CSInicial
	extern	__start__bss
	extern	__start__text
	extern	_printHexVideo
	extern	_printLHexVideo
	extern	_printLDecVideo
	extern	_printDecVideo
	extern	_printStrHastaVideo
	extern	_printLIntVideo
	extern	_memcpy
	extern	_memmove
	extern	_memset
	extern	_inicKernel

; Syntax/declaration table/stack:
; Bytes used: 14300/40960


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
; Ident tipoOrdenador
; Ident rebootLegacy
; Ident tipoTeclado
; Ident leerTeclaBIOS
; Ident leerTeclaExtBIOS
; Ident teclaListaBIOS
; Ident leerTeclaListaBDA
; Ident teclaListaBDA
; Ident printCarBIOS
; Ident car
; Ident printCarPagBIOS
; Ident pag
; Ident printCarAtrPagBIOS
; Ident atr
; Ident printLnBIOS
; Ident printStrBIOS
; Ident str
; Ident printStrHastaBIOS
; Ident n
; Ident lleno
; Ident printDecBIOS
; Ident l
; Ident printLDecBIOS
; Ident printIntBIOS
; Ident printLIntBIOS
; Ident printHexBIOS
; Ident printLHexBIOS
; Ident printBinBIOS
; Ident printLBinBIOS
; Ident printPtrBIOS
; Ident printByteBIOS
; Ident b
; Ident printWordBIOS
; Ident w
; Ident printCadBIOS
; Ident cad
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
; Ident salvarPantallaInicial
; Ident restaurarPantallaInicial
; Ident puntoDeParada
; Ident assert
; Ident condicion
; Ident valorFlags
; Ident mostrarFlags
; Ident debug_parar
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
; Ident _NONE
; Ident _MDA
; Ident _CGA
; Ident _EGACOLOR
; Ident _EGAMONO
; Ident _VGACOLOR
; Ident _VGAMONO
; Ident _MCGACOLOR
; Ident _MCGAMONO
; Ident _MDS_GENIUS
; Ident tipoAdaptador_t
; Ident _FONT08
; Ident _FONT14
; Ident _FONT15
; Ident _FONT16
; Ident fontSize_t
; Ident numColumnas
; Ident ptrPant
; Ident tipoAdaptador
; Ident redimensionable
; Ident fontSize
; Ident visibilidad
; Ident inicBiosCrt
; Ident finBiosCrt
; Ident getFontSize
; Ident getFilas
; Ident comprobarAdaptador
; Ident tipoDeAdaptador
; Ident setCursorVisibilidad
; Ident valorDeVisibilidad
; Ident setFontSize
; Ident size
; Ident set25x80
; Ident redimensionar
; Ident nFilas
; Ident nCols
; Ident printLnVideo
; Ident printStrVideo
; Ident printStrHastaVideo
; Ident printDecVideo
; Ident printLDecVideo
; Ident printIntVideo
; Ident printLIntVideo
; Ident printHexVideo
; Ident printLHexVideo
; Ident printBinVideo
; Ident printLBinVideo
; Ident printPtrVideo
; Ident printByteVideo
; Ident printWordVideo
; Ident printCadVideo
; Ident _start__text
; Ident _stop__text
; Ident _start__rodata
; Ident _stop__rodata
; Ident _start__data
; Ident _stop__data
; Ident _start__bss
; Ident _stop__bss
; Ident _start_allcode__
; Ident _stop_allcode__
; Ident _start_alldata__
; Ident _stop_alldata__
; Ident mostrarSeccion
; Ident start
; Ident stop
; Ident descripcion
; Ident mostrarSecciones
; Ident puntoDeParadaSO1
; Ident leerScancodeListo
; Ident leerScancode
; Ident mirarLoQueHay
; Ident loQueHay
; Ident mostrarLoQueHay
; Ident tirarS0
; Ident nombreDF_t
; Ident comandoDF_t
; Ident so1h_0_DF
; Ident datos_DF
; Ident so1h_k_DF
; Ident proceso_DF
; Ident dram_DF
; Ident tipoDF_t
; Ident otro
; Ident SS
; Ident entradaDF_t
; Ident dirInicial
; Ident dirCargaFichero
; Ident dirFinal
; Ident entradaDF
; Ident origen
; Ident destino
; Ident reubicacion_t
; Ident reubicacion
; Ident numER
; Ident inicKernel
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
; Ident numEDF
; Ident TR
; Ident main
; Bytes used: 6103/16384

; Next label number: 219
; Compilation succeeded.
