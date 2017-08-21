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
; glb finProgDOS : (
; prm     error : int
;     ) void
; RPN'ized expression: "21 "
; Expanded expression: "21 "
; Expression value: 21
; RPN'ized expression: "13 "
; Expanded expression: "13 "
; Expression value: 13
; glb hayMSDOS : (void) int
; glb hayDOSBox : (void) int
; glb hayWindowsNT : (void) int
; glb segPSP : (void) unsigned short
; glb versionMSDOS : (void) unsigned short
; glb entornoMSDOS : (void) * unsigned char
; glb valorMSDOS : (
; prm     str : * char
;     ) * unsigned char
; glb argcMSDOS : (void) int
; glb getArgvMSDOS : (
; prm     n : unsigned short
; prm     str : * char
;     ) int
; glb openDOS : (
; prm     nombre : * unsigned char
; prm     modo : unsigned char
;     ) int
; glb extendedOpenDOS : (
; prm     nombre : * unsigned char
; prm     modo : unsigned short
; prm     atr : unsigned short
; prm     accion : * unsigned short
; prm     error : * unsigned short
;     ) int
; glb closeDOS : (
; prm     df : int
;     ) int
; glb commitFileDOS : (
; prm     df : int
;     ) int
; glb createDOS : (
; prm     nombre : * unsigned char
; prm     atributo : unsigned short
;     ) int
; glb readDOS : (
; prm     df : int
; prm     buf : * char
; prm     n : int
;     ) int
; glb writeDOS : (
; prm     df : int
; prm     buf : * char
; prm     n : int
;     ) int
; glb lseekDOS : (
; prm     df : int
; prm     pos : * unsigned
; prm     whence : int
;     ) int
; glb getdiskDOS : (void) int
; glb setdiskDOS : (
; prm     drive : int
;     ) int
; glb getcurdirDOS : (
; prm     drive : int
; prm     direc : * char
;     ) int
; glb chdirDOS : (
; prm     path : * char
;     ) int
; glb findfirstDOS : (
; prm     pathname : * char
; prm     ffblk : * struct ffblk
; prm     attrib : int
;     ) int
; glb findnextDOS : (
; prm     ffblk : * struct ffblk
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
%define SP0_SO1H 0x8000
%define SP0_Kernel  0xA000
; glb startBin : (void) void
; glb modoSO1 : (void) int
; glb unidadBIOS : (void) unsigned char
; glb CS_SO1H : unsigned short
; glb RO_SO1H : unsigned short
; glb DS_SO1H : unsigned short
; glb BSS_SO1H : unsigned short
; glb SS_SO1H : unsigned short
; glb SS_Kernel : unsigned short
; glb IMRInicial : unsigned short
; glb obtenerMapa : (void) void
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
; RPN'ized expression: "80 "
; Expanded expression: "80 "
; Expression value: 80
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
; glb descProcesoExt_t : struct <something>
; glb descThreadExt_t : struct <something>
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
; glb descProceso : [16u] struct <something>
; RPN'ized expression: "2010 "
; Expanded expression: "2010 "
; Expression value: 2010
; glb descThread : [2010u] struct <something>
; RPN'ized expression: "20 "
; Expanded expression: "20 "
; Expression value: 20
; glb descFichero : [20u] struct <something>
; RPN'ized expression: "14 "
; Expanded expression: "14 "
; Expression value: 14
; glb descRecurso : [14u] struct <something>
; RPN'ized expression: "numColasPFR "
; Expanded expression: "12 "
; Expression value: 12
; glb c2cPFR : [12u] struct <something>
; glb e2PFR : struct <something>
; glb descCcbAlEpilogo : struct <something>
; glb ccbAlEpilogo : * struct <something>
; glb tramaThread : * union <something>
; glb tramaTarea : * union <something>
; glb indThreadActual : int
; glb indProcesoActual : int
; glb indThreadDeSuperficie : int
; glb contRodajas : unsigned
; glb contTicsRodaja : int
; glb contadorTimer00 : unsigned short
; glb contOcioso : int
; glb nuevoPid : (void) int
; glb nuevoTid : (void) int
; glb indice : (
; prm     tid : int
;     ) int
; glb sigThread : (void) int
; glb activarThread : (
; prm     tindx : int
;     ) int
; glb registrarEnPOrdenados : (
; prm     pindx : int
;     ) void
; glb crearThread : (
; prm     funcion : * (
; prm         <something> : * void
;         ) * void
; prm     SP0 : unsigned short
; prm     arg : * void
; prm     pindx : int
;     ) int
; glb crearProceso : (
; prm     segmento : unsigned short
; prm     tam : unsigned short
; prm     tamFich : unsigned
; prm     programa : * char
; prm     comando : * char
; prm     pindx : int
;     ) int
; glb inicProcesos : (void) void
; glb resetPids : (void) void
; glb resetTids : (void) void
; glb terminarThreadIndx : (
; prm     tindx : int
;     ) int
; glb eliminarThreadIndx : (
; prm     tindx : int
;     ) int
; glb terminarProcIndx : (
; prm     pindx : int
;     ) int
; glb eliminarProcIndx : (
; prm     pindx : int
;     ) int
; glb matarThreadIndx : (
; prm     tindx : int
;     ) int
; glb matarProcIndx : (
; prm     pindx : int
;     ) int
; glb link_procs : (void) void
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
; glb inicGM : (void) void
section .text
	global	_inicGM
_inicGM:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         16
; loc     primerSegLibre : (@-4): unsigned short
; loc     sigSeg : (@-8): unsigned short
; loc     memDisponible : (@-12): unsigned short
; loc     ptrBloque : (@-16): * struct <something>
; RPN'ized expression: "primerSegLibre SS_Kernel 40960 15 + 16 / + = "
; Expanded expression: "(@-4) SS_Kernel *(2) 2560 + =(2) "
; Fused expression:    "SS_Kernel + *ax 2560 =(172) *(@-4) ax "
section .relod
	dd	L3
section .text
	db	0x66, 0xB8
L3:
	dd	_SS_Kernel
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	add	eax, 2560
	mov	[bp-4], ax
	movzx	eax, ax

section .rodata
L4:
	db	" primerSegLibre = "
	times	1 db 0

section .text
; RPN'ized expression: "( L4 printStrVideo ) "
; Expanded expression: " L4  printStrVideo ()4 "
; Fused expression:    "( L4 , printStrVideo )4 "
section .relod
	dd	L5
section .text
	db	0x66, 0x68
L5:
	dd	L4
	db	0x9A
section .relot
	dd	L6
section .text
L6:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , primerSegLibre printHexVideo ) "
; Expanded expression: " 4  (@-4) *(2)  printHexVideo ()8 "
; Fused expression:    "( 4 , *(2) (@-4) , printHexVideo )8 "
	push	dword 4
	mov	ax, [bp-4]
	movzx	eax, ax
	push	eax
	db	0x9A
