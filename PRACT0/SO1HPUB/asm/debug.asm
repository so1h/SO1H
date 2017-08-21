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
; glb puntoDeParada : (void) void
section .text
	global	_puntoDeParada
_puntoDeParada:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
   retf                      
   db 'Punto De Parada '     

L1:
	db	0x66
	leave
	retf
L3:

section .fxnsz noalloc
	dd	L3 - _puntoDeParada

; glb debug_parar : int
section .data
	align 4
	global	_debug_parar
_debug_parar:
; =
; RPN'ized expression: "FALSE "
; Expanded expression: "0 "
; Expression value: 0
	dd	0

; glb assert : (
; prm     condicion : int
; prm     str : * char
;     ) void
section .text
	global	_assert
_assert:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     condicion : (@8): int
; loc     str : (@12): * char
; if
; RPN'ized expression: "condicion 0 == "
; Expanded expression: "(@8) *(4) 0 == "
; Fused expression:    "== *(@8) 0 IF! "
	mov	eax, [bp+8]
	cmp	eax, 0
	jne	L6
; {
; RPN'ized expression: "( str printStrVideo ) "
; Expanded expression: " (@12) *(4)  printStrVideo ()4 "
; Fused expression:    "( *(4) (@12) , printStrVideo )4 "
	push	dword [bp+12]
	db	0x9A
section .relot
	dd	L8
section .text
L8:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( leerTeclaBIOS ) "
; Expanded expression: " leerTeclaBIOS ()0 "
; Fused expression:    "( leerTeclaBIOS )0 "
	db	0x9A
section .relot
	dd	L9
section .text
L9:
	dd	_leerTeclaBIOS
; }
L6:
L4:
	db	0x66
	leave
	retf
L10:

section .fxnsz
	dd	L10 - _assert

; glb valorFlags : (void) unsigned short
section .text
	global	_valorFlags
_valorFlags:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
   pushf         
   pop ax        

L11:
	db	0x66
	leave
	retf
L13:

section .fxnsz
	dd	L13 - _valorFlags

; glb mostrarFlags : (void) void
section .text
	global	_mostrarFlags
_mostrarFlags:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     flags : (@-4): unsigned short
   pushf         
   pop ax        
   mov [bp-4],ax 


section .rodata
L16:
	db	10," flags = "
	times	1 db 0

section .text
; RPN'ized expression: "( L16 printStrVideo ) "
; Expanded expression: " L16  printStrVideo ()4 "
; Fused expression:    "( L16 , printStrVideo )4 "
section .relod
	dd	L17
section .text
	db	0x66, 0x68
L17:
	dd	L16
	db	0x9A
section .relot
	dd	L18
section .text
L18:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , flags printHexVideo ) "
; Expanded expression: " 4  (@-4) *(2)  printHexVideo ()8 "
; Fused expression:    "( 4 , *(2) (@-4) , printHexVideo )8 "
	push	dword 4
	mov	ax, [bp-4]
	movzx	eax, ax
	push	eax
	db	0x9A
section .relot
	dd	L19
section .text
L19:
	dd	_printHexVideo
	sub	sp, -8
; if
; RPN'ized expression: "flags 512 & "
; Expanded expression: "(@-4) *(2) 512 & "
; Fused expression:    "& *(@-4) 512  "
	mov	ax, [bp-4]
	movzx	eax, ax
	and	eax, 512
; JumpIfZero
	test	eax, eax
	je	L20

section .rodata
L22:
	db	" ints permitidas "
	times	1 db 0

section .text
; RPN'ized expression: "( L22 printStrVideo ) "
; Expanded expression: " L22  printStrVideo ()4 "
; Fused expression:    "( L22 , printStrVideo )4 "
section .relod
	dd	L23
section .text
	db	0x66, 0x68
L23:
	dd	L22
	db	0x9A
section .relot
	dd	L24
section .text
L24:
	dd	_printStrVideo
	sub	sp, -4
	jmp	L21
L20:
; else

section .rodata
L25:
	db	" ints inhibidas "
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
L21:
   mov ax,[bp-4] 
   push ax       
   popf          

L14:
	db	0x66
	leave
	retf
L28:

section .fxnsz
	dd	L28 - _mostrarFlags


	extern	_printStrVideo
	extern	_leerTeclaBIOS
	extern	_printHexVideo

; Syntax/declaration table/stack:
; Bytes used: 3550/40960


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
; Ident puntoDeParada
; Ident debug_parar
; Ident assert
; Ident condicion
; Ident valorFlags
; Ident mostrarFlags
; Bytes used: 1885/16384

; Next label number: 29
; Compilation succeeded.
