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
; glb mostrarSeccion : (
; prm     start : unsigned
; prm     stop : unsigned
; prm     descripcion : * char
;     ) void
section .text
	global	_mostrarSeccion
_mostrarSeccion:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     start : (@8): unsigned
; loc     stop : (@12): unsigned
; loc     descripcion : (@16): * char

section .rodata
L3:
	db	" "
	times	1 db 0

section .text
; RPN'ized expression: "( L3 printStrVideo ) "
; Expanded expression: " L3  printStrVideo ()4 "
; Fused expression:    "( L3 , printStrVideo )4 "
section .relod
	dd	L4
section .text
	db	0x66, 0x68
L4:
	dd	L3
	db	0x9A
section .relot
	dd	L5
section .text
L5:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 8 , start printLHexVideo ) "
; Expanded expression: " 8  (@8) *(4)  printLHexVideo ()8 "
; Fused expression:    "( 8 , *(4) (@8) , printLHexVideo )8 "
	push	dword 8
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L6
section .text
L6:
	dd	_printLHexVideo
	sub	sp, -8

section .rodata
L7:
	db	" - "
	times	1 db 0

section .text
; RPN'ized expression: "( L7 printStrVideo ) "
; Expanded expression: " L7  printStrVideo ()4 "
; Fused expression:    "( L7 , printStrVideo )4 "
section .relod
	dd	L8
section .text
	db	0x66, 0x68
L8:
	dd	L7
	db	0x9A
section .relot
	dd	L9
section .text
L9:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 8 , stop 1 - printLHexVideo ) "
; Expanded expression: " 8  (@12) *(4) 1 -  printLHexVideo ()8 "
; Fused expression:    "( 8 , - *(@12) 1 , printLHexVideo )8 "
	push	dword 8
	mov	eax, [bp+12]
	dec	eax
	push	eax
	db	0x9A
section .relot
	dd	L10
section .text
L10:
	dd	_printLHexVideo
	sub	sp, -8
; RPN'ized expression: "( descripcion printStrVideo ) "
; Expanded expression: " (@16) *(4)  printStrVideo ()4 "
; Fused expression:    "( *(4) (@16) , printStrVideo )4 "
	push	dword [bp+16]
	db	0x9A
section .relot
	dd	L11
section .text
L11:
	dd	_printStrVideo
	sub	sp, -4
L1:
	db	0x66
	leave
	retf
L12:

section .fxnsz noalloc
	dd	L12 - _mostrarSeccion

; glb mostrarSecciones : (void) void
section .text
	global	_mostrarSecciones
_mostrarSecciones:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; RPN'ized expression: "( printLnVideo ) "
; Expanded expression: " printLnVideo ()0 "
; Fused expression:    "( printLnVideo )0 "
	db	0x9A
section .relot
	dd	L15
section .text
L15:
	dd	_printLnVideo

section .rodata
L16:
	db	" all code: ",10
	times	1 db 0

section .text
; RPN'ized expression: "( L16 , _stop_allcode__ &u , _start_allcode__ &u mostrarSeccion ) "
; Expanded expression: " L16  _stop_allcode__  _start_allcode__  mostrarSeccion ()12 "
; Fused expression:    "( L16 , _stop_allcode__ , _start_allcode__ , mostrarSeccion )12 "
section .relod
	dd	L17
section .text
	db	0x66, 0x68
L17:
	dd	L16
section .relod
	dd	L18
section .text
	db	0x66, 0x68
L18:
	dd	__stop_allcode__
section .relod
	dd	L19
section .text
	db	0x66, 0x68
L19:
	dd	__start_allcode__
	db	0x9A
section .relot
	dd	L20
section .text
L20:
	dd	_mostrarSeccion
	sub	sp, -12

section .rodata
L21:
	db	"   .text   ",10
	times	1 db 0

section .text
; RPN'ized expression: "( L21 , _stop__text &u , _start__text &u mostrarSeccion ) "
; Expanded expression: " L21  _stop__text  _start__text  mostrarSeccion ()12 "
; Fused expression:    "( L21 , _stop__text , _start__text , mostrarSeccion )12 "
section .relod
	dd	L22
section .text
	db	0x66, 0x68
L22:
	dd	L21
section .relod
	dd	L23
section .text
	db	0x66, 0x68
L23:
	dd	__stop__text
section .relod
	dd	L24
section .text
	db	0x66, 0x68
L24:
	dd	__start__text
	db	0x9A
