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
; glb ptrTVI : * * (void) void
; glb valorIMR : (void) unsigned short
; glb establecerIMR : (
; prm     nuevoIMR : unsigned short
;     ) void
; glb mask_pic1 : (
; prm     irq : unsigned char
;     ) void
; glb mask_pic2 : (
; prm     irq : unsigned char
;     ) void
; glb unmask_pic1 : (
; prm     irq : unsigned char
;     ) void
; glb unmask_pic2 : (
; prm     irq : unsigned char
;     ) void
; glb get_pic1_isr : (void) unsigned char
; glb get_pic2_isr : (void) unsigned char
; glb set_pics : (
; prm     irq0 : unsigned char
; prm     irq8 : unsigned char
;     ) void
; glb pic_setup : (void) void
; glb enable_hwirq : (
; prm     hwirq : int
; prm     rti : * (void) void
;     ) void
; glb ptrTVI : * * (void) void
section .data
	align 4
	global	_ptrTVI
_ptrTVI:
; =
; glb <something> : * * (void) void
; RPN'ized expression: "0 (something1) "
; Expanded expression: "0 "
	dd	0

 section .text      
   global _valorIMR 
 _valorIMR:         
   in al,0a1h       
   mov ah,al        
   in al,021h       
   retf             

; glb establecerIMR : (
; prm     nuevoIMR : unsigned short
;     ) void
section .text
	global	_establecerIMR
_establecerIMR:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     nuevoIMR : (@8): unsigned short
   mov ax,[bp+8] 
   out 021h,al   
   mov al,ah     
   out 0a1h,al   

L2:
	db	0x66
	leave
	retf
L4:

section .fxnsz noalloc
	dd	L4 - _establecerIMR

; glb mask_pic1 : (
; prm     irq : unsigned char
;     ) void
section .text
	global	_mask_pic1
_mask_pic1:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     irq : (@8): unsigned char
; RPN'ized expression: "( ( 33 inportb ) irq | , 33 outportb ) "
; Expanded expression: "  33  inportb ()4 (@8) *(1) |  33  outportb ()8 "
; Fused expression:    "( ( 33 , inportb )4 | ax *(@8) , 33 , outportb )8 "
	push	dword 33
	db	0x9A
section .relot
	dd	L7
section .text
L7:
	dd	_inportb
	sub	sp, -4
	movzx	ecx, byte [bp+8]
	or	eax, ecx
	push	eax
	push	dword 33
	db	0x9A
section .relot
	dd	L8
section .text
L8:
	dd	_outportb
	sub	sp, -8
L5:
	db	0x66
	leave
	retf
L9:

section .fxnsz
	dd	L9 - _mask_pic1

; glb mask_pic2 : (
; prm     irq : unsigned char
;     ) void
section .text
	global	_mask_pic2
_mask_pic2:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     irq : (@8): unsigned char
; RPN'ized expression: "( ( 161 inportb ) irq | , 161 outportb ) "
; Expanded expression: "  161  inportb ()4 (@8) *(1) |  161  outportb ()8 "
; Fused expression:    "( ( 161 , inportb )4 | ax *(@8) , 161 , outportb )8 "
	push	dword 161
	db	0x9A
section .relot
	dd	L12
section .text
L12:
	dd	_inportb
	sub	sp, -4
	movzx	ecx, byte [bp+8]
	or	eax, ecx
	push	eax
	push	dword 161
	db	0x9A
section .relot
	dd	L13
section .text
L13:
	dd	_outportb
	sub	sp, -8
L10:
	db	0x66
	leave
	retf
L14:

section .fxnsz
	dd	L14 - _mask_pic2

; glb unmask_pic1 : (
; prm     irq : unsigned char
;     ) void
section .text
	global	_unmask_pic1
_unmask_pic1:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     irq : (@8): unsigned char
; RPN'ized expression: "( ( 33 inportb ) irq ~ & , 33 outportb ) "
; Expanded expression: "  33  inportb ()4 (@8) *(1) ~ &  33  outportb ()8 "
; Fused expression:    "( ( 33 , inportb )4 push-ax *(1) (@8) ~ & *sp ax , 33 , outportb )8 "
	push	dword 33
	db	0x9A
