bits 16

; glb _start : (void) void
; glb __start__ : (void) void
; glb main : (void) void
; glb finProceso : (void) void
; glb finThread : (void) void
; glb __start__ : (void) void
section .text
	global	___start__
___start__:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; RPN'ized expression: "( main ) "
; Expanded expression: " main ()0 "
; Fused expression:    "( main )0 "
	db	0x9A
section .relot
	dd	L3
section .text
L3:
	dd	_main
L1:
	db	0x66
	leave
	retf
L4:

section .fxnsz noalloc
	dd	L4 - ___start__


	extern	_main

; Syntax/declaration table/stack:
; Bytes used: 230/40960


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
; Ident _start
; Ident <something>
; Ident __start__
; Ident main
; Ident finProceso
; Ident finThread
; Bytes used: 182/16384

; Next label number: 5
; Compilation succeeded.