section .relot
	dd	L7
section .text
L7:
	dd	_printHexVideo
	sub	sp, -8
; switch
; RPN'ized expression: "( modoSO1 ) "
; Expanded expression: " modoSO1 ()0 "
; Fused expression:    "( modoSO1 )0  "
	db	0x9A
section .relot
	dd	L10
section .text
L10:
	dd	_modoSO1
	jmp	L9
; {
; case
; RPN'ized expression: "modoSO1_Bin "
; Expanded expression: "0 "
; Expression value: 0
L11:
; RPN'ized expression: "sigSeg ( memBIOS ) 1024 16 / * = "
; Expanded expression: "(@-8)  memBIOS ()0 64 * =(2) "
; Fused expression:    "( memBIOS )0 * ax 64 =(172) *(@-8) ax "
	db	0x9A
section .relot
	dd	L12
section .text
L12:
	dd	_memBIOS
	imul	eax, eax, 64
	mov	[bp-8], ax
	movzx	eax, ax
; break
	jmp	L8
; case
; RPN'ized expression: "modoSO1_Exe "
; Expanded expression: "1 "
; Expression value: 1
L13:
; loc         <something> : * unsigned short
; loc         <something> : unsigned
; loc         <something> : unsigned
; RPN'ized expression: "sigSeg ( segPSP ) (something15) 4 << 2 (something16) + (something14) *u = "
; Expanded expression: "(@-8)  segPSP ()0 4 << 2u + *(2) =(2) "
; Fused expression:    "( segPSP )0 << ax 4 + ax 2u =(170) *(@-8) *ax "
	db	0x9A
section .relot
	dd	L17
section .text
L17:
	dd	_segPSP
	shl	eax, 4
	add	eax, 2
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-8], ax
	movzx	eax, ax