section .relot
	dd	L17
section .text
L17:
	dd	_inportb
	sub	sp, -4
	push	eax
	mov	al, [bp+8]
	movzx	eax, al
	not	eax
	mov	ecx, eax
	pop	eax
	and	eax, ecx
	push	eax
	push	dword 33
	db	0x9A
section .relot
	dd	L18
section .text
L18:
	dd	_outportb
	sub	sp, -8
L15:
	db	0x66
	leave
	retf
L19:

section .fxnsz
	dd	L19 - _unmask_pic1

; glb unmask_pic2 : (
; prm     irq : unsigned char
;     ) void
section .text
	global	_unmask_pic2
_unmask_pic2:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     irq : (@8): unsigned char
; RPN'ized expression: "( ( 161 inportb ) irq ~ & , 161 outportb ) "
; Expanded expression: "  161  inportb ()4 (@8) *(1) ~ &  161  outportb ()8 "
; Fused expression:    "( ( 161 , inportb )4 push-ax *(1) (@8) ~ & *sp ax , 161 , outportb )8 "
	push	dword 161
	db	0x9A
section .relot
	dd	L22
section .text
L22:
	dd	_inportb
	sub	sp, -4
	push	eax
	mov	al, [bp+8]
	movzx	eax, al
	not	eax
	mov	ecx, eax
	pop	eax
	and	eax, ecx
	push	eax
	push	dword 161
	db	0x9A
section .relot
	dd	L23
section .text
L23:
	dd	_outportb
	sub	sp, -8
L20:
	db	0x66
	leave
	retf
L24:

section .fxnsz
	dd	L24 - _unmask_pic2

; glb get_pic1_isr : (void) unsigned char
section .text
	global	_get_pic1_isr
_get_pic1_isr:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; RPN'ized expression: "( 11 , 32 outportb ) "
; Expanded expression: " 11  32  outportb ()8 "
; Fused expression:    "( 11 , 32 , outportb )8 "
	push	dword 11
	push	dword 32
	db	0x9A
section .relot
	dd	L27
section .text
L27:
	dd	_outportb
	sub	sp, -8
; return
; RPN'ized expression: "( 32 inportb ) "
; Expanded expression: " 32  inportb ()4 "
; Fused expression:    "( 32 , inportb )4  "
	push	dword 32
	db	0x9A
section .relot
	dd	L28
section .text
L28:
	dd	_inportb
	sub	sp, -4
L25:
	db	0x66
	leave
	retf
L29:

section .fxnsz
	dd	L29 - _get_pic1_isr

; glb get_pic2_isr : (void) unsigned char
section .text
	global	_get_pic2_isr
_get_pic2_isr:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; RPN'ized expression: "( 11 , 160 outportb ) "
; Expanded expression: " 11  160  outportb ()8 "
; Fused expression:    "( 11 , 160 , outportb )8 "
	push	dword 11
	push	dword 160
	db	0x9A
section .relot
	dd	L32
section .text
L32:
	dd	_outportb
	sub	sp, -8
; return
; RPN'ized expression: "( 160 inportb ) "
; Expanded expression: " 160  inportb ()4 "
; Fused expression:    "( 160 , inportb )4  "
	push	dword 160
	db	0x9A
section .relot
	dd	L33
section .text
L33:
	dd	_inportb
	sub	sp, -4
L30:
	db	0x66
	leave
	retf
L34:

section .fxnsz
	dd	L34 - _get_pic2_isr

; glb set_pics : (
; prm     irq0 : unsigned char
; prm     irq8 : unsigned char
;     ) void
section .text
	global	_set_pics
