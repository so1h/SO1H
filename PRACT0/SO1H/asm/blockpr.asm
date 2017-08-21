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
; glb main : (void) void
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
; glb SS_Thread : unsigned short
; glb SP_Thread : unsigned short
; glb SS_Tarea : unsigned short
; glb SP_Tarea : unsigned short
; glb nivelActivacionSO1H : int
; glb nVIntActual : int
; glb enHalt : int
; glb activarAlEpilogo1 : int
; glb hayTic : int
; glb setKernelStack : (void) void
; glb setThreadStack : (
; prm     SS_Thread : unsigned short
; prm     SP_Thread : unsigned short
;     ) void
; glb reg_DL : (void) unsigned
; glb prepararDesbloqueadosUrgentes : (void) void
; glb buscarNuevoThreadActual : (void) void
; glb bloquearThreadActual : (
; prm     rindx : int
;     ) void
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
; glb SS_Kernel : unsigned short
section .bss
	alignb 4
	global	_SS_Kernel
_SS_Kernel:
	resb	2

; glb SS_Thread : unsigned short
section .bss
	alignb 4
	global	_SS_Thread
_SS_Thread:
	resb	2

; glb SP_Thread : unsigned short
section .bss
	alignb 4
	global	_SP_Thread
_SP_Thread:
	resb	2

; glb SS_Tarea : unsigned short
section .bss
	alignb 4
	global	_SS_Tarea
_SS_Tarea:
	resb	2

; glb SP_Tarea : unsigned short
section .bss
	alignb 4
	global	_SP_Tarea
_SP_Tarea:
	resb	2

; glb nivelActivacionSO1H : int
section .data
	align 4
	global	_nivelActivacionSO1H
_nivelActivacionSO1H:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
	dd	0

; glb nVIntActual : int
section .bss
	alignb 4
	global	_nVIntActual
_nVIntActual:
	resb	4

; glb enHalt : int
section .data
	align 4
	global	_enHalt
_enHalt:
; =
; RPN'ized expression: "FALSE "
; Expanded expression: "0 "
; Expression value: 0
	dd	0

; glb activarAlEpilogo1 : int
section .data
	align 4
	global	_activarAlEpilogo1
_activarAlEpilogo1:
; =
; RPN'ized expression: "FALSE "
; Expanded expression: "0 "
; Expression value: 0
	dd	0

; glb hayTic : int
section .data
	align 4
	global	_hayTic
_hayTic:
; =
; RPN'ized expression: "FALSE "
; Expanded expression: "0 "
; Expression value: 0
	dd	0

; glb reg_DL : (void) unsigned
 section .text    
   global _reg_DL 
 _reg_DL:         
   movzx eax,dl   
   retf           

; glb setKernelStack : (
; prm     reg_SS : unsigned short
; prm     reg_SP : unsigned short
;     ) void
section .text
	global	_setKernelStack
_setKernelStack:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     reg_SS : (@8): unsigned short
; loc     reg_SP : (@12): unsigned short
; RPN'ized expression: "SS_Thread reg_SS = "
; Expanded expression: "SS_Thread (@8) *(2) =(2) "
; Fused expression:    "SS_Thread =(170) *ax *(@8) "
section .relod
	dd	L3
section .text
	db	0x66, 0xB8
L3:
	dd	_SS_Thread
	mov	ebx, eax
	mov	ax, [bp+8]
	movzx	eax, ax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "SP_Thread reg_SP = "
; Expanded expression: "SP_Thread (@12) *(2) =(2) "
; Fused expression:    "SP_Thread =(170) *ax *(@12) "
section .relod
	dd	L4
section .text
	db	0x66, 0xB8
L4:
	dd	_SP_Thread
	mov	ebx, eax
	mov	ax, [bp+12]
	movzx	eax, ax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "reg_SS SS_Kernel = "
; Expanded expression: "(@8) SS_Kernel *(2) =(2) "
; Fused expression:    "SS_Kernel =(170) *(@8) *ax "
section .relod
	dd	L5
section .text
	db	0x66, 0xB8
L5:
	dd	_SS_Kernel
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp+8], ax
	movzx	eax, ax
; RPN'ized expression: "reg_SP 40960 = "
; Expanded expression: "(@12) 40960 =(2) "
; Fused expression:    "=(172) *(@12) 40960 "
	mov	eax, 40960
	mov	[bp+12], ax
	movzx	eax, ax
   mov cx,[bp+8]  
   mov bx,[bp+12] 
   mov eax,[bp+4] 
   mov ss,cx      
   mov sp,bx      
   push eax       
   retf           