; break
	jmp	L8
; default
L18:

section .rodata
L19:
	db	10," inicGM() ERROR: modoSO1() = "
	times	1 db 0

section .text
; RPN'ized expression: "( L19 printStrVideo ) "
; Expanded expression: " L19  printStrVideo ()4 "
; Fused expression:    "( L19 , printStrVideo )4 "
section .relod
	dd	L20
section .text
	db	0x66, 0x68
L20:
	dd	L19
	db	0x9A
section .relot
	dd	L21
section .text
L21:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , ( modoSO1 ) printHexVideo ) "
; Expanded expression: " 4   modoSO1 ()0  printHexVideo ()8 "
; Fused expression:    "( 4 , ( modoSO1 )0 , printHexVideo )8 "
	push	dword 4
	db	0x9A
section .relot
	dd	L22
section .text
L22:
	dd	_modoSO1
	push	eax
	db	0x9A
section .relot
	dd	L23
section .text
L23:
	dd	_printHexVideo
	sub	sp, -8
; RPN'ized expression: "( leerTeclaBIOS ) "
; Expanded expression: " leerTeclaBIOS ()0 "
; Fused expression:    "( leerTeclaBIOS )0 "
	db	0x9A
section .relot
	dd	L24
section .text
L24:
	dd	_leerTeclaBIOS
; }
	jmp	L8
L9:
	cmp	eax, 0
	je	L11
	cmp	eax, 1
	je	L13
	jmp	L18
L8:
; RPN'ized expression: "memDisponible sigSeg primerSegLibre - = "
; Expanded expression: "(@-12) (@-8) *(2) (@-4) *(2) - =(2) "
; Fused expression:    "- *(@-8) *(@-4) =(172) *(@-12) ax "
	mov	ax, [bp-8]
	movzx	eax, ax
	movzx	ecx, word [bp-4]
	sub	eax, ecx
	mov	[bp-12], ax
	movzx	eax, ax

section .rodata
L25:
	db	" sigSeg = "
	times	1 db 0

section .text
; RPN'ized expression: "( L25 printStrVideo ) "
; Expanded expression: " L25  printStrVideo ()4 "
; Fused expression:    "( L25 , printStrVideo )4 "
section .relod
	dd	L26
section .text
	db	0x66, 0x68
L26:
	dd	L25
	db	0x9A
section .relot
	dd	L27
section .text
L27:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , sigSeg printHexVideo ) "
; Expanded expression: " 4  (@-8) *(2)  printHexVideo ()8 "
; Fused expression:    "( 4 , *(2) (@-8) , printHexVideo )8 "
	push	dword 4
	mov	ax, [bp-8]
	movzx	eax, ax
	push	eax
	db	0x9A
section .relot
	dd	L28
section .text
L28:
	dd	_printHexVideo
	sub	sp, -8

section .rodata
L29:
	db	" memDisponible = "
	times	1 db 0

section .text
; RPN'ized expression: "( L29 printStrVideo ) "
; Expanded expression: " L29  printStrVideo ()4 "
; Fused expression:    "( L29 , printStrVideo )4 "
section .relod
	dd	L30