_set_pics:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     irq0 : (@8): unsigned char
; loc     irq8 : (@12): unsigned char
; RPN'ized expression: "( 17 , 32 outportb ) "
; Expanded expression: " 17  32  outportb ()8 "
; Fused expression:    "( 17 , 32 , outportb )8 "
	push	dword 17
	push	dword 32
	db	0x9A
section .relot
	dd	L37
section .text
L37:
	dd	_outportb
	sub	sp, -8
; RPN'ized expression: "( 17 , 160 outportb ) "
; Expanded expression: " 17  160  outportb ()8 "
; Fused expression:    "( 17 , 160 , outportb )8 "
	push	dword 17
	push	dword 160
	db	0x9A
section .relot
	dd	L38
section .text
L38:
	dd	_outportb
	sub	sp, -8
; RPN'ized expression: "( irq0 , 33 outportb ) "
; Expanded expression: " (@8) *(1)  33  outportb ()8 "
; Fused expression:    "( *(1) (@8) , 33 , outportb )8 "
	mov	al, [bp+8]
	movzx	eax, al
	push	eax
	push	dword 33
	db	0x9A
section .relot
	dd	L39
section .text
L39:
	dd	_outportb
	sub	sp, -8
; RPN'ized expression: "( irq8 , 161 outportb ) "
; Expanded expression: " (@12) *(1)  161  outportb ()8 "
; Fused expression:    "( *(1) (@12) , 161 , outportb )8 "
	mov	al, [bp+12]
	movzx	eax, al
	push	eax
	push	dword 161
	db	0x9A
section .relot
	dd	L40
section .text
L40:
	dd	_outportb
	sub	sp, -8
; RPN'ized expression: "( 4 , 33 outportb ) "
; Expanded expression: " 4  33  outportb ()8 "
; Fused expression:    "( 4 , 33 , outportb )8 "
	push	dword 4
	push	dword 33
	db	0x9A
section .relot
	dd	L41
section .text
L41:
	dd	_outportb
	sub	sp, -8
; RPN'ized expression: "( 2 , 161 outportb ) "
; Expanded expression: " 2  161  outportb ()8 "
; Fused expression:    "( 2 , 161 , outportb )8 "
	push	dword 2
	push	dword 161
	db	0x9A
section .relot
	dd	L42
section .text
L42:
	dd	_outportb
	sub	sp, -8
; RPN'ized expression: "( 1 , 33 outportb ) "
; Expanded expression: " 1  33  outportb ()8 "
; Fused expression:    "( 1 , 33 , outportb )8 "
	push	dword 1
	push	dword 33
	db	0x9A
section .relot
	dd	L43
section .text
L43:
	dd	_outportb
	sub	sp, -8
; RPN'ized expression: "( 1 , 161 outportb ) "
; Expanded expression: " 1  161  outportb ()8 "
; Fused expression:    "( 1 , 161 , outportb )8 "
	push	dword 1
	push	dword 161
	db	0x9A
section .relot
	dd	L44
section .text
L44:
	dd	_outportb
	sub	sp, -8
; RPN'ized expression: "( 1 2 << ~ , 33 outportb ) "
; Expanded expression: " -5  33  outportb ()8 "
; Fused expression:    "( -5 , 33 , outportb )8 "
	push	dword -5
	push	dword 33
	db	0x9A
section .relot
	dd	L45
section .text
L45:
	dd	_outportb
	sub	sp, -8
; RPN'ized expression: "( 0 ~ , 161 outportb ) "
; Expanded expression: " -1  161  outportb ()8 "
; Fused expression:    "( -1 , 161 , outportb )8 "
	push	dword -1
	push	dword 161
	db	0x9A
section .relot
	dd	L46
section .text
L46:
	dd	_outportb
	sub	sp, -8
L35:
	db	0x66
	leave
	retf
L47:

section .fxnsz
	dd	L47 - _set_pics

; glb pic_setup : (void) void
section .text
	global	_pic_setup
_pic_setup:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; RPN'ized expression: "( 112 , 8 set_pics ) "
; Expanded expression: " 112  8  set_pics ()8 "
; Fused expression:    "( 112 , 8 , set_pics )8 "
	push	dword 112
	push	dword 8
	db	0x9A
