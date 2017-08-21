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
; glb inportb : (
; prm     port : unsigned short
;     ) unsigned char
; glb inport : (
; prm     port : unsigned short
;     ) unsigned short
; glb outport : (
; prm     port : unsigned short
; prm     val : unsigned short
;     ) void
; glb outportb : (
; prm     port : unsigned short
; prm     val : unsigned char
;     ) void
; glb inportb_r : (
; prm     port : unsigned char
;     ) unsigned char
; glb outportb_r : (
; prm     port : unsigned char
; prm     val : unsigned char
;     ) void
; glb contadorTimer0 : (void) unsigned short
; glb leerCmos : (
; prm     reg : unsigned char
;     ) unsigned char
; glb escribirCmos : (
; prm     reg : unsigned char
; prm     valor : unsigned char
;     ) void
; glb bcdToInt : (
; prm     valorBCD : unsigned char
;     ) unsigned char
; glb leerCmos : (
; prm     reg : unsigned char
;     ) unsigned char
section .text
	global	_leerCmos
_leerCmos:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     reg : (@8): unsigned char
; loc     dato : (@-4): unsigned char
; RPN'ized expression: "reg 128 |= "
; Expanded expression: "(@8) 128 |=(1) "
; Fused expression:    "|=(156) *(@8) 128 "
	mov	al, [bp+8]
	movzx	eax, al
	or	eax, 128
	mov	[bp+8], al
	movzx	eax, al
 pushf 
 cli 

; RPN'ized expression: "( reg , 112 outportb ) "
; Expanded expression: " (@8) *(1)  112  outportb ()8 "
; Fused expression:    "( *(1) (@8) , 112 , outportb )8 "
	mov	al, [bp+8]
	movzx	eax, al
	push	eax
	push	dword 112
	db	0x9A
section .relot
	dd	L3
section .text
L3:
	dd	_outportb
	sub	sp, -8
; RPN'ized expression: "dato ( 113 inportb ) = "
; Expanded expression: "(@-4)  113  inportb ()4 =(1) "
; Fused expression:    "( 113 , inportb )4 =(156) *(@-4) ax "
	push	dword 113
	db	0x9A
section .relot
	dd	L4
section .text
L4:
	dd	_inportb
	sub	sp, -4
	mov	[bp-4], al
	movzx	eax, al
 popf 

; return
; RPN'ized expression: "dato "
; Expanded expression: "(@-4) *(1) "
; Fused expression:    "*(1) (@-4)  "
	mov	al, [bp-4]
	movzx	eax, al
L1:
	db	0x66
	leave
	retf
L5:

section .fxnsz noalloc
	dd	L5 - _leerCmos

; glb escribirCmos : (
; prm     reg : unsigned char
; prm     valor : unsigned char
;     ) void
section .text
	global	_escribirCmos
_escribirCmos:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     reg : (@8): unsigned char
; loc     valor : (@12): unsigned char
; RPN'ized expression: "reg 128 |= "
; Expanded expression: "(@8) 128 |=(1) "
; Fused expression:    "|=(156) *(@8) 128 "
	mov	al, [bp+8]
	movzx	eax, al
	or	eax, 128
	mov	[bp+8], al
	movzx	eax, al
 pushf 
 cli 

; RPN'ized expression: "( reg , 112 outportb ) "
; Expanded expression: " (@8) *(1)  112  outportb ()8 "
; Fused expression:    "( *(1) (@8) , 112 , outportb )8 "
	mov	al, [bp+8]
	movzx	eax, al
	push	eax
	push	dword 112
	db	0x9A
section .relot
	dd	L8
section .text
L8:
	dd	_outportb
	sub	sp, -8
; RPN'ized expression: "( valor , 113 outportb ) "
; Expanded expression: " (@12) *(1)  113  outportb ()8 "
; Fused expression:    "( *(1) (@12) , 113 , outportb )8 "
	mov	al, [bp+12]
	movzx	eax, al
	push	eax
	push	dword 113
	db	0x9A
section .relot
	dd	L9
section .text
L9:
	dd	_outportb
	sub	sp, -8
 popf 

L6:
	db	0x66
	leave
	retf
L10:

section .fxnsz
	dd	L10 - _escribirCmos

; glb bcdToInt : (
; prm     valorBCD : unsigned char
;     ) unsigned char
section .text
	global	_bcdToInt
_bcdToInt:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     valorBCD : (@8): unsigned char
; return
; RPN'ized expression: "valorBCD 4 >> 10 * valorBCD 15 & + "
; Expanded expression: "(@8) *(1) 4 >> 10 * (@8) *(1) 15 & + "
; Fused expression:    ">> *(@8) 4 * ax 10 push-ax & *(@8) 15 + *sp ax unsigned char  "
	mov	al, [bp+8]
	movzx	eax, al
	sar	eax, 4
	imul	eax, eax, 10
	push	eax
	mov	al, [bp+8]
	movzx	eax, al
	and	eax, 15
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	and	eax, 255
L11:
	db	0x66
	leave
	retf
L13:

section .fxnsz
	dd	L13 - _bcdToInt


	extern	_outportb
	extern	_inportb

; Syntax/declaration table/stack:
; Bytes used: 1450/40960


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
; Ident inportb
; Ident port
; Ident inport
; Ident outport
; Ident val
; Ident outportb
; Ident inportb_r
; Ident outportb_r
; Ident contadorTimer0
; Ident leerCmos
; Ident reg
; Ident escribirCmos
; Ident valor
; Ident bcdToInt
; Ident valorBCD
; Bytes used: 860/16384

; Next label number: 14
; Compilation succeeded.