section .text
	db	0x66, 0x68
L30:
	dd	L29
	db	0x9A
section .relot
	dd	L31
section .text
L31:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , memDisponible printHexVideo ) "
; Expanded expression: " 4  (@-12) *(2)  printHexVideo ()8 "
; Fused expression:    "( 4 , *(2) (@-12) , printHexVideo )8 "
	push	dword 4
	mov	ax, [bp-12]
	movzx	eax, ax
	push	eax
	db	0x9A
section .relot
	dd	L32
section .text
L32:
	dd	_printHexVideo
	sub	sp, -8
; loc     <something> : * struct <something>
; loc     <something> : unsigned
; RPN'ized expression: "ptrBloque primerSegLibre (something34) 4 << (something33) = "
; Expanded expression: "(@-16) (@-4) *(2) 4 << =(4) "
; Fused expression:    "<< *(@-4) 4 =(204) *(@-16) ax "
	mov	ax, [bp-4]
	movzx	eax, ax
	shl	eax, 4
	mov	[bp-16], eax
; RPN'ized expression: "ptrBloque tam -> *u memDisponible 1 - = "
; Expanded expression: "(@-16) *(4) 0 + (@-12) *(2) 1 - =(2) "
; Fused expression:    "+ *(@-16) 0 push-ax - *(@-12) 1 =(172) **sp ax "
	mov	eax, [bp-16]
	push	eax
	mov	ax, [bp-12]
	movzx	eax, ax
	dec	eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; loc     <something> : unsigned short
; loc     <something> : unsigned
; RPN'ized expression: "ptrBloque sig -> *u ptrBloque (something36) 4 >> (something35) ptrBloque tam -> *u + = "
; Expanded expression: "(@-16) *(4) 2 + (@-16) *(4) 4 >>u unsigned short (@-16) *(4) 0 + *(2) + =(2) "
; Fused expression:    "+ *(@-16) 2 push-ax >>u *(@-16) 4 unsigned short push-ax + *(@-16) 0 + *sp *ax =(172) **sp ax "
	mov	eax, [bp-16]
	add	eax, 2
	push	eax
	mov	eax, [bp-16]
	shr	eax, 4
	movzx	eax, ax
	push	eax
	mov	eax, [bp-16]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	movzx	ecx, word [si]
	pop	eax
	add	eax, ecx
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "ptrBloque ant -> *u ptrBloque sig -> *u = "
; Expanded expression: "(@-16) *(4) 4 + (@-16) *(4) 2 + *(2) =(2) "
; Fused expression:    "+ *(@-16) 4 push-ax + *(@-16) 2 =(170) **sp *ax "
	mov	eax, [bp-16]
	add	eax, 4
	push	eax
	mov	eax, [bp-16]
	add	eax, 2
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; loc     <something> : * struct <something>
; loc     <something> : unsigned
; RPN'ized expression: "listaLibres ptrBloque sig -> *u (something38) 4 << (something37) = "
; Expanded expression: "listaLibres (@-16) *(4) 2 + *(2) 4 << =(4) "
; Fused expression:    "listaLibres push-ax + *(@-16) 2 << *ax 4 =(204) **sp ax "
section .relod
	dd	L39
section .text
	db	0x66, 0xB8
L39:
	dd	_listaLibres
	push	eax
	mov	eax, [bp-16]
	add	eax, 2
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	shl	eax, 4
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "listaLibres tam -> *u 1 = "
; Expanded expression: "listaLibres *(4) 0 + 1 =(2) "
; Fused expression:    "listaLibres + *ax 0 =(172) *ax 1 "
section .relod
	dd	L40
section .text
	db	0x66, 0xB8
L40:
	dd	_listaLibres
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	ebx, eax
	mov	eax, 1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; loc     <something> : unsigned short