L1:
	db	0x66
	leave
	retf
L6:

section .fxnsz noalloc
	dd	L6 - _setKernelStack

; glb setThreadStack : (
; prm     SS_Thread : unsigned short
; prm     SP_Thread : unsigned short
;     ) void
section .text
	global	_setThreadStack
_setThreadStack:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     SS_Thread : (@8): unsigned short
; loc     SP_Thread : (@12): unsigned short
   mov cx,[bp+8]  
   mov bx,[bp+12] 
   mov eax,[bp+4] 
   mov ss,cx      
   mov sp,bx      
   add eax,3      
   push eax       
   retf           

L7:
	db	0x66
	leave
	retf
L9:

section .fxnsz
	dd	L9 - _setThreadStack

; glb prepararDesbloqueadosUrgentes : (void) void
section .text
	global	_prepararDesbloqueadosUrgentes
_prepararDesbloqueadosUrgentes:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; while
; RPN'ized expression: "c2cPFR TUrgentes + *u &u numElem -> *u 0 > "
; Expanded expression: "c2cPFR 80 + 0 + *(4) 0 > "
L12:
; Fused expression:    "c2cPFR + ax 80 + ax 0 > *ax 0 IF! "
section .relod
	dd	L14
section .text
	db	0x66, 0xB8
L14:
	dd	_c2cPFR
	add	eax, 80
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 0
	jle	L13
; loc     <something> : * struct <something>
; loc     <something> : * struct <something>
; RPN'ized expression: "( c2cPFR TPreparados + *u &u (something16) , ( c2cPFR TUrgentes + *u &u (something15) desencolarPC2c ) apilarPC2c ) "
; Expanded expression: " c2cPFR 64 +   c2cPFR 80 +  desencolarPC2c ()4  apilarPC2c ()8 "
; Fused expression:    "( c2cPFR + ax 64 , ( c2cPFR + ax 80 , desencolarPC2c )4 , apilarPC2c )8 "
section .relod
	dd	L17
section .text
	db	0x66, 0xB8
L17:
	dd	_c2cPFR
	add	eax, 64
	push	eax
section .relod
	dd	L18
section .text
	db	0x66, 0xB8
L18:
	dd	_c2cPFR
	add	eax, 80
	push	eax
	db	0x9A
section .relot
	dd	L19
section .text
L19:
	dd	_desencolarPC2c
	sub	sp, -4
	push	eax
	db	0x9A
section .relot
	dd	L20
section .text
L20:
	dd	_apilarPC2c
	sub	sp, -8
	jmp	L12
L13:
L10:
	db	0x66
	leave
	retf
L21:

section .fxnsz
	dd	L21 - _prepararDesbloqueadosUrgentes

; glb buscarNuevoThreadActual : (void) void
section .text
	global	_buscarNuevoThreadActual
_buscarNuevoThreadActual:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; if
; RPN'ized expression: "nivelActivacionSO1H 1 == "
; Expanded expression: "nivelActivacionSO1H *(4) 1 == "
; Fused expression:    "nivelActivacionSO1H == *ax 1 IF! "
section .relod
	dd	L26
section .text
	db	0x66, 0xB8
L26:
	dd	_nivelActivacionSO1H
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 1
	jne	L24
; {
mov sp,SP0_Kernel
; if
; RPN'ized expression: "ccbAlEpilogo num -> *u 0 > "
; Expanded expression: "ccbAlEpilogo *(4) 0 + *(2) 0 > "
; Fused expression:    "ccbAlEpilogo + *ax 0 > *ax 0 IF! "
section .relod
	dd	L29
section .text
	db	0x66, 0xB8
L29:
	dd	_ccbAlEpilogo
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	cmp	eax, 0
	jle	L27
; RPN'ized expression: "( ccbAlEpilogo atenderCcb ) "
; Expanded expression: " ccbAlEpilogo *(4)  atenderCcb ()4 "
; Fused expression:    "( ccbAlEpilogo *(4) ax , atenderCcb )4 "
section .relod
	dd	L30
section .text
	db	0x66, 0xB8
L30:
	dd	_ccbAlEpilogo
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L31
section .text
L31:
	dd	_atenderCcb
	sub	sp, -4
L27:
; RPN'ized expression: "( prepararDesbloqueadosUrgentes ) "
; Expanded expression: " prepararDesbloqueadosUrgentes ()0 "
; Fused expression:    "( prepararDesbloqueadosUrgentes )0 "
	db	0x9A
section .relot
	dd	L32
section .text
L32:
	dd	_prepararDesbloqueadosUrgentes
; RPN'ized expression: "( ( sigThread ) activarThread ) "
; Expanded expression: "  sigThread ()0  activarThread ()4 "
; Fused expression:    "( ( sigThread )0 , activarThread )4 "
	db	0x9A
section .relot
	dd	L33
section .text
L33:
	dd	_sigThread
	push	eax
	db	0x9A
section .relot
	dd	L34
section .text
L34:
	dd	_activarThread
	sub	sp, -4
; }
	jmp	L25
