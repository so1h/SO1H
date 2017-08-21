bits 16

%define NUM_MATRICULA 0x0123
; glb matrix : (void) void
section .text
	global	_matrix
_matrix:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
 times NUM_MATRICULA dw NUM_MATRICULA
L1:
	db	0x66
	leave
	retf
L3:

section .fxnsz noalloc
	dd	L3 - _matrix



; Syntax/declaration table/stack:
; Bytes used: 80/40960


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
; Ident matrix
; Ident <something>
; Bytes used: 142/16384

; Next label number: 4
; Compilation succeeded.