; loc     <something> : unsigned
; RPN'ized expression: "listaLibres sig -> *u ptrBloque (something42) 4 >> (something41) = "
; Expanded expression: "listaLibres *(4) 2 + (@-16) *(4) 4 >>u unsigned short =(2) "
; Fused expression:    "listaLibres + *ax 2 push-ax >>u *(@-16) 4 unsigned short =(172) **sp ax "
section .relod
	dd	L43
section .text
	db	0x66, 0xB8
L43:
	dd	_listaLibres
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 2
	push	eax
	mov	eax, [bp-16]
	shr	eax, 4
	movzx	eax, ax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "listaLibres ant -> *u listaLibres sig -> *u = "
; Expanded expression: "listaLibres *(4) 4 + listaLibres *(4) 2 + *(2) =(2) "
; Fused expression:    "listaLibres + *ax 4 push-ax listaLibres + *ax 2 =(170) **sp *ax "
section .relod
	dd	L44
section .text
	db	0x66, 0xB8
L44:
	dd	_listaLibres
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 4
	push	eax
section .relod
	dd	L45
section .text
	db	0x66, 0xB8
L45:
	dd	_listaLibres
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 2
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "tamBloqueMax ptrBloque tam -> *u = "
; Expanded expression: "tamBloqueMax (@-16) *(4) 0 + *(2) =(2) "
; Fused expression:    "tamBloqueMax push-ax + *(@-16) 0 =(170) **sp *ax "
section .relod
	dd	L46
section .text
	db	0x66, 0xB8
L46:
	dd	_tamBloqueMax
	push	eax
	mov	eax, [bp-16]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
L1:
	db	0x66
	leave
	retf
L47:

section .fxnsz noalloc
	dd	L47 - _inicGM

; glb mostrarListaLibres : (void) void
section .text
	global	_mostrarListaLibres
_mostrarListaLibres:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         12
; loc     ptrBloque : (@-4): * struct <something>
; loc     i : (@-8): int
; loc     j : (@-12): int
; loc     <something> : * struct <something>
; loc     <something> : unsigned
; RPN'ized expression: "ptrBloque listaLibres sig -> *u (something51) 4 << (something50) = "
; Expanded expression: "(@-4) listaLibres *(4) 2 + *(2) 4 << =(4) "
; Fused expression:    "listaLibres + *ax 2 << *ax 4 =(204) *(@-4) ax "
section .relod
	dd	L52
section .text
	db	0x66, 0xB8
L52:
	dd	_listaLibres
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 2
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	shl	eax, 4
	mov	[bp-4], eax

section .rodata
L53:
	db	10
	db	"  ind   dir    tam    sig    ant    aux            relleno          ",10
	db	" ----- ------ ------ ------ ------ ------ ------------------------- ",10
	times	1 db 0

section .text
; RPN'ized expression: "( L53 printStrVideo ) "
; Expanded expression: " L53  printStrVideo ()4 "
; Fused expression:    "( L53 , printStrVideo )4 "
section .relod
	dd	L54
section .text
	db	0x66, 0x68
L54:
	dd	L53
	db	0x9A
section .relot
	dd	L55
section .text
L55:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-8) 0 =(4) "
; Fused expression:    "=(204) *(@-8) 0 "
	mov	eax, 0
	mov	[bp-8], eax