section .relot
	dd	L50
section .text
L50:
	dd	_set_pics
	sub	sp, -8
L48:
	db	0x66
	leave
	retf
L51:

section .fxnsz
	dd	L51 - _pic_setup

; glb enable_hwirq : (
; prm     hwirq : int
; prm     rti : * (void) void
;     ) void
section .text
	global	_enable_hwirq
_enable_hwirq:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     hwirq : (@8): int
; loc     rti : (@12): * (void) void
; loc     vector : (@-4): int
; if
; RPN'ized expression: "hwirq 8 < "
; Expanded expression: "(@8) *(4) 8 < "
; Fused expression:    "< *(@8) 8 IF! "
	mov	eax, [bp+8]
	cmp	eax, 8
	jge	L54
; {
; RPN'ized expression: "( 1 hwirq << unmask_pic1 ) "
; Expanded expression: " 1 (@8) *(4) <<  unmask_pic1 ()4 "
; Fused expression:    "( << 1 *(@8) , unmask_pic1 )4 "
	mov	eax, 1
	mov	cl, [bp+8]
	shl	eax, cl
	push	eax
	db	0x9A
section .relot
	dd	L56
section .text
L56:
	dd	_unmask_pic1
	sub	sp, -4
; RPN'ized expression: "vector 8 hwirq + = "
; Expanded expression: "(@-4) 8 (@8) *(4) + =(4) "
; Fused expression:    "+ 8 *(@8) =(204) *(@-4) ax "
	mov	eax, 8
	add	eax, [bp+8]
	mov	[bp-4], eax
; }
	jmp	L55
L54:
; else
; {
; RPN'ized expression: "( 1 hwirq 8 - << unmask_pic2 ) "
; Expanded expression: " 1 (@8) *(4) 8 - <<  unmask_pic2 ()4 "
; Fused expression:    "( - *(@8) 8 << 1 ax , unmask_pic2 )4 "
	mov	eax, [bp+8]
	sub	eax, 8
	mov	ecx, eax
	mov	eax, 1
	shl	eax, cl
	push	eax
	db	0x9A
section .relot
	dd	L57
section .text
L57:
	dd	_unmask_pic2
	sub	sp, -4
; RPN'ized expression: "vector 112 hwirq + 8 - = "
; Expanded expression: "(@-4) 112 (@8) *(4) + 8 - =(4) "
; Fused expression:    "+ 112 *(@8) - ax 8 =(204) *(@-4) ax "
	mov	eax, 112
	add	eax, [bp+8]
	sub	eax, 8
	mov	[bp-4], eax
; }
L55:
; RPN'ized expression: "ptrTVI vector + *u rti = "
; Expanded expression: "ptrTVI *(4) (@-4) *(4) 4 * + (@12) *(4) =(4) "
; Fused expression:    "ptrTVI push-ax * *(@-4) 4 + **sp ax =(204) *ax *(@12) "
section .relod
	dd	L58
section .text
	db	0x66, 0xB8
L58:
	dd	_ptrTVI
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 4
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	mov	ebx, eax
	mov	eax, [bp+12]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
L52:
	db	0x66
	leave
	retf
L59:

section .fxnsz
	dd	L59 - _enable_hwirq


	extern	_inportb
	extern	_outportb

; Syntax/declaration table/stack:
; Bytes used: 2050/40960


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
; Ident ptrTVI
; Ident valorIMR
; Ident establecerIMR
; Ident nuevoIMR
; Ident mask_pic1
; Ident irq
; Ident mask_pic2
; Ident unmask_pic1
; Ident unmask_pic2
; Ident get_pic1_isr
; Ident get_pic2_isr
; Ident set_pics
; Ident irq0
; Ident irq8
; Ident pic_setup
; Ident enable_hwirq
; Ident hwirq
; Ident rti
; Bytes used: 987/16384

; Next label number: 60
; Compilation succeeded.