section .relot
	dd	L25
section .text
L25:
	dd	_mostrarSeccion
	sub	sp, -12

section .rodata
L26:
	db	" all data: ",10
	times	1 db 0

section .text
; RPN'ized expression: "( L26 , _stop_alldata__ &u , _start_alldata__ &u mostrarSeccion ) "
; Expanded expression: " L26  _stop_alldata__  _start_alldata__  mostrarSeccion ()12 "
; Fused expression:    "( L26 , _stop_alldata__ , _start_alldata__ , mostrarSeccion )12 "
section .relod
	dd	L27
section .text
	db	0x66, 0x68
L27:
	dd	L26
section .relod
	dd	L28
section .text
	db	0x66, 0x68
L28:
	dd	__stop_alldata__
section .relod
	dd	L29
section .text
	db	0x66, 0x68
L29:
	dd	__start_alldata__
	db	0x9A
section .relot
	dd	L30
section .text
L30:
	dd	_mostrarSeccion
	sub	sp, -12

section .rodata
L31:
	db	"   .rodata ",10
	times	1 db 0

section .text
; RPN'ized expression: "( L31 , _stop__rodata &u , _start__rodata &u mostrarSeccion ) "
; Expanded expression: " L31  _stop__rodata  _start__rodata  mostrarSeccion ()12 "
; Fused expression:    "( L31 , _stop__rodata , _start__rodata , mostrarSeccion )12 "
section .relod
	dd	L32
section .text
	db	0x66, 0x68
L32:
	dd	L31
section .relod
	dd	L33
section .text
	db	0x66, 0x68
L33:
	dd	__stop__rodata
section .relod
	dd	L34
section .text
	db	0x66, 0x68
L34:
	dd	__start__rodata
	db	0x9A
section .relot
	dd	L35
section .text
L35:
	dd	_mostrarSeccion
	sub	sp, -12

section .rodata
L36:
	db	"   .data   ",10
	times	1 db 0

section .text
; RPN'ized expression: "( L36 , _stop__data &u , _start__data &u mostrarSeccion ) "
; Expanded expression: " L36  _stop__data  _start__data  mostrarSeccion ()12 "
; Fused expression:    "( L36 , _stop__data , _start__data , mostrarSeccion )12 "
section .relod
	dd	L37
section .text
	db	0x66, 0x68
L37:
	dd	L36
section .relod
	dd	L38
section .text
	db	0x66, 0x68
L38:
	dd	__stop__data
section .relod
	dd	L39
section .text
	db	0x66, 0x68
L39:
	dd	__start__data
	db	0x9A
section .relot
	dd	L40
section .text
L40:
	dd	_mostrarSeccion
	sub	sp, -12

section .rodata
L41:
	db	"   .bss    ",10
	times	1 db 0

section .text
; RPN'ized expression: "( L41 , _stop__bss &u , _start__bss &u mostrarSeccion ) "
; Expanded expression: " L41  _stop__bss  _start__bss  mostrarSeccion ()12 "
; Fused expression:    "( L41 , _stop__bss , _start__bss , mostrarSeccion )12 "
section .relod
	dd	L42
section .text
	db	0x66, 0x68
L42:
	dd	L41
section .relod
	dd	L43
section .text
	db	0x66, 0x68
L43:
	dd	__stop__bss
section .relod
	dd	L44
section .text
	db	0x66, 0x68
L44:
	dd	__start__bss
	db	0x9A
section .relot
	dd	L45
section .text
L45:
	dd	_mostrarSeccion
	sub	sp, -12
L13:
	db	0x66
	leave
	retf
L46:

section .fxnsz
	dd	L46 - _mostrarSecciones


	extern	_printStrVideo
	extern	_printLHexVideo
	extern	_printLnVideo
	extern	__stop_allcode__
	extern	__start_allcode__
	extern	__stop__text
	extern	__start__text
	extern	__stop_alldata__
	extern	__start_alldata__
	extern	__stop__rodata
	extern	__start__rodata
	extern	__stop__data
	extern	__start__data
	extern	__stop__bss
	extern	__start__bss

; Syntax/declaration table/stack:
; Bytes used: 1900/40960


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
; Ident printCarVideo
; Ident car
; Ident printLnVideo
; Ident printStrVideo
; Ident str
; Ident printStrHastaVideo
; Ident n
; Ident lleno
; Ident printDecVideo
; Ident num
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
; Bytes used: 1247/16384

; Next label number: 47
; Compilation succeeded.