; do
L56:
; {
; RPN'ized expression: "( 4 , i printDecVideo ) "
; Expanded expression: " 4  (@-8) *(4)  printDecVideo ()8 "
; Fused expression:    "( 4 , *(4) (@-8) , printDecVideo )8 "
	push	dword 4
	push	dword [bp-8]
	db	0x9A
section .relot
	dd	L59
section .text
L59:
	dd	_printDecVideo
	sub	sp, -8

section .rodata
L60:
	db	"    "
	times	1 db 0

section .text
; RPN'ized expression: "( L60 printStrVideo ) "
; Expanded expression: " L60  printStrVideo ()4 "
; Fused expression:    "( L60 , printStrVideo )4 "
section .relod
	dd	L61
section .text
	db	0x66, 0x68
L61:
	dd	L60
	db	0x9A
section .relot
	dd	L62
section .text
L62:
	dd	_printStrVideo
	sub	sp, -4
; loc         <something> : unsigned short
; loc         <something> : unsigned
; RPN'ized expression: "( 4 , ptrBloque (something64) 4 >> (something63) printHexVideo ) "
; Expanded expression: " 4  (@-4) *(4) 4 >>u unsigned short  printHexVideo ()8 "
; Fused expression:    "( 4 , >>u *(@-4) 4 unsigned short , printHexVideo )8 "
	push	dword 4
	mov	eax, [bp-4]
	shr	eax, 4
	movzx	eax, ax
	push	eax
	db	0x9A
section .relot
	dd	L65
section .text
L65:
	dd	_printHexVideo
	sub	sp, -8

section .rodata
L66:
	db	"   "
	times	1 db 0

section .text
; RPN'ized expression: "( L66 printStrVideo ) "
; Expanded expression: " L66  printStrVideo ()4 "
; Fused expression:    "( L66 , printStrVideo )4 "
section .relod
	dd	L67
section .text
	db	0x66, 0x68
L67:
	dd	L66
	db	0x9A
section .relot
	dd	L68
section .text
L68:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , ptrBloque tam -> *u printHexVideo ) "
; Expanded expression: " 4  (@-4) *(4) 0 + *(2)  printHexVideo ()8 "
; Fused expression:    "( 4 , + *(@-4) 0 *(2) ax , printHexVideo )8 "
	push	dword 4
	mov	eax, [bp-4]
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
	dd	L69
section .text
L69:
	dd	_printHexVideo
	sub	sp, -8

section .rodata
L70:
	db	"   "
	times	1 db 0

section .text
; RPN'ized expression: "( L70 printStrVideo ) "
; Expanded expression: " L70  printStrVideo ()4 "
; Fused expression:    "( L70 , printStrVideo )4 "
section .relod
	dd	L71
section .text
	db	0x66, 0x68
L71:
	dd	L70
	db	0x9A
section .relot
	dd	L72
section .text
L72:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , ptrBloque sig -> *u printHexVideo ) "
; Expanded expression: " 4  (@-4) *(4) 2 + *(2)  printHexVideo ()8 "
; Fused expression:    "( 4 , + *(@-4) 2 *(2) ax , printHexVideo )8 "
	push	dword 4
	mov	eax, [bp-4]
	add	eax, 2
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
	dd	L73
section .text
L73:
	dd	_printHexVideo
	sub	sp, -8

section .rodata
L74:
	db	"   "
	times	1 db 0

section .text
; RPN'ized expression: "( L74 printStrVideo ) "
; Expanded expression: " L74  printStrVideo ()4 "
; Fused expression:    "( L74 , printStrVideo )4 "
section .relod
	dd	L75
section .text
	db	0x66, 0x68
L75:
	dd	L74
	db	0x9A
section .relot
	dd	L76
section .text
L76:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , ptrBloque ant -> *u printHexVideo ) "
; Expanded expression: " 4  (@-4) *(4) 4 + *(2)  printHexVideo ()8 "
; Fused expression:    "( 4 , + *(@-4) 4 *(2) ax , printHexVideo )8 "
	push	dword 4
	mov	eax, [bp-4]
	add	eax, 4
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
	dd	L77
section .text
L77:
	dd	_printHexVideo
	sub	sp, -8

section .rodata
L78:
	db	"   "
	times	1 db 0

section .text
; RPN'ized expression: "( L78 printStrVideo ) "
; Expanded expression: " L78  printStrVideo ()4 "
; Fused expression:    "( L78 , printStrVideo )4 "
section .relod
	dd	L79
section .text
	db	0x66, 0x68
L79:
	dd	L78
	db	0x9A
section .relot
	dd	L80