L24:
; else
; RPN'ized expression: "activarAlEpilogo1 TRUE = "
; Expanded expression: "activarAlEpilogo1 1 =(4) "
; Fused expression:    "activarAlEpilogo1 =(204) *ax 1 "
section .relod
	dd	L35
section .text
	db	0x66, 0xB8
L35:
	dd	_activarAlEpilogo1
	mov	ebx, eax
	mov	eax, 1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
L25:
L22:
	db	0x66
	leave
	retf
L36:

section .fxnsz
	dd	L36 - _buscarNuevoThreadActual

; glb bloquearThreadActual : (
; prm     rindx : int
;     ) void
section .text
	global	_bloquearThreadActual
_bloquearThreadActual:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     rindx : (@8): int
; loc     tindx : (@-4): int
; RPN'ized expression: "tindx indThreadActual = "
; Expanded expression: "(@-4) indThreadActual *(4) =(4) "
; Fused expression:    "indThreadActual =(204) *(@-4) *ax "
section .relod
	dd	L39
section .text
	db	0x66, 0xB8
L39:
	dd	_indThreadActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-4], eax
; RPN'ized expression: "descThread tindx + *u &u trama -> *u tramaThread = "
; Expanded expression: "descThread (@-4) *(4) 40 * + 12 + tramaThread *(4) =(4) "
; Fused expression:    "descThread push-ax * *(@-4) 40 + *sp ax + ax 12 push-ax tramaThread =(204) **sp *ax "
section .relod
	dd	L40
section .text
	db	0x66, 0xB8
L40:
	dd	_descThread
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 40
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 12
	push	eax
section .relod
	dd	L41
section .text
	db	0x66, 0xB8
L41:
	dd	_tramaThread
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
; RPN'ized expression: "descThread tindx + *u &u estado -> *u bloqueado = "
; Expanded expression: "descThread (@-4) *(4) 40 * + 4 + 3 =(4) "
; Fused expression:    "descThread push-ax * *(@-4) 40 + *sp ax + ax 4 =(204) *ax 3 "
section .relod
	dd	L42
section .text
	db	0x66, 0xB8
L42:
	dd	_descThread
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 40
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	eax, 3
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "descThread tindx + *u &u esperandoPor -> *u rindx = "
; Expanded expression: "descThread (@-4) *(4) 40 * + 8 + (@8) *(4) =(4) "
; Fused expression:    "descThread push-ax * *(@-4) 40 + *sp ax + ax 8 =(204) *ax *(@8) "
section .relod
	dd	L43
section .text
	db	0x66, 0xB8
L43:
	dd	_descThread
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 40
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 8
	mov	ebx, eax
	mov	eax, [bp+8]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "( buscarNuevoThreadActual ) "
; Expanded expression: " buscarNuevoThreadActual ()0 "
; Fused expression:    "( buscarNuevoThreadActual )0 "
	db	0x9A
section .relot
	dd	L44
section .text
L44:
	dd	_buscarNuevoThreadActual
L37:
	db	0x66
	leave
	retf
L45:

section .fxnsz
	dd	L45 - _bloquearThreadActual


	extern	_c2cPFR
	extern	_desencolarPC2c
	extern	_apilarPC2c
	extern	_ccbAlEpilogo
	extern	_atenderCcb
	extern	_sigThread
	extern	_activarThread
	extern	_indThreadActual
	extern	_descThread
	extern	_tramaThread

; Syntax/declaration table/stack:
; Bytes used: 12465/40960


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
; Ident main
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
; Ident SS_Thread
; Ident SP_Thread
; Ident SS_Tarea
; Ident SP_Tarea
; Ident nivelActivacionSO1H
; Ident nVIntActual
; Ident enHalt
; Ident activarAlEpilogo1
; Ident hayTic
; Ident setKernelStack
; Ident setThreadStack
; Ident reg_DL
; Ident prepararDesbloqueadosUrgentes
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
; Ident reg_SS
; Ident reg_SP
; Bytes used: 5286/16384

; Next label number: 46
; Compilation succeeded.