section .text
L80:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , ptrBloque aux -> *u printHexVideo ) "
; Expanded expression: " 4  (@-4) *(4) 6 + *(2)  printHexVideo ()8 "
; Fused expression:    "( 4 , + *(@-4) 6 *(2) ax , printHexVideo )8 "
	push	dword 4
	mov	eax, [bp-4]
	add	eax, 6
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
	dd	L81
section .text
L81:
	dd	_printHexVideo
	sub	sp, -8

section .rodata
L82:
	db	"   "
	times	1 db 0

section .text
; RPN'ized expression: "( L82 printStrVideo ) "
; Expanded expression: " L82  printStrVideo ()4 "
; Fused expression:    "( L82 , printStrVideo )4 "
section .relod
	dd	L83
section .text
	db	0x66, 0x68
L83:
	dd	L82
	db	0x9A
section .relot
	dd	L84
section .text
L84:
	dd	_printStrVideo
	sub	sp, -4
; for
; RPN'ized expression: "j 0 = "
; Expanded expression: "(@-12) 0 =(4) "
; Fused expression:    "=(204) *(@-12) 0 "
	mov	eax, 0
	mov	[bp-12], eax
L85:
; RPN'ized expression: "j 8 < "
; Expanded expression: "(@-12) *(4) 8 < "
; Fused expression:    "< *(@-12) 8 IF! "
	mov	eax, [bp-12]
	cmp	eax, 8
	jge	L88
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-12) ++p(4) "
; {
; RPN'ized expression: "( 2 , ptrBloque relleno -> *u j + *u printHexVideo ) "
; Expanded expression: " 2  (@-4) *(4) 8 + (@-12) *(4) + *(1)  printHexVideo ()8 "
; Fused expression:    "( 2 , + *(@-4) 8 + ax *(@-12) *(1) ax , printHexVideo )8 "
	push	dword 2
	mov	eax, [bp-4]
	add	eax, 8
	add	eax, [bp-12]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	push	eax
	db	0x9A
section .relot
	dd	L89
section .text
L89:
	dd	_printHexVideo
	sub	sp, -8
; RPN'ized expression: "( 32 printCarVideo ) "
; Expanded expression: " 32  printCarVideo ()4 "
; Fused expression:    "( 32 , printCarVideo )4 "
	push	dword 32
	db	0x9A
section .relot
	dd	L90
section .text
L90:
	dd	_printCarVideo
	sub	sp, -4
; }
L86:
; Fused expression:    "++p(4) *(@-12) "
	mov	eax, [bp-12]
	inc	dword [bp-12]
	jmp	L85
L88:

section .rodata
L91:
	db	10
	times	1 db 0

section .text
; RPN'ized expression: "( L91 printStrVideo ) "
; Expanded expression: " L91  printStrVideo ()4 "
; Fused expression:    "( L91 , printStrVideo )4 "
section .relod
	dd	L92
section .text
	db	0x66, 0x68
L92:
	dd	L91
	db	0x9A
section .relot
	dd	L93
section .text
L93:
	dd	_printStrVideo
	sub	sp, -4
; loc         <something> : * struct <something>
; loc         <something> : unsigned
; RPN'ized expression: "ptrBloque ptrBloque sig -> *u (something95) 4 << (something94) = "
; Expanded expression: "(@-4) (@-4) *(4) 2 + *(2) 4 << =(4) "
; Fused expression:    "+ *(@-4) 2 << *ax 4 =(204) *(@-4) ax "
	mov	eax, [bp-4]
	add	eax, 2
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	shl	eax, 4
	mov	[bp-4], eax
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-8) ++p(4) "
; Fused expression:    "++p(4) *(@-8) "
	mov	eax, [bp-8]
	inc	dword [bp-8]
; }
; while
; loc     <something> : * struct <something>
; loc     <something> : unsigned
; RPN'ized expression: "ptrBloque listaLibres sig -> *u (something97) 4 << (something96) != "
; Expanded expression: "(@-4) *(4) listaLibres *(4) 2 + *(2) 4 << != "
L57:
; Fused expression:    "listaLibres + *ax 2 << *ax 4 != *(@-4) ax IF "
section .relod
	dd	L98
section .text
	db	0x66, 0xB8
L98:
	dd	_listaLibres
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 2
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	shl	eax, 4
	mov	ecx, eax
	mov	eax, [bp-4]
	cmp	eax, ecx
	jne	L56
L58:
L48:
	db	0x66
	leave
	retf
L99:

section .fxnsz
	dd	L99 - _mostrarListaLibres


	extern	_SS_Kernel
	extern	_printStrVideo
	extern	_printHexVideo
	extern	_modoSO1
	extern	_memBIOS
	extern	_segPSP
	extern	_leerTeclaBIOS
	extern	_listaLibres
	extern	_tamBloqueMax
	extern	_printDecVideo
	extern	_printCarVideo

; Syntax/declaration table/stack:
; Bytes used: 13835/40960


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
; Ident num
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
; Ident modo
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
; Ident printCarVideo
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
; Ident finProgDOS
; Ident error
; Ident ffblk
; Ident ff_reserved
; Ident ff_attrib
; Ident ff_ftime
; Ident ff_fdate
; Ident ff_fsize
; Ident ff_name
; Ident hayMSDOS
; Ident hayDOSBox
; Ident hayWindowsNT
; Ident segPSP
; Ident versionMSDOS
; Ident entornoMSDOS
; Ident valorMSDOS
; Ident argcMSDOS
; Ident getArgvMSDOS
; Ident openDOS
; Ident nombre
; Ident extendedOpenDOS
; Ident accion
; Ident closeDOS
; Ident df
; Ident commitFileDOS
; Ident createDOS
; Ident atributo
; Ident readDOS
; Ident buf
; Ident writeDOS
; Ident lseekDOS
; Ident pos
; Ident whence
; Ident getdiskDOS
; Ident setdiskDOS
; Ident drive
; Ident getcurdirDOS
; Ident direc
; Ident chdirDOS
; Ident path
; Ident findfirstDOS
; Ident pathname
; Ident attrib
; Ident findnextDOS
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
; Ident release_t
; Ident read_t
; Ident dir
; Ident nbytes
; Ident aio_read_t
; Ident write_t
; Ident aio_write_t
; Ident lseek_t
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
; Ident startBin
; Ident unidadBIOS
; Ident CS_SO1H
; Ident RO_SO1H
; Ident DS_SO1H
; Ident BSS_SO1H
; Ident SS_SO1H
; Ident SS_Kernel
; Ident IMRInicial
; Ident obtenerMapa
; Ident descProcesoExt_t
; Ident descThreadExt_t
; Ident descProceso
; Ident descThread
; Ident descFichero
; Ident descRecurso
; Ident c2cPFR
; Ident e2PFR
; Ident descCcbAlEpilogo
; Ident ccbAlEpilogo
; Ident tramaThread
; Ident tramaTarea
; Ident indThreadActual
; Ident indProcesoActual
; Ident indThreadDeSuperficie
; Ident contRodajas
; Ident contTicsRodaja
; Ident contadorTimer00
; Ident contOcioso
; Ident nuevoPid
; Ident nuevoTid
; Ident indice
; Ident registrarEnPOrdenados
; Ident crearThread
; Ident funcion
; Ident crearProceso
; Ident tamFich
; Ident inicProcesos
; Ident resetPids
; Ident resetTids
; Ident terminarThreadIndx
; Ident eliminarThreadIndx
; Ident terminarProcIndx
; Ident eliminarProcIndx
; Ident matarThreadIndx
; Ident matarProcIndx
; Ident link_procs
; Ident tamBloqueMax
; Ident listaLibres
; Ident k_buscarBloque
; Ident k_devolverBloque
; Ident rec_gm
; Ident inicGM
; Ident mostrarListaLibres
; Ident link_gm_k
; Bytes used: 5868/16384

; Next label number: 100
; Compilation succeeded.
