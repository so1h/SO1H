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
; glb printCar_t : * (
; prm     car : char
;     ) int
; glb size_t : unsigned
; glb printCarN_t : * (
; prm     ptr : * void
; prm     n : unsigned
;     ) unsigned
; glb printGenLn : (
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
; glb printGenStr : (
; prm     str : * char
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
; glb printGenStrHasta : (
; prm     str : * char
; prm     n : unsigned short
; prm     lleno : int
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
; glb printGenDec : (
; prm     num : unsigned short
; prm     l : unsigned short
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
; glb printGenLDec : (
; prm     num : unsigned
; prm     l : unsigned short
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
; glb printGenInt : (
; prm     num : short
; prm     l : unsigned short
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
; glb printGenLInt : (
; prm     num : int
; prm     l : unsigned short
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
; glb printGenHex : (
; prm     num : unsigned short
; prm     l : unsigned short
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
; glb printGenLHex : (
; prm     num : unsigned
; prm     l : unsigned short
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
; glb printGenBin : (
; prm     num : unsigned short
; prm     l : unsigned short
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
; glb printGenLBin : (
; prm     num : unsigned
; prm     l : unsigned short
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
; glb printGenPtr : (
; prm     ptr : * unsigned char
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
; glb printfGen : (
; prm     formato : * char
; prm     p : * (
; prm         car : char
;         ) int
; prm     ...
;     ) int
; RPN'ized expression: "17 "
; Expanded expression: "17 "
; Expression value: 17
; glb dig : [17u] char
; glb printGenLn : (
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
section .text
	global	_printGenLn
_printGenLn:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     p : (@8): * (
; prm         car : char
;         ) int
; RPN'ized expression: "( 13 p ) "
; Expanded expression: " 13  (@8) *(4) ()4 "
; Fused expression:    "( 13 , *(4) (@8) )4 "
	push	dword 13
	mov	eax, [bp+8]
	db	0x9A
section .relot
	dd	L3
section .text
L3:
	dd	L4
L4:
	mov	si, sp
	add	word [ss:si], L5 - L4
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L5:
	sub	sp, -4
; RPN'ized expression: "( 10 p ) "
; Expanded expression: " 10  (@8) *(4) ()4 "
; Fused expression:    "( 10 , *(4) (@8) )4 "
	push	dword 10
	mov	eax, [bp+8]
	db	0x9A
section .relot
	dd	L6
section .text
L6:
	dd	L7
L7:
	mov	si, sp
	add	word [ss:si], L8 - L7
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L8:
	sub	sp, -4
; return
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; Fused expression:    "2  "
	mov	eax, 2
L1:
	db	0x66
	leave
	retf
L9:

section .fxnsz noalloc
	dd	L9 - _printGenLn

; glb printGenStr : (
; prm     str : * char
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
section .text
	global	_printGenStr
_printGenStr:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          8
; loc     str : (@8): * char
; loc     p : (@12): * (
; prm         car : char
;         ) int
; loc     car : (@-4): char
; loc     cont : (@-8): int
; RPN'ized expression: "cont 0 = "
; Expanded expression: "(@-8) 0 =(4) "
; Fused expression:    "=(204) *(@-8) 0 "
	mov	eax, 0
	mov	[bp-8], eax
; while
; loc     <something> : char
; RPN'ized expression: "car str ++p *u = 0 (something14) != "
; Expanded expression: "(@-4) (@8) ++p(4) *(-1) =(-1) 0 != "
L12:
; Fused expression:    "++p(4) *(@8) =(119) *(@-4) *ax != ax 0 IF! "
	mov	eax, [bp+8]
	inc	dword [bp+8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	mov	[bp-4], al
	movsx	eax, al
	cmp	eax, 0
	je	L13
; {
; if
; RPN'ized expression: "car 10 == "
; Expanded expression: "(@-4) *(-1) 10 == "
; Fused expression:    "== *(@-4) 10 IF! "
	mov	al, [bp-4]
	movsx	eax, al
	cmp	eax, 10
	jne	L15
; {
; RPN'ized expression: "( 13 p ) "
; Expanded expression: " 13  (@12) *(4) ()4 "
; Fused expression:    "( 13 , *(4) (@12) )4 "
	push	dword 13
	mov	eax, [bp+12]
	db	0x9A
section .relot
	dd	L17
section .text
L17:
	dd	L18
L18:
	mov	si, sp
	add	word [ss:si], L19 - L18
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L19:
	sub	sp, -4
; RPN'ized expression: "cont ++p "
; Expanded expression: "(@-8) ++p(4) "
; Fused expression:    "++p(4) *(@-8) "
	mov	eax, [bp-8]
	inc	dword [bp-8]
; }
L15:
; RPN'ized expression: "( car p ) "
; Expanded expression: " (@-4) *(-1)  (@12) *(4) ()4 "
; Fused expression:    "( *(-1) (@-4) , *(4) (@12) )4 "
	mov	al, [bp-4]
	movsx	eax, al
	push	eax
	mov	eax, [bp+12]
	db	0x9A
section .relot
	dd	L20
section .text
L20:
	dd	L21
L21:
	mov	si, sp
	add	word [ss:si], L22 - L21
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L22:
	sub	sp, -4
; RPN'ized expression: "cont ++p "
; Expanded expression: "(@-8) ++p(4) "
; Fused expression:    "++p(4) *(@-8) "
	mov	eax, [bp-8]
	inc	dword [bp-8]
; }
	jmp	L12
L13:
; return
; RPN'ized expression: "cont "
; Expanded expression: "(@-8) *(4) "
; Fused expression:    "*(4) (@-8)  "
	mov	eax, [bp-8]
L10:
	db	0x66
	leave
	retf
L23:

section .fxnsz
	dd	L23 - _printGenStr

; glb printGenStrHasta : (
; prm     str : * char
; prm     n : unsigned short
; prm     lleno : int
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
section .text
	global	_printGenStrHasta
_printGenStrHasta:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          8
; loc     str : (@8): * char
; loc     n : (@12): unsigned short
; loc     lleno : (@16): int
; loc     p : (@20): * (
; prm         car : char
;         ) int
; loc     car : (@-4): char
; loc     i : (@-8): unsigned short
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-8) 0 =(2) "
; Fused expression:    "=(204) *(@-8) 0 "
	mov	eax, 0
	mov	[bp-8], eax
; while
; loc     <something> : char
; RPN'ized expression: "i n < car str ++p *u = 0 (something28) != && "
; Expanded expression: "(@-8) *(2) (@12) *(2) < [sh&&->29] (@-4) (@8) ++p(4) *(-1) =(-1) 0 != &&[29] "
L26:
; Fused expression:    "< *(@-8) *(@12) [sh&&->29] ++p(4) *(@8) =(119) *(@-4) *ax != ax 0 &&[29]  "
	mov	ax, [bp-8]
	movzx	eax, ax
	movzx	ecx, word [bp+12]
	cmp	eax, ecx
	setl	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L29
	mov	eax, [bp+8]
	inc	dword [bp+8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	mov	[bp-4], al
	movsx	eax, al
	cmp	eax, 0
	setne	al
	movzx	eax, al
L29:
; JumpIfZero
	test	eax, eax
	je	L27
; {
; if
; RPN'ized expression: "car 10 == "
; Expanded expression: "(@-4) *(-1) 10 == "
; Fused expression:    "== *(@-4) 10 IF! "
	mov	al, [bp-4]
	movsx	eax, al
	cmp	eax, 10
	jne	L30
; RPN'ized expression: "( 13 p ) "
; Expanded expression: " 13  (@20) *(4) ()4 "
; Fused expression:    "( 13 , *(4) (@20) )4 "
	push	dword 13
	mov	eax, [bp+20]
	db	0x9A
section .relot
	dd	L32
section .text
L32:
	dd	L33
L33:
	mov	si, sp
	add	word [ss:si], L34 - L33
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L34:
	sub	sp, -4
L30:
; RPN'ized expression: "( car p ) "
; Expanded expression: " (@-4) *(-1)  (@20) *(4) ()4 "
; Fused expression:    "( *(-1) (@-4) , *(4) (@20) )4 "
	mov	al, [bp-4]
	movsx	eax, al
	push	eax
	mov	eax, [bp+20]
	db	0x9A
section .relot
	dd	L35
section .text
L35:
	dd	L36
L36:
	mov	si, sp
	add	word [ss:si], L37 - L36
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L37:
	sub	sp, -4
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-8) ++p(2) "
; Fused expression:    "++p(2) *(@-8) "
	mov	ax, [bp-8]
	movzx	eax, ax
	inc	word [bp-8]
; }
	jmp	L26
L27:
; if
; RPN'ized expression: "lleno "
; Expanded expression: "(@16) *(4) "
; Fused expression:    "*(4) (@16)  "
	mov	eax, [bp+16]
; JumpIfZero
	test	eax, eax
	je	L38
; while
; RPN'ized expression: "i n < "
; Expanded expression: "(@-8) *(2) (@12) *(2) < "
L40:
; Fused expression:    "< *(@-8) *(@12) IF! "
	mov	ax, [bp-8]
	movzx	eax, ax
	movzx	ecx, word [bp+12]
	cmp	eax, ecx
	jge	L41
; {
; RPN'ized expression: "( 32 p ) "
; Expanded expression: " 32  (@20) *(4) ()4 "
; Fused expression:    "( 32 , *(4) (@20) )4 "
	push	dword 32
	mov	eax, [bp+20]
	db	0x9A
section .relot
	dd	L42
section .text
L42:
	dd	L43
L43:
	mov	si, sp
	add	word [ss:si], L44 - L43
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L44:
	sub	sp, -4
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-8) ++p(2) "
; Fused expression:    "++p(2) *(@-8) "
	mov	ax, [bp-8]
	movzx	eax, ax
	inc	word [bp-8]
; }
	jmp	L40
L41:
L38:
; return
; RPN'ized expression: "i "
; Expanded expression: "(@-8) *(2) "
; Fused expression:    "*(2) (@-8)  "
	mov	ax, [bp-8]
	movzx	eax, ax
L24:
	db	0x66
	leave
	retf
L45:

section .fxnsz
	dd	L45 - _printGenStrHasta

; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
; glb str : [11u] char
section .bss
_str:
	resb	11

; glb printGenDec : (
; prm     num : unsigned short
; prm     l : unsigned short
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
section .text
	global	_printGenDec
_printGenDec:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         16
; loc     num : (@8): unsigned short
; loc     l : (@12): unsigned short
; loc     p : (@16): * (
; prm         car : char
;         ) int
; {
; loc         i : (@-4): unsigned short
; loc         j : (@-8): unsigned short
; loc         cont : (@-12): int
; RPN'ized expression: "cont 0 = "
; Expanded expression: "(@-12) 0 =(4) "
; Fused expression:    "=(204) *(@-12) 0 "
	mov	eax, 0
	mov	[bp-12], eax
; loc         ptr : (@-16): * char
; if
; RPN'ized expression: "l 0 == "
; Expanded expression: "(@12) *(2) 0 == "
; Fused expression:    "== *(@12) 0 IF! "
	mov	ax, [bp+12]
	movzx	eax, ax
	cmp	eax, 0
	jne	L48
; RPN'ized expression: "l 1 = "
; Expanded expression: "(@12) 1 =(2) "
; Fused expression:    "=(172) *(@12) 1 "
	mov	eax, 1
	mov	[bp+12], ax
	movzx	eax, ax
L48:
; if
; RPN'ized expression: "num 0 == "
; Expanded expression: "(@8) *(2) 0 == "
; Fused expression:    "== *(@8) 0 IF! "
	mov	ax, [bp+8]
	movzx	eax, ax
	cmp	eax, 0
	jne	L50
; {
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(2) "
; Fused expression:    "=(172) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], ax
	movzx	eax, ax
L52:
; RPN'ized expression: "i l 1 - < "
; Expanded expression: "(@-4) *(2) (@12) *(2) 1 - < "
; Fused expression:    "- *(@12) 1 < *(@-4) ax IF! "
	mov	ax, [bp+12]
	movzx	eax, ax
	dec	eax
	mov	ecx, eax
	mov	ax, [bp-4]
	movzx	eax, ax
	cmp	eax, ecx
	jge	L55
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(2) "
; RPN'ized expression: "( 32 p ) "
; Expanded expression: " 32  (@16) *(4) ()4 "
; Fused expression:    "( 32 , *(4) (@16) )4 "
	push	dword 32
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L56
section .text
L56:
	dd	L57
L57:
	mov	si, sp
	add	word [ss:si], L58 - L57
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L58:
	sub	sp, -4
L53:
; Fused expression:    "++p(2) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	inc	word [bp-4]
	jmp	L52
L55:
; RPN'ized expression: "( 48 p ) "
; Expanded expression: " 48  (@16) *(4) ()4 "
; Fused expression:    "( 48 , *(4) (@16) )4 "
	push	dword 48
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L59
section .text
L59:
	dd	L60
L60:
	mov	si, sp
	add	word [ss:si], L61 - L60
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L61:
	sub	sp, -4
; return
; RPN'ized expression: "l "
; Expanded expression: "(@12) *(2) "
; Fused expression:    "*(2) (@12)  "
	mov	ax, [bp+12]
	movzx	eax, ax
	jmp	L46
; }
L50:
; loc         <something> : * char
; RPN'ized expression: "ptr str 5 + *u &u (something62) = "
; Expanded expression: "(@-16) str 5 + =(4) "
; Fused expression:    "str + ax 5 =(204) *(@-16) ax "
section .relod
	dd	L63
section .text
	db	0x66, 0xB8
L63:
	dd	_str
	add	eax, 5
	mov	[bp-16], eax
; loc         <something> : char
; RPN'ized expression: "ptr *u 0 (something64) = "
; Expanded expression: "(@-16) *(4) 0 =(-1) "
; Fused expression:    "*(4) (@-16) =(124) *ax 0 "
	mov	eax, [bp-16]
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movsx	eax, al
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(2) "
; Fused expression:    "=(172) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], ax
	movzx	eax, ax
; while
; RPN'ized expression: "num 0 > "
; Expanded expression: "(@8) *(2) 0 > "
L65:
; Fused expression:    "> *(@8) 0 IF! "
	mov	ax, [bp+8]
	movzx	eax, ax
	cmp	eax, 0
	jle	L66
; {
; loc             <something> : unsigned short
; RPN'ized expression: "str 4 i - + *u dig num 10 % (something67) + *u = "
; Expanded expression: "str 4 (@-4) *(2) - + dig (@8) *(2) 10 % unsigned short + *(-1) =(-1) "
; Fused expression:    "str push-ax - 4 *(@-4) + *sp ax push-ax dig push-ax % *(@8) 10 unsigned short + *sp ax =(119) **sp *ax "
section .relod
	dd	L68
section .text
	db	0x66, 0xB8
L68:
	dd	_str
	push	eax
	mov	eax, 4
	movzx	ecx, word [bp-4]
	sub	eax, ecx
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
section .relod
	dd	L69
section .text
	db	0x66, 0xB8
L69:
	dd	_dig
	push	eax
	mov	ax, [bp+8]
	movzx	eax, ax
	cdq
	mov	ecx, 10
	idiv	ecx
	mov	eax, edx
	movzx	eax, ax
	mov	ecx, eax
	pop	eax
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
; RPN'ized expression: "num num 10 / = "
; Expanded expression: "(@8) (@8) *(2) 10 / =(2) "
; Fused expression:    "/ *(@8) 10 =(172) *(@8) ax "
	mov	ax, [bp+8]
	movzx	eax, ax
	cdq
	mov	ecx, 10
	idiv	ecx
	mov	[bp+8], ax
	movzx	eax, ax
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(2) "
; Fused expression:    "++p(2) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	inc	word [bp-4]
; }
	jmp	L65
L66:
; for
; RPN'ized expression: "j i = "
; Expanded expression: "(@-8) (@-4) *(2) =(2) "
; Fused expression:    "=(170) *(@-8) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	mov	[bp-8], ax
	movzx	eax, ax
L70:
; RPN'ized expression: "j l < "
; Expanded expression: "(@-8) *(2) (@12) *(2) < "
; Fused expression:    "< *(@-8) *(@12) IF! "
	mov	ax, [bp-8]
	movzx	eax, ax
	movzx	ecx, word [bp+12]
	cmp	eax, ecx
	jge	L73
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-8) ++p(2) "
; RPN'ized expression: "( 32 p ) "
; Expanded expression: " 32  (@16) *(4) ()4 "
; Fused expression:    "( 32 , *(4) (@16) )4 "
	push	dword 32
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L74
section .text
L74:
	dd	L75
L75:
	mov	si, sp
	add	word [ss:si], L76 - L75
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L76:
	sub	sp, -4
L71:
; Fused expression:    "++p(2) *(@-8) "
	mov	ax, [bp-8]
	movzx	eax, ax
	inc	word [bp-8]
	jmp	L70
L73:
; loc         <something> : * char
; RPN'ized expression: "ptr str 4 i - 1 + + *u &u (something77) = "
; Expanded expression: "(@-16) str 4 (@-4) *(2) - 1 + + =(4) "
; Fused expression:    "str push-ax - 4 *(@-4) + ax 1 + *sp ax =(204) *(@-16) ax "
section .relod
	dd	L78
section .text
	db	0x66, 0xB8
L78:
	dd	_str
	push	eax
	mov	eax, 4
	movzx	ecx, word [bp-4]
	sub	eax, ecx
	inc	eax
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	[bp-16], eax
; while
; loc         <something> : char
; RPN'ized expression: "ptr *u 0 (something81) != "
; Expanded expression: "(@-16) *(4) *(-1) 0 != "
L79:
; Fused expression:    "*(4) (@-16) != *ax 0 IF! "
	mov	eax, [bp-16]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	cmp	eax, 0
	je	L80
; {
; RPN'ized expression: "( ptr *u p ) "
; Expanded expression: " (@-16) *(4) *(-1)  (@16) *(4) ()4 "
; Fused expression:    "( *(4) (@-16) *(-1) ax , *(4) (@16) )4 "
	mov	eax, [bp-16]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	push	eax
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L82
section .text
L82:
	dd	L83
L83:
	mov	si, sp
	add	word [ss:si], L84 - L83
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L84:
	sub	sp, -4
; RPN'ized expression: "ptr ++p "
; Expanded expression: "(@-16) ++p(4) "
; Fused expression:    "++p(4) *(@-16) "
	mov	eax, [bp-16]
	inc	dword [bp-16]
; RPN'ized expression: "cont ++p "
; Expanded expression: "(@-12) ++p(4) "
; Fused expression:    "++p(4) *(@-12) "
	mov	eax, [bp-12]
	inc	dword [bp-12]
; }
	jmp	L79
L80:
; return
; RPN'ized expression: "l cont + "
; Expanded expression: "(@12) *(2) (@-12) *(4) + "
; Fused expression:    "+ *(@12) *(@-12)  "
	mov	ax, [bp+12]
	movzx	eax, ax
	add	eax, [bp-12]
	jmp	L46
; }
L46:
	db	0x66
	leave
	retf
L85:

section .fxnsz
	dd	L85 - _printGenDec

; glb printGenLDec : (
; prm     num : unsigned
; prm     l : unsigned short
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
section .text
	global	_printGenLDec
_printGenLDec:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         16
; loc     num : (@8): unsigned
; loc     l : (@12): unsigned short
; loc     p : (@16): * (
; prm         car : char
;         ) int
; {
; loc         i : (@-4): unsigned short
; loc         j : (@-8): unsigned short
; loc         cont : (@-12): int
; RPN'ized expression: "cont 0 = "
; Expanded expression: "(@-12) 0 =(4) "
; Fused expression:    "=(204) *(@-12) 0 "
	mov	eax, 0
	mov	[bp-12], eax
; loc         ptr : (@-16): * char
; if
; RPN'ized expression: "l 0 == "
; Expanded expression: "(@12) *(2) 0 == "
; Fused expression:    "== *(@12) 0 IF! "
	mov	ax, [bp+12]
	movzx	eax, ax
	cmp	eax, 0
	jne	L88
; RPN'ized expression: "l 1 = "
; Expanded expression: "(@12) 1 =(2) "
; Fused expression:    "=(172) *(@12) 1 "
	mov	eax, 1
	mov	[bp+12], ax
	movzx	eax, ax
L88:
; if
; RPN'ized expression: "num 0 == "
; Expanded expression: "(@8) *(4) 0 == "
; Fused expression:    "== *(@8) 0 IF! "
	mov	eax, [bp+8]
	cmp	eax, 0
	jne	L90
; {
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(2) "
; Fused expression:    "=(172) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], ax
	movzx	eax, ax
L92:
; RPN'ized expression: "i l 1 - < "
; Expanded expression: "(@-4) *(2) (@12) *(2) 1 - < "
; Fused expression:    "- *(@12) 1 < *(@-4) ax IF! "
	mov	ax, [bp+12]
	movzx	eax, ax
	dec	eax
	mov	ecx, eax
	mov	ax, [bp-4]
	movzx	eax, ax
	cmp	eax, ecx
	jge	L95
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(2) "
; RPN'ized expression: "( 32 p ) "
; Expanded expression: " 32  (@16) *(4) ()4 "
; Fused expression:    "( 32 , *(4) (@16) )4 "
	push	dword 32
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L96
section .text
L96:
	dd	L97
L97:
	mov	si, sp
	add	word [ss:si], L98 - L97
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L98:
	sub	sp, -4
L93:
; Fused expression:    "++p(2) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	inc	word [bp-4]
	jmp	L92
L95:
; RPN'ized expression: "( 48 p ) "
; Expanded expression: " 48  (@16) *(4) ()4 "
; Fused expression:    "( 48 , *(4) (@16) )4 "
	push	dword 48
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L99
section .text
L99:
	dd	L100
L100:
	mov	si, sp
	add	word [ss:si], L101 - L100
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L101:
	sub	sp, -4
; return
; RPN'ized expression: "l "
; Expanded expression: "(@12) *(2) "
; Fused expression:    "*(2) (@12)  "
	mov	ax, [bp+12]
	movzx	eax, ax
	jmp	L86
; }
L90:
; loc         <something> : * char
; RPN'ized expression: "ptr str 10 + *u &u (something102) = "
; Expanded expression: "(@-16) str 10 + =(4) "
; Fused expression:    "str + ax 10 =(204) *(@-16) ax "
section .relod
	dd	L103
section .text
	db	0x66, 0xB8
L103:
	dd	_str
	add	eax, 10
	mov	[bp-16], eax
; loc         <something> : char
; RPN'ized expression: "ptr *u 0 (something104) = "
; Expanded expression: "(@-16) *(4) 0 =(-1) "
; Fused expression:    "*(4) (@-16) =(124) *ax 0 "
	mov	eax, [bp-16]
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movsx	eax, al
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(2) "
; Fused expression:    "=(172) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], ax
	movzx	eax, ax
; while
; RPN'ized expression: "num 0 > "
; Expanded expression: "(@8) *(4) 0 >u "
L105:
; Fused expression:    ">u *(@8) 0 IF! "
	mov	eax, [bp+8]
	cmp	eax, 0
	jbe	L106
; {
; loc             <something> : unsigned short
; RPN'ized expression: "str 9 i - + *u dig num 10 % (something107) + *u = "
; Expanded expression: "str 9 (@-4) *(2) - + dig (@8) *(4) 10 %u unsigned short + *(-1) =(-1) "
; Fused expression:    "str push-ax - 9 *(@-4) + *sp ax push-ax dig push-ax %u *(@8) 10 unsigned short + *sp ax =(119) **sp *ax "
section .relod
	dd	L108
section .text
	db	0x66, 0xB8
L108:
	dd	_str
	push	eax
	mov	eax, 9
	movzx	ecx, word [bp-4]
	sub	eax, ecx
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
section .relod
	dd	L109
section .text
	db	0x66, 0xB8
L109:
	dd	_dig
	push	eax
	mov	eax, [bp+8]
	mov	edx, 0
	mov	ecx, 10
	div	ecx
	mov	eax, edx
	movzx	eax, ax
	mov	ecx, eax
	pop	eax
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
; RPN'ized expression: "num num 10 / = "
; Expanded expression: "(@8) (@8) *(4) 10 /u =(4) "
; Fused expression:    "/u *(@8) 10 =(204) *(@8) ax "
	mov	eax, [bp+8]
	mov	edx, 0
	mov	ecx, 10
	div	ecx
	mov	[bp+8], eax
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(2) "
; Fused expression:    "++p(2) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	inc	word [bp-4]
; }
	jmp	L105
L106:
; for
; RPN'ized expression: "j i = "
; Expanded expression: "(@-8) (@-4) *(2) =(2) "
; Fused expression:    "=(170) *(@-8) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	mov	[bp-8], ax
	movzx	eax, ax
L110:
; RPN'ized expression: "j l < "
; Expanded expression: "(@-8) *(2) (@12) *(2) < "
; Fused expression:    "< *(@-8) *(@12) IF! "
	mov	ax, [bp-8]
	movzx	eax, ax
	movzx	ecx, word [bp+12]
	cmp	eax, ecx
	jge	L113
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-8) ++p(2) "
; RPN'ized expression: "( 32 p ) "
; Expanded expression: " 32  (@16) *(4) ()4 "
; Fused expression:    "( 32 , *(4) (@16) )4 "
	push	dword 32
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L114
section .text
L114:
	dd	L115
L115:
	mov	si, sp
	add	word [ss:si], L116 - L115
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L116:
	sub	sp, -4
L111:
; Fused expression:    "++p(2) *(@-8) "
	mov	ax, [bp-8]
	movzx	eax, ax
	inc	word [bp-8]
	jmp	L110
L113:
; loc         <something> : * char
; RPN'ized expression: "ptr str 9 i - 1 + + *u &u (something117) = "
; Expanded expression: "(@-16) str 9 (@-4) *(2) - 1 + + =(4) "
; Fused expression:    "str push-ax - 9 *(@-4) + ax 1 + *sp ax =(204) *(@-16) ax "
section .relod
	dd	L118
section .text
	db	0x66, 0xB8
L118:
	dd	_str
	push	eax
	mov	eax, 9
	movzx	ecx, word [bp-4]
	sub	eax, ecx
	inc	eax
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	[bp-16], eax
; while
; loc         <something> : char
; RPN'ized expression: "ptr *u 0 (something121) != "
; Expanded expression: "(@-16) *(4) *(-1) 0 != "
L119:
; Fused expression:    "*(4) (@-16) != *ax 0 IF! "
	mov	eax, [bp-16]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	cmp	eax, 0
	je	L120
; {
; RPN'ized expression: "( ptr *u p ) "
; Expanded expression: " (@-16) *(4) *(-1)  (@16) *(4) ()4 "
; Fused expression:    "( *(4) (@-16) *(-1) ax , *(4) (@16) )4 "
	mov	eax, [bp-16]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	push	eax
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L122
section .text
L122:
	dd	L123
L123:
	mov	si, sp
	add	word [ss:si], L124 - L123
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L124:
	sub	sp, -4
; RPN'ized expression: "ptr ++p "
; Expanded expression: "(@-16) ++p(4) "
; Fused expression:    "++p(4) *(@-16) "
	mov	eax, [bp-16]
	inc	dword [bp-16]
; RPN'ized expression: "cont ++p "
; Expanded expression: "(@-12) ++p(4) "
; Fused expression:    "++p(4) *(@-12) "
	mov	eax, [bp-12]
	inc	dword [bp-12]
; }
	jmp	L119
L120:
; return
; RPN'ized expression: "l cont + "
; Expanded expression: "(@12) *(2) (@-12) *(4) + "
; Fused expression:    "+ *(@12) *(@-12)  "
	mov	ax, [bp+12]
	movzx	eax, ax
	add	eax, [bp-12]
	jmp	L86
; }
L86:
	db	0x66
	leave
	retf
L125:

section .fxnsz
	dd	L125 - _printGenLDec

; glb printGenInt : (
; prm     num : short
; prm     l : unsigned short
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
section .text
	global	_printGenInt
_printGenInt:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         16
; loc     num : (@8): short
; loc     l : (@12): unsigned short
; loc     p : (@16): * (
; prm         car : char
;         ) int
; {
; loc         i : (@-4): unsigned short
; loc         j : (@-8): unsigned short
; loc         ptr : (@-12): * char
; loc         negativo : (@-16): int
; loc         <something> : int
; RPN'ized expression: "negativo num 0 < (something128) = "
; Expanded expression: "(@-16) (@8) *(-2) 0 < =(4) "
; Fused expression:    "< *(@8) 0 =(204) *(@-16) ax "
	mov	ax, [bp+8]
	movsx	eax, ax
	cmp	eax, 0
	setl	al
	movzx	eax, al
	mov	[bp-16], eax
; if
; RPN'ized expression: "l 0 == "
; Expanded expression: "(@12) *(2) 0 == "
; Fused expression:    "== *(@12) 0 IF! "
	mov	ax, [bp+12]
	movzx	eax, ax
	cmp	eax, 0
	jne	L129
; RPN'ized expression: "l 1 = "
; Expanded expression: "(@12) 1 =(2) "
; Fused expression:    "=(172) *(@12) 1 "
	mov	eax, 1
	mov	[bp+12], ax
	movzx	eax, ax
L129:
; if
; RPN'ized expression: "num 0 == "
; Expanded expression: "(@8) *(-2) 0 == "
; Fused expression:    "== *(@8) 0 IF! "
	mov	ax, [bp+8]
	movsx	eax, ax
	cmp	eax, 0
	jne	L131
; {
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(2) "
; Fused expression:    "=(172) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], ax
	movzx	eax, ax
L133:
; RPN'ized expression: "i l 1 - < "
; Expanded expression: "(@-4) *(2) (@12) *(2) 1 - < "
; Fused expression:    "- *(@12) 1 < *(@-4) ax IF! "
	mov	ax, [bp+12]
	movzx	eax, ax
	dec	eax
	mov	ecx, eax
	mov	ax, [bp-4]
	movzx	eax, ax
	cmp	eax, ecx
	jge	L136
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(2) "
; RPN'ized expression: "( 32 p ) "
; Expanded expression: " 32  (@16) *(4) ()4 "
; Fused expression:    "( 32 , *(4) (@16) )4 "
	push	dword 32
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L137
section .text
L137:
	dd	L138
L138:
	mov	si, sp
	add	word [ss:si], L139 - L138
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L139:
	sub	sp, -4
L134:
; Fused expression:    "++p(2) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	inc	word [bp-4]
	jmp	L133
L136:
; RPN'ized expression: "( 48 p ) "
; Expanded expression: " 48  (@16) *(4) ()4 "
; Fused expression:    "( 48 , *(4) (@16) )4 "
	push	dword 48
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L140
section .text
L140:
	dd	L141
L141:
	mov	si, sp
	add	word [ss:si], L142 - L141
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L142:
	sub	sp, -4
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L126
; }
L131:
; if
; RPN'ized expression: "num 0 < "
; Expanded expression: "(@8) *(-2) 0 < "
; Fused expression:    "< *(@8) 0 IF! "
	mov	ax, [bp+8]
	movsx	eax, ax
	cmp	eax, 0
	jge	L143
; RPN'ized expression: "num num -u = "
; Expanded expression: "(@8) (@8) *(-2) -u =(-2) "
; Fused expression:    "*(-2) (@8) -u =(108) *(@8) ax "
	mov	ax, [bp+8]
	movsx	eax, ax
	neg	eax
	mov	[bp+8], ax
	movsx	eax, ax
L143:
; loc         <something> : * char
; RPN'ized expression: "ptr str 5 + *u &u (something145) = "
; Expanded expression: "(@-12) str 5 + =(4) "
; Fused expression:    "str + ax 5 =(204) *(@-12) ax "
section .relod
	dd	L146
section .text
	db	0x66, 0xB8
L146:
	dd	_str
	add	eax, 5
	mov	[bp-12], eax
; loc         <something> : char
; RPN'ized expression: "ptr *u 0 (something147) = "
; Expanded expression: "(@-12) *(4) 0 =(-1) "
; Fused expression:    "*(4) (@-12) =(124) *ax 0 "
	mov	eax, [bp-12]
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movsx	eax, al
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(2) "
; Fused expression:    "=(172) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], ax
	movzx	eax, ax
; while
; RPN'ized expression: "num 0 > "
; Expanded expression: "(@8) *(-2) 0 > "
L148:
; Fused expression:    "> *(@8) 0 IF! "
	mov	ax, [bp+8]
	movsx	eax, ax
	cmp	eax, 0
	jle	L149
; {
; loc             <something> : unsigned short
; RPN'ized expression: "str 4 i - + *u dig num 10 % (something150) + *u = "
; Expanded expression: "str 4 (@-4) *(2) - + dig (@8) *(-2) 10 % unsigned short + *(-1) =(-1) "
; Fused expression:    "str push-ax - 4 *(@-4) + *sp ax push-ax dig push-ax % *(@8) 10 unsigned short + *sp ax =(119) **sp *ax "
section .relod
	dd	L151
section .text
	db	0x66, 0xB8
L151:
	dd	_str
	push	eax
	mov	eax, 4
	movzx	ecx, word [bp-4]
	sub	eax, ecx
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
section .relod
	dd	L152
section .text
	db	0x66, 0xB8
L152:
	dd	_dig
	push	eax
	mov	ax, [bp+8]
	movsx	eax, ax
	cdq
	mov	ecx, 10
	idiv	ecx
	mov	eax, edx
	movzx	eax, ax
	mov	ecx, eax
	pop	eax
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
; RPN'ized expression: "num num 10 / = "
; Expanded expression: "(@8) (@8) *(-2) 10 / =(-2) "
; Fused expression:    "/ *(@8) 10 =(108) *(@8) ax "
	mov	ax, [bp+8]
	movsx	eax, ax
	cdq
	mov	ecx, 10
	idiv	ecx
	mov	[bp+8], ax
	movsx	eax, ax
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(2) "
; Fused expression:    "++p(2) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	inc	word [bp-4]
; }
	jmp	L148
L149:
; if
; RPN'ized expression: "negativo "
; Expanded expression: "(@-16) *(4) "
; Fused expression:    "*(4) (@-16)  "
	mov	eax, [bp-16]
; JumpIfZero
	test	eax, eax
	je	L153
; {
; for
; RPN'ized expression: "j i = "
; Expanded expression: "(@-8) (@-4) *(2) =(2) "
; Fused expression:    "=(170) *(@-8) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	mov	[bp-8], ax
	movzx	eax, ax
L155:
; RPN'ized expression: "j l 1 - < "
; Expanded expression: "(@-8) *(2) (@12) *(2) 1 - < "
; Fused expression:    "- *(@12) 1 < *(@-8) ax IF! "
	mov	ax, [bp+12]
	movzx	eax, ax
	dec	eax
	mov	ecx, eax
	mov	ax, [bp-8]
	movzx	eax, ax
	cmp	eax, ecx
	jge	L158
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-8) ++p(2) "
; RPN'ized expression: "( 32 p ) "
; Expanded expression: " 32  (@16) *(4) ()4 "
; Fused expression:    "( 32 , *(4) (@16) )4 "
	push	dword 32
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L159
section .text
L159:
	dd	L160
L160:
	mov	si, sp
	add	word [ss:si], L161 - L160
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L161:
	sub	sp, -4
L156:
; Fused expression:    "++p(2) *(@-8) "
	mov	ax, [bp-8]
	movzx	eax, ax
	inc	word [bp-8]
	jmp	L155
L158:
; RPN'ized expression: "( 45 p ) "
; Expanded expression: " 45  (@16) *(4) ()4 "
; Fused expression:    "( 45 , *(4) (@16) )4 "
	push	dword 45
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L162
section .text
L162:
	dd	L163
L163:
	mov	si, sp
	add	word [ss:si], L164 - L163
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L164:
	sub	sp, -4
; }
	jmp	L154
L153:
; else
; for
; RPN'ized expression: "j i = "
; Expanded expression: "(@-8) (@-4) *(2) =(2) "
; Fused expression:    "=(170) *(@-8) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	mov	[bp-8], ax
	movzx	eax, ax
L165:
; RPN'ized expression: "j l < "
; Expanded expression: "(@-8) *(2) (@12) *(2) < "
; Fused expression:    "< *(@-8) *(@12) IF! "
	mov	ax, [bp-8]
	movzx	eax, ax
	movzx	ecx, word [bp+12]
	cmp	eax, ecx
	jge	L168
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-8) ++p(2) "
; RPN'ized expression: "( 32 p ) "
; Expanded expression: " 32  (@16) *(4) ()4 "
; Fused expression:    "( 32 , *(4) (@16) )4 "
	push	dword 32
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L169
section .text
L169:
	dd	L170
L170:
	mov	si, sp
	add	word [ss:si], L171 - L170
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L171:
	sub	sp, -4
L166:
; Fused expression:    "++p(2) *(@-8) "
	mov	ax, [bp-8]
	movzx	eax, ax
	inc	word [bp-8]
	jmp	L165
L168:
L154:
; loc         <something> : * char
; RPN'ized expression: "ptr str 4 i - 1 + + *u &u (something172) = "
; Expanded expression: "(@-12) str 4 (@-4) *(2) - 1 + + =(4) "
; Fused expression:    "str push-ax - 4 *(@-4) + ax 1 + *sp ax =(204) *(@-12) ax "
section .relod
	dd	L173
section .text
	db	0x66, 0xB8
L173:
	dd	_str
	push	eax
	mov	eax, 4
	movzx	ecx, word [bp-4]
	sub	eax, ecx
	inc	eax
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	[bp-12], eax
; while
; loc         <something> : char
; RPN'ized expression: "ptr *u 0 (something176) != "
; Expanded expression: "(@-12) *(4) *(-1) 0 != "
L174:
; Fused expression:    "*(4) (@-12) != *ax 0 IF! "
	mov	eax, [bp-12]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	cmp	eax, 0
	je	L175
; {
; RPN'ized expression: "( ptr *u p ) "
; Expanded expression: " (@-12) *(4) *(-1)  (@16) *(4) ()4 "
; Fused expression:    "( *(4) (@-12) *(-1) ax , *(4) (@16) )4 "
	mov	eax, [bp-12]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	push	eax
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L177
section .text
L177:
	dd	L178
L178:
	mov	si, sp
	add	word [ss:si], L179 - L178
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L179:
	sub	sp, -4
; RPN'ized expression: "ptr ++p "
; Expanded expression: "(@-12) ++p(4) "
; Fused expression:    "++p(4) *(@-12) "
	mov	eax, [bp-12]
	inc	dword [bp-12]
; }
	jmp	L174
L175:
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L126
; }
L126:
	db	0x66
	leave
	retf
L180:

section .fxnsz
	dd	L180 - _printGenInt

; glb printGenLInt : (
; prm     num : int
; prm     l : unsigned short
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
section .text
	global	_printGenLInt
_printGenLInt:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         16
; loc     num : (@8): int
; loc     l : (@12): unsigned short
; loc     p : (@16): * (
; prm         car : char
;         ) int
; {
; loc         i : (@-4): unsigned short
; loc         j : (@-8): unsigned short
; loc         ptr : (@-12): * char
; loc         negativo : (@-16): int
; loc         <something> : int
; RPN'ized expression: "negativo num 0 < (something183) = "
; Expanded expression: "(@-16) (@8) *(4) 0 < =(4) "
; Fused expression:    "< *(@8) 0 =(204) *(@-16) ax "
	mov	eax, [bp+8]
	cmp	eax, 0
	setl	al
	movzx	eax, al
	mov	[bp-16], eax
; if
; RPN'ized expression: "l 0 == "
; Expanded expression: "(@12) *(2) 0 == "
; Fused expression:    "== *(@12) 0 IF! "
	mov	ax, [bp+12]
	movzx	eax, ax
	cmp	eax, 0
	jne	L184
; RPN'ized expression: "l 1 = "
; Expanded expression: "(@12) 1 =(2) "
; Fused expression:    "=(172) *(@12) 1 "
	mov	eax, 1
	mov	[bp+12], ax
	movzx	eax, ax
L184:
; if
; RPN'ized expression: "num 0 == "
; Expanded expression: "(@8) *(4) 0 == "
; Fused expression:    "== *(@8) 0 IF! "
	mov	eax, [bp+8]
	cmp	eax, 0
	jne	L186
; {
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(2) "
; Fused expression:    "=(172) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], ax
	movzx	eax, ax
L188:
; RPN'ized expression: "i l 1 - < "
; Expanded expression: "(@-4) *(2) (@12) *(2) 1 - < "
; Fused expression:    "- *(@12) 1 < *(@-4) ax IF! "
	mov	ax, [bp+12]
	movzx	eax, ax
	dec	eax
	mov	ecx, eax
	mov	ax, [bp-4]
	movzx	eax, ax
	cmp	eax, ecx
	jge	L191
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(2) "
; RPN'ized expression: "( 32 p ) "
; Expanded expression: " 32  (@16) *(4) ()4 "
; Fused expression:    "( 32 , *(4) (@16) )4 "
	push	dword 32
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L192
section .text
L192:
	dd	L193
L193:
	mov	si, sp
	add	word [ss:si], L194 - L193
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L194:
	sub	sp, -4
L189:
; Fused expression:    "++p(2) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	inc	word [bp-4]
	jmp	L188
L191:
; RPN'ized expression: "( 48 p ) "
; Expanded expression: " 48  (@16) *(4) ()4 "
; Fused expression:    "( 48 , *(4) (@16) )4 "
	push	dword 48
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L195
section .text
L195:
	dd	L196
L196:
	mov	si, sp
	add	word [ss:si], L197 - L196
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L197:
	sub	sp, -4
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L181
; }
L186:
; if
; RPN'ized expression: "num 0 < "
; Expanded expression: "(@8) *(4) 0 < "
; Fused expression:    "< *(@8) 0 IF! "
	mov	eax, [bp+8]
	cmp	eax, 0
	jge	L198
; RPN'ized expression: "num num -u = "
; Expanded expression: "(@8) (@8) *(4) -u =(4) "
; Fused expression:    "*(4) (@8) -u =(204) *(@8) ax "
	mov	eax, [bp+8]
	neg	eax
	mov	[bp+8], eax
L198:
; loc         <something> : * char
; RPN'ized expression: "ptr str 10 + *u &u (something200) = "
; Expanded expression: "(@-12) str 10 + =(4) "
; Fused expression:    "str + ax 10 =(204) *(@-12) ax "
section .relod
	dd	L201
section .text
	db	0x66, 0xB8
L201:
	dd	_str
	add	eax, 10
	mov	[bp-12], eax
; loc         <something> : char
; RPN'ized expression: "ptr *u 0 (something202) = "
; Expanded expression: "(@-12) *(4) 0 =(-1) "
; Fused expression:    "*(4) (@-12) =(124) *ax 0 "
	mov	eax, [bp-12]
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movsx	eax, al
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(2) "
; Fused expression:    "=(172) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], ax
	movzx	eax, ax
; while
; RPN'ized expression: "num 0 > "
; Expanded expression: "(@8) *(4) 0 > "
L203:
; Fused expression:    "> *(@8) 0 IF! "
	mov	eax, [bp+8]
	cmp	eax, 0
	jle	L204
; {
; loc             <something> : unsigned short
; RPN'ized expression: "str 9 i - + *u dig num 10 % (something205) + *u = "
; Expanded expression: "str 9 (@-4) *(2) - + dig (@8) *(4) 10 % unsigned short + *(-1) =(-1) "
; Fused expression:    "str push-ax - 9 *(@-4) + *sp ax push-ax dig push-ax % *(@8) 10 unsigned short + *sp ax =(119) **sp *ax "
section .relod
	dd	L206
section .text
	db	0x66, 0xB8
L206:
	dd	_str
	push	eax
	mov	eax, 9
	movzx	ecx, word [bp-4]
	sub	eax, ecx
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
section .relod
	dd	L207
section .text
	db	0x66, 0xB8
L207:
	dd	_dig
	push	eax
	mov	eax, [bp+8]
	cdq
	mov	ecx, 10
	idiv	ecx
	mov	eax, edx
	movzx	eax, ax
	mov	ecx, eax
	pop	eax
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
; RPN'ized expression: "num num 10 / = "
; Expanded expression: "(@8) (@8) *(4) 10 / =(4) "
; Fused expression:    "/ *(@8) 10 =(204) *(@8) ax "
	mov	eax, [bp+8]
	cdq
	mov	ecx, 10
	idiv	ecx
	mov	[bp+8], eax
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(2) "
; Fused expression:    "++p(2) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	inc	word [bp-4]
; }
	jmp	L203
L204:
; if
; RPN'ized expression: "negativo "
; Expanded expression: "(@-16) *(4) "
; Fused expression:    "*(4) (@-16)  "
	mov	eax, [bp-16]
; JumpIfZero
	test	eax, eax
	je	L208
; {
; for
; RPN'ized expression: "j i = "
; Expanded expression: "(@-8) (@-4) *(2) =(2) "
; Fused expression:    "=(170) *(@-8) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	mov	[bp-8], ax
	movzx	eax, ax
L210:
; RPN'ized expression: "j l 1 - < "
; Expanded expression: "(@-8) *(2) (@12) *(2) 1 - < "
; Fused expression:    "- *(@12) 1 < *(@-8) ax IF! "
	mov	ax, [bp+12]
	movzx	eax, ax
	dec	eax
	mov	ecx, eax
	mov	ax, [bp-8]
	movzx	eax, ax
	cmp	eax, ecx
	jge	L213
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-8) ++p(2) "
; RPN'ized expression: "( 32 p ) "
; Expanded expression: " 32  (@16) *(4) ()4 "
; Fused expression:    "( 32 , *(4) (@16) )4 "
	push	dword 32
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L214
section .text
L214:
	dd	L215
L215:
	mov	si, sp
	add	word [ss:si], L216 - L215
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L216:
	sub	sp, -4
L211:
; Fused expression:    "++p(2) *(@-8) "
	mov	ax, [bp-8]
	movzx	eax, ax
	inc	word [bp-8]
	jmp	L210
L213:
; RPN'ized expression: "( 45 p ) "
; Expanded expression: " 45  (@16) *(4) ()4 "
; Fused expression:    "( 45 , *(4) (@16) )4 "
	push	dword 45
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L217
section .text
L217:
	dd	L218
L218:
	mov	si, sp
	add	word [ss:si], L219 - L218
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L219:
	sub	sp, -4
; }
	jmp	L209
L208:
; else
; for
; RPN'ized expression: "j i = "
; Expanded expression: "(@-8) (@-4) *(2) =(2) "
; Fused expression:    "=(170) *(@-8) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	mov	[bp-8], ax
	movzx	eax, ax
L220:
; RPN'ized expression: "j l < "
; Expanded expression: "(@-8) *(2) (@12) *(2) < "
; Fused expression:    "< *(@-8) *(@12) IF! "
	mov	ax, [bp-8]
	movzx	eax, ax
	movzx	ecx, word [bp+12]
	cmp	eax, ecx
	jge	L223
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-8) ++p(2) "
; RPN'ized expression: "( 32 p ) "
; Expanded expression: " 32  (@16) *(4) ()4 "
; Fused expression:    "( 32 , *(4) (@16) )4 "
	push	dword 32
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L224
section .text
L224:
	dd	L225
L225:
	mov	si, sp
	add	word [ss:si], L226 - L225
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L226:
	sub	sp, -4
L221:
; Fused expression:    "++p(2) *(@-8) "
	mov	ax, [bp-8]
	movzx	eax, ax
	inc	word [bp-8]
	jmp	L220
L223:
L209:
; loc         <something> : * char
; RPN'ized expression: "ptr str 9 i - 1 + + *u &u (something227) = "
; Expanded expression: "(@-12) str 9 (@-4) *(2) - 1 + + =(4) "
; Fused expression:    "str push-ax - 9 *(@-4) + ax 1 + *sp ax =(204) *(@-12) ax "
section .relod
	dd	L228
section .text
	db	0x66, 0xB8
L228:
	dd	_str
	push	eax
	mov	eax, 9
	movzx	ecx, word [bp-4]
	sub	eax, ecx
	inc	eax
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	[bp-12], eax
; while
; loc         <something> : char
; RPN'ized expression: "ptr *u 0 (something231) != "
; Expanded expression: "(@-12) *(4) *(-1) 0 != "
L229:
; Fused expression:    "*(4) (@-12) != *ax 0 IF! "
	mov	eax, [bp-12]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	cmp	eax, 0
	je	L230
; {
; RPN'ized expression: "( ptr *u p ) "
; Expanded expression: " (@-12) *(4) *(-1)  (@16) *(4) ()4 "
; Fused expression:    "( *(4) (@-12) *(-1) ax , *(4) (@16) )4 "
	mov	eax, [bp-12]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	push	eax
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L232
section .text
L232:
	dd	L233
L233:
	mov	si, sp
	add	word [ss:si], L234 - L233
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L234:
	sub	sp, -4
; RPN'ized expression: "ptr ++p "
; Expanded expression: "(@-12) ++p(4) "
; Fused expression:    "++p(4) *(@-12) "
	mov	eax, [bp-12]
	inc	dword [bp-12]
; }
	jmp	L229
L230:
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L181
; }
L181:
	db	0x66
	leave
	retf
L235:

section .fxnsz
	dd	L235 - _printGenLInt

; glb printGenHex : (
; prm     num : unsigned short
; prm     l : unsigned short
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
section .text
	global	_printGenHex
_printGenHex:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         16
; loc     num : (@8): unsigned short
; loc     l : (@12): unsigned short
; loc     p : (@16): * (
; prm         car : char
;         ) int
; loc     i : (@-4): unsigned short
; loc     j : (@-8): unsigned short
; loc     cont : (@-12): int
; RPN'ized expression: "cont 0 = "
; Expanded expression: "(@-12) 0 =(4) "
; Fused expression:    "=(204) *(@-12) 0 "
	mov	eax, 0
	mov	[bp-12], eax
; loc     ptr : (@-16): * char
; if
; RPN'ized expression: "l 0 == "
; Expanded expression: "(@12) *(2) 0 == "
; Fused expression:    "== *(@12) 0 IF! "
	mov	ax, [bp+12]
	movzx	eax, ax
	cmp	eax, 0
	jne	L238
; RPN'ized expression: "l 1 = "
; Expanded expression: "(@12) 1 =(2) "
; Fused expression:    "=(172) *(@12) 1 "
	mov	eax, 1
	mov	[bp+12], ax
	movzx	eax, ax
L238:
; if
; RPN'ized expression: "num 0 == "
; Expanded expression: "(@8) *(2) 0 == "
; Fused expression:    "== *(@8) 0 IF! "
	mov	ax, [bp+8]
	movzx	eax, ax
	cmp	eax, 0
	jne	L240
; {
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(2) "
; Fused expression:    "=(172) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], ax
	movzx	eax, ax
L242:
; RPN'ized expression: "i l 1 - < "
; Expanded expression: "(@-4) *(2) (@12) *(2) 1 - < "
; Fused expression:    "- *(@12) 1 < *(@-4) ax IF! "
	mov	ax, [bp+12]
	movzx	eax, ax
	dec	eax
	mov	ecx, eax
	mov	ax, [bp-4]
	movzx	eax, ax
	cmp	eax, ecx
	jge	L245
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(2) "
; RPN'ized expression: "( 48 p ) "
; Expanded expression: " 48  (@16) *(4) ()4 "
; Fused expression:    "( 48 , *(4) (@16) )4 "
	push	dword 48
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L246
section .text
L246:
	dd	L247
L247:
	mov	si, sp
	add	word [ss:si], L248 - L247
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L248:
	sub	sp, -4
L243:
; Fused expression:    "++p(2) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	inc	word [bp-4]
	jmp	L242
L245:
; RPN'ized expression: "( 48 p ) "
; Expanded expression: " 48  (@16) *(4) ()4 "
; Fused expression:    "( 48 , *(4) (@16) )4 "
	push	dword 48
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L249
section .text
L249:
	dd	L250
L250:
	mov	si, sp
	add	word [ss:si], L251 - L250
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L251:
	sub	sp, -4
; return
; RPN'ized expression: "l "
; Expanded expression: "(@12) *(2) "
; Fused expression:    "*(2) (@12)  "
	mov	ax, [bp+12]
	movzx	eax, ax
	jmp	L236
; }
L240:
; RPN'ized expression: "ptr str 4 + *u &u = "
; Expanded expression: "(@-16) str 4 + =(4) "
; Fused expression:    "str + ax 4 =(204) *(@-16) ax "
section .relod
	dd	L252
section .text
	db	0x66, 0xB8
L252:
	dd	_str
	add	eax, 4
	mov	[bp-16], eax
; loc     <something> : char
; RPN'ized expression: "ptr *u 0 (something253) = "
; Expanded expression: "(@-16) *(4) 0 =(-1) "
; Fused expression:    "*(4) (@-16) =(124) *ax 0 "
	mov	eax, [bp-16]
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movsx	eax, al
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(2) "
; Fused expression:    "=(172) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], ax
	movzx	eax, ax
; while
; RPN'ized expression: "num 0 > "
; Expanded expression: "(@8) *(2) 0 > "
L254:
; Fused expression:    "> *(@8) 0 IF! "
	mov	ax, [bp+8]
	movzx	eax, ax
	cmp	eax, 0
	jle	L255
; {
; RPN'ized expression: "str 3 i - + *u dig num 16 % + *u = "
; Expanded expression: "str 3 (@-4) *(2) - + dig (@8) *(2) 16 % + *(-1) =(-1) "
; Fused expression:    "str push-ax - 3 *(@-4) + *sp ax push-ax dig push-ax % *(@8) 16 + *sp ax =(119) **sp *ax "
section .relod
	dd	L256
section .text
	db	0x66, 0xB8
L256:
	dd	_str
	push	eax
	mov	eax, 3
	movzx	ecx, word [bp-4]
	sub	eax, ecx
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
section .relod
	dd	L257
section .text
	db	0x66, 0xB8
L257:
	dd	_dig
	push	eax
	mov	ax, [bp+8]
	movzx	eax, ax
	cdq
	mov	ecx, 16
	idiv	ecx
	mov	eax, edx
	mov	ecx, eax
	pop	eax
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
; RPN'ized expression: "num num 16 / = "
; Expanded expression: "(@8) (@8) *(2) 16 / =(2) "
; Fused expression:    "/ *(@8) 16 =(172) *(@8) ax "
	mov	ax, [bp+8]
	movzx	eax, ax
	cdq
	mov	ecx, 16
	idiv	ecx
	mov	[bp+8], ax
	movzx	eax, ax
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(2) "
; Fused expression:    "++p(2) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	inc	word [bp-4]
; }
	jmp	L254
L255:
; for
; RPN'ized expression: "j i = "
; Expanded expression: "(@-8) (@-4) *(2) =(2) "
; Fused expression:    "=(170) *(@-8) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	mov	[bp-8], ax
	movzx	eax, ax
L258:
; RPN'ized expression: "j l < "
; Expanded expression: "(@-8) *(2) (@12) *(2) < "
; Fused expression:    "< *(@-8) *(@12) IF! "
	mov	ax, [bp-8]
	movzx	eax, ax
	movzx	ecx, word [bp+12]
	cmp	eax, ecx
	jge	L261
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-8) ++p(2) "
; RPN'ized expression: "( 48 p ) "
; Expanded expression: " 48  (@16) *(4) ()4 "
; Fused expression:    "( 48 , *(4) (@16) )4 "
	push	dword 48
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L262
section .text
L262:
	dd	L263
L263:
	mov	si, sp
	add	word [ss:si], L264 - L263
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L264:
	sub	sp, -4
L259:
; Fused expression:    "++p(2) *(@-8) "
	mov	ax, [bp-8]
	movzx	eax, ax
	inc	word [bp-8]
	jmp	L258
L261:
; RPN'ized expression: "ptr str 3 i - 1 + + *u &u = "
; Expanded expression: "(@-16) str 3 (@-4) *(2) - 1 + + =(4) "
; Fused expression:    "str push-ax - 3 *(@-4) + ax 1 + *sp ax =(204) *(@-16) ax "
section .relod
	dd	L265
section .text
	db	0x66, 0xB8
L265:
	dd	_str
	push	eax
	mov	eax, 3
	movzx	ecx, word [bp-4]
	sub	eax, ecx
	inc	eax
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	[bp-16], eax
; while
; loc     <something> : char
; RPN'ized expression: "ptr *u 0 (something268) != "
; Expanded expression: "(@-16) *(4) *(-1) 0 != "
L266:
; Fused expression:    "*(4) (@-16) != *ax 0 IF! "
	mov	eax, [bp-16]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	cmp	eax, 0
	je	L267
; {
; RPN'ized expression: "( ptr *u p ) "
; Expanded expression: " (@-16) *(4) *(-1)  (@16) *(4) ()4 "
; Fused expression:    "( *(4) (@-16) *(-1) ax , *(4) (@16) )4 "
	mov	eax, [bp-16]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	push	eax
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L269
section .text
L269:
	dd	L270
L270:
	mov	si, sp
	add	word [ss:si], L271 - L270
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L271:
	sub	sp, -4
; RPN'ized expression: "ptr ++p "
; Expanded expression: "(@-16) ++p(4) "
; Fused expression:    "++p(4) *(@-16) "
	mov	eax, [bp-16]
	inc	dword [bp-16]
; RPN'ized expression: "cont ++p "
; Expanded expression: "(@-12) ++p(4) "
; Fused expression:    "++p(4) *(@-12) "
	mov	eax, [bp-12]
	inc	dword [bp-12]
; }
	jmp	L266
L267:
; return
; RPN'ized expression: "l cont + "
; Expanded expression: "(@12) *(2) (@-12) *(4) + "
; Fused expression:    "+ *(@12) *(@-12)  "
	mov	ax, [bp+12]
	movzx	eax, ax
	add	eax, [bp-12]
L236:
	db	0x66
	leave
	retf
L272:

section .fxnsz
	dd	L272 - _printGenHex

; glb printGenLHex : (
; prm     num : unsigned
; prm     l : unsigned short
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
section .text
	global	_printGenLHex
_printGenLHex:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         16
; loc     num : (@8): unsigned
; loc     l : (@12): unsigned short
; loc     p : (@16): * (
; prm         car : char
;         ) int
; loc     ptr : (@-4): * char
; loc     ptrWord : (@-8): * unsigned short
; loc     i : (@-12): unsigned short
; loc     j : (@-16): unsigned short
; if
; RPN'ized expression: "l 0 == "
; Expanded expression: "(@12) *(2) 0 == "
; Fused expression:    "== *(@12) 0 IF! "
	mov	ax, [bp+12]
	movzx	eax, ax
	cmp	eax, 0
	jne	L275
; RPN'ized expression: "l 1 = "
; Expanded expression: "(@12) 1 =(2) "
; Fused expression:    "=(172) *(@12) 1 "
	mov	eax, 1
	mov	[bp+12], ax
	movzx	eax, ax
L275:
; if
; RPN'ized expression: "num 0 == "
; Expanded expression: "(@8) *(4) 0 == "
; Fused expression:    "== *(@8) 0 IF! "
	mov	eax, [bp+8]
	cmp	eax, 0
	jne	L277
; {
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-12) 0 =(2) "
; Fused expression:    "=(172) *(@-12) 0 "
	mov	eax, 0
	mov	[bp-12], ax
	movzx	eax, ax
L279:
; RPN'ized expression: "i l 1 - < "
; Expanded expression: "(@-12) *(2) (@12) *(2) 1 - < "
; Fused expression:    "- *(@12) 1 < *(@-12) ax IF! "
	mov	ax, [bp+12]
	movzx	eax, ax
	dec	eax
	mov	ecx, eax
	mov	ax, [bp-12]
	movzx	eax, ax
	cmp	eax, ecx
	jge	L282
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-12) ++p(2) "
; RPN'ized expression: "( 48 p ) "
; Expanded expression: " 48  (@16) *(4) ()4 "
; Fused expression:    "( 48 , *(4) (@16) )4 "
	push	dword 48
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L283
section .text
L283:
	dd	L284
L284:
	mov	si, sp
	add	word [ss:si], L285 - L284
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L285:
	sub	sp, -4
L280:
; Fused expression:    "++p(2) *(@-12) "
	mov	ax, [bp-12]
	movzx	eax, ax
	inc	word [bp-12]
	jmp	L279
L282:
; RPN'ized expression: "( 48 p ) "
; Expanded expression: " 48  (@16) *(4) ()4 "
; Fused expression:    "( 48 , *(4) (@16) )4 "
	push	dword 48
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L286
section .text
L286:
	dd	L287
L287:
	mov	si, sp
	add	word [ss:si], L288 - L287
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L288:
	sub	sp, -4
; return
; RPN'ized expression: "l "
; Expanded expression: "(@12) *(2) "
; Fused expression:    "*(2) (@12)  "
	mov	ax, [bp+12]
	movzx	eax, ax
	jmp	L273
; }
L277:
; loc     <something> : char
; RPN'ized expression: "str 8 + *u 0 (something289) = "
; Expanded expression: "str 8 + 0 =(-1) "
; Fused expression:    "str + ax 8 =(124) *ax 0 "
section .relod
	dd	L290
section .text
	db	0x66, 0xB8
L290:
	dd	_str
	add	eax, 8
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movsx	eax, al
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-12) 0 =(2) "
; Fused expression:    "=(172) *(@-12) 0 "
	mov	eax, 0
	mov	[bp-12], ax
	movzx	eax, ax
; loc     <something> : * unsigned short
; RPN'ized expression: "ptrWord num &u (something291) = "
; Expanded expression: "(@-8) (@8) =(4) "
; Fused expression:    "=(204) *(@-8) (@8) "
	xor	eax, eax
	mov	ax, ss
	shl	eax, 4
	lea	eax, [ebp+eax+8]
	mov	[bp-8], eax
; while
; RPN'ized expression: "num 0 > "
; Expanded expression: "(@8) *(4) 0 >u "
L292:
; Fused expression:    ">u *(@8) 0 IF! "
	mov	eax, [bp+8]
	cmp	eax, 0
	jbe	L293
; {
; RPN'ized expression: "str 7 i - + *u dig ptrWord 0 + *u 16 % + *u = "
; Expanded expression: "str 7 (@-12) *(2) - + dig (@-8) *(4) 0 + *(2) 16 % + *(-1) =(-1) "
; Fused expression:    "str push-ax - 7 *(@-12) + *sp ax push-ax dig push-ax + *(@-8) 0 % *ax 16 + *sp ax =(119) **sp *ax "
section .relod
	dd	L294
section .text
	db	0x66, 0xB8
L294:
	dd	_str
	push	eax
	mov	eax, 7
	movzx	ecx, word [bp-12]
	sub	eax, ecx
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
section .relod
	dd	L295
section .text
	db	0x66, 0xB8
L295:
	dd	_dig
	push	eax
	mov	eax, [bp-8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	cdq
	mov	ecx, 16
	idiv	ecx
	mov	eax, edx
	mov	ecx, eax
	pop	eax
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
; RPN'ized expression: "ptrWord 0 + *u ptrWord 0 + *u 16 / 4096 ptrWord 1 + *u 16 % * + = "
; Expanded expression: "(@-8) *(4) 0 + (@-8) *(4) 0 + *(2) 16 / 4096 (@-8) *(4) 2 + *(2) 16 % * + =(2) "
; Fused expression:    "+ *(@-8) 0 push-ax + *(@-8) 0 / *ax 16 push-ax + *(@-8) 2 % *ax 16 * 4096 ax + *sp ax =(172) **sp ax "
	mov	eax, [bp-8]
	push	eax
	mov	eax, [bp-8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	cdq
	mov	ecx, 16
	idiv	ecx
	push	eax
	mov	eax, [bp-8]
	add	eax, 2
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	cdq
	mov	ecx, 16
	idiv	ecx
	mov	eax, edx
	mov	ecx, eax
	mov	eax, 4096
	mul	ecx
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "ptrWord 1 + *u ptrWord 1 + *u 16 / = "
; Expanded expression: "(@-8) *(4) 2 + (@-8) *(4) 2 + *(2) 16 / =(2) "
; Fused expression:    "+ *(@-8) 2 push-ax + *(@-8) 2 / *ax 16 =(172) **sp ax "
	mov	eax, [bp-8]
	add	eax, 2
	push	eax
	mov	eax, [bp-8]
	add	eax, 2
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	cdq
	mov	ecx, 16
	idiv	ecx
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-12) ++p(2) "
; Fused expression:    "++p(2) *(@-12) "
	mov	ax, [bp-12]
	movzx	eax, ax
	inc	word [bp-12]
; }
	jmp	L292
L293:
; for
; RPN'ized expression: "j i = "
; Expanded expression: "(@-16) (@-12) *(2) =(2) "
; Fused expression:    "=(170) *(@-16) *(@-12) "
	mov	ax, [bp-12]
	movzx	eax, ax
	mov	[bp-16], ax
	movzx	eax, ax
L296:
; RPN'ized expression: "j l < "
; Expanded expression: "(@-16) *(2) (@12) *(2) < "
; Fused expression:    "< *(@-16) *(@12) IF! "
	mov	ax, [bp-16]
	movzx	eax, ax
	movzx	ecx, word [bp+12]
	cmp	eax, ecx
	jge	L299
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-16) ++p(2) "
; RPN'ized expression: "( 48 p ) "
; Expanded expression: " 48  (@16) *(4) ()4 "
; Fused expression:    "( 48 , *(4) (@16) )4 "
	push	dword 48
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L300
section .text
L300:
	dd	L301
L301:
	mov	si, sp
	add	word [ss:si], L302 - L301
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L302:
	sub	sp, -4
L297:
; Fused expression:    "++p(2) *(@-16) "
	mov	ax, [bp-16]
	movzx	eax, ax
	inc	word [bp-16]
	jmp	L296
L299:
; RPN'ized expression: "ptr str 7 i - 1 + + *u &u = "
; Expanded expression: "(@-4) str 7 (@-12) *(2) - 1 + + =(4) "
; Fused expression:    "str push-ax - 7 *(@-12) + ax 1 + *sp ax =(204) *(@-4) ax "
section .relod
	dd	L303
section .text
	db	0x66, 0xB8
L303:
	dd	_str
	push	eax
	mov	eax, 7
	movzx	ecx, word [bp-12]
	sub	eax, ecx
	inc	eax
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	[bp-4], eax
; while
; RPN'ized expression: "i 0 > "
; Expanded expression: "(@-12) *(2) 0 > "
L304:
; Fused expression:    "> *(@-12) 0 IF! "
	mov	ax, [bp-12]
	movzx	eax, ax
	cmp	eax, 0
	jle	L305
; {
; RPN'ized expression: "( ptr *u p ) "
; Expanded expression: " (@-4) *(4) *(-1)  (@16) *(4) ()4 "
; Fused expression:    "( *(4) (@-4) *(-1) ax , *(4) (@16) )4 "
	mov	eax, [bp-4]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	push	eax
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L306
section .text
L306:
	dd	L307
L307:
	mov	si, sp
	add	word [ss:si], L308 - L307
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L308:
	sub	sp, -4
; RPN'ized expression: "ptr ++p "
; Expanded expression: "(@-4) ++p(4) "
; Fused expression:    "++p(4) *(@-4) "
	mov	eax, [bp-4]
	inc	dword [bp-4]
; RPN'ized expression: "i --p "
; Expanded expression: "(@-12) --p(2) "
; Fused expression:    "--p(2) *(@-12) "
	mov	ax, [bp-12]
	movzx	eax, ax
	dec	word [bp-12]
; }
	jmp	L304
L305:
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
L273:
	db	0x66
	leave
	retf
L309:

section .fxnsz
	dd	L309 - _printGenLHex

; glb printGenBin : (
; prm     num : unsigned short
; prm     l : unsigned short
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
section .text
	global	_printGenBin
_printGenBin:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         12
; loc     num : (@8): unsigned short
; loc     l : (@12): unsigned short
; loc     p : (@16): * (
; prm         car : char
;         ) int
; {
; loc         i : (@-4): unsigned short
; loc         j : (@-8): unsigned short
; loc         pot : (@-12): unsigned short
; if
; RPN'ized expression: "l 0 == "
; Expanded expression: "(@12) *(2) 0 == "
; Fused expression:    "== *(@12) 0 IF! "
	mov	ax, [bp+12]
	movzx	eax, ax
	cmp	eax, 0
	jne	L312
; RPN'ized expression: "l 1 = "
; Expanded expression: "(@12) 1 =(2) "
; Fused expression:    "=(172) *(@12) 1 "
	mov	eax, 1
	mov	[bp+12], ax
	movzx	eax, ax
L312:
; if
; RPN'ized expression: "num 0 == "
; Expanded expression: "(@8) *(2) 0 == "
; Fused expression:    "== *(@8) 0 IF! "
	mov	ax, [bp+8]
	movzx	eax, ax
	cmp	eax, 0
	jne	L314
; {
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(2) "
; Fused expression:    "=(172) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], ax
	movzx	eax, ax
L316:
; RPN'ized expression: "i l 1 - < "
; Expanded expression: "(@-4) *(2) (@12) *(2) 1 - < "
; Fused expression:    "- *(@12) 1 < *(@-4) ax IF! "
	mov	ax, [bp+12]
	movzx	eax, ax
	dec	eax
	mov	ecx, eax
	mov	ax, [bp-4]
	movzx	eax, ax
	cmp	eax, ecx
	jge	L319
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(2) "
; RPN'ized expression: "( 48 p ) "
; Expanded expression: " 48  (@16) *(4) ()4 "
; Fused expression:    "( 48 , *(4) (@16) )4 "
	push	dword 48
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L320
section .text
L320:
	dd	L321
L321:
	mov	si, sp
	add	word [ss:si], L322 - L321
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L322:
	sub	sp, -4
L317:
; Fused expression:    "++p(2) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	inc	word [bp-4]
	jmp	L316
L319:
; RPN'ized expression: "( 48 p ) "
; Expanded expression: " 48  (@16) *(4) ()4 "
; Fused expression:    "( 48 , *(4) (@16) )4 "
	push	dword 48
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L323
section .text
L323:
	dd	L324
L324:
	mov	si, sp
	add	word [ss:si], L325 - L324
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L325:
	sub	sp, -4
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L310
; }
L314:
; RPN'ized expression: "i 16 = "
; Expanded expression: "(@-4) 16 =(2) "
; Fused expression:    "=(172) *(@-4) 16 "
	mov	eax, 16
	mov	[bp-4], ax
	movzx	eax, ax
; RPN'ized expression: "pot 1 i 1 - << = "
; Expanded expression: "(@-12) 1 (@-4) *(2) 1 - << =(2) "
; Fused expression:    "- *(@-4) 1 << 1 ax =(172) *(@-12) ax "
	mov	ax, [bp-4]
	movzx	eax, ax
	dec	eax
	mov	ecx, eax
	mov	eax, 1
	shl	eax, cl
	mov	[bp-12], ax
	movzx	eax, ax
; while
; RPN'ized expression: "pot num & 0 == "
; Expanded expression: "(@-12) *(2) (@8) *(2) & 0 == "
L326:
; Fused expression:    "& *(@-12) *(@8) == ax 0 IF! "
	mov	ax, [bp-12]
	movzx	eax, ax
	movzx	ecx, word [bp+8]
	and	eax, ecx
	cmp	eax, 0
	jne	L327
; {
; RPN'ized expression: "pot pot 1 >> = "
; Expanded expression: "(@-12) (@-12) *(2) 1 >> =(2) "
; Fused expression:    ">> *(@-12) 1 =(172) *(@-12) ax "
	mov	ax, [bp-12]
	movzx	eax, ax
	sar	eax, 1
	mov	[bp-12], ax
	movzx	eax, ax
; RPN'ized expression: "i --p "
; Expanded expression: "(@-4) --p(2) "
; Fused expression:    "--p(2) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	dec	word [bp-4]
; }
	jmp	L326
L327:
; if
; RPN'ized expression: "i l > "
; Expanded expression: "(@-4) *(2) (@12) *(2) > "
; Fused expression:    "> *(@-4) *(@12) IF! "
	mov	ax, [bp-4]
	movzx	eax, ax
	movzx	ecx, word [bp+12]
	cmp	eax, ecx
	jle	L328
; RPN'ized expression: "l i = "
; Expanded expression: "(@12) (@-4) *(2) =(2) "
; Fused expression:    "=(170) *(@12) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	mov	[bp+12], ax
	movzx	eax, ax
	jmp	L329
L328:
; else
; RPN'ized expression: "pot 1 l 1 - << = "
; Expanded expression: "(@-12) 1 (@12) *(2) 1 - << =(2) "
; Fused expression:    "- *(@12) 1 << 1 ax =(172) *(@-12) ax "
	mov	ax, [bp+12]
	movzx	eax, ax
	dec	eax
	mov	ecx, eax
	mov	eax, 1
	shl	eax, cl
	mov	[bp-12], ax
	movzx	eax, ax
L329:
; for
; RPN'ized expression: "j 0 = "
; Expanded expression: "(@-8) 0 =(2) "
; Fused expression:    "=(172) *(@-8) 0 "
	mov	eax, 0
	mov	[bp-8], ax
	movzx	eax, ax
L330:
; RPN'ized expression: "j l < "
; Expanded expression: "(@-8) *(2) (@12) *(2) < "
; Fused expression:    "< *(@-8) *(@12) IF! "
	mov	ax, [bp-8]
	movzx	eax, ax
	movzx	ecx, word [bp+12]
	cmp	eax, ecx
	jge	L333
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-8) ++p(2) "
; {
; if
; RPN'ized expression: "pot num & "
; Expanded expression: "(@-12) *(2) (@8) *(2) & "
; Fused expression:    "& *(@-12) *(@8)  "
	mov	ax, [bp-12]
	movzx	eax, ax
	movzx	ecx, word [bp+8]
	and	eax, ecx
; JumpIfZero
	test	eax, eax
	je	L334
; RPN'ized expression: "( 49 p ) "
; Expanded expression: " 49  (@16) *(4) ()4 "
; Fused expression:    "( 49 , *(4) (@16) )4 "
	push	dword 49
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L336
section .text
L336:
	dd	L337
L337:
	mov	si, sp
	add	word [ss:si], L338 - L337
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L338:
	sub	sp, -4
	jmp	L335
L334:
; else
; RPN'ized expression: "( 48 p ) "
; Expanded expression: " 48  (@16) *(4) ()4 "
; Fused expression:    "( 48 , *(4) (@16) )4 "
	push	dword 48
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L339
section .text
L339:
	dd	L340
L340:
	mov	si, sp
	add	word [ss:si], L341 - L340
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L341:
	sub	sp, -4
L335:
; RPN'ized expression: "pot pot 1 >> = "
; Expanded expression: "(@-12) (@-12) *(2) 1 >> =(2) "
; Fused expression:    ">> *(@-12) 1 =(172) *(@-12) ax "
	mov	ax, [bp-12]
	movzx	eax, ax
	sar	eax, 1
	mov	[bp-12], ax
	movzx	eax, ax
; }
L331:
; Fused expression:    "++p(2) *(@-8) "
	mov	ax, [bp-8]
	movzx	eax, ax
	inc	word [bp-8]
	jmp	L330
L333:
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L310
; }
L310:
	db	0x66
	leave
	retf
L342:

section .fxnsz
	dd	L342 - _printGenBin

; glb printGenLBin : (
; prm     num : unsigned
; prm     l : unsigned short
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
section .text
	global	_printGenLBin
_printGenLBin:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         12
; loc     num : (@8): unsigned
; loc     l : (@12): unsigned short
; loc     p : (@16): * (
; prm         car : char
;         ) int
; {
; loc         i : (@-4): unsigned short
; loc         j : (@-8): unsigned short
; loc         pot : (@-12): unsigned short
; if
; RPN'ized expression: "l 0 == "
; Expanded expression: "(@12) *(2) 0 == "
; Fused expression:    "== *(@12) 0 IF! "
	mov	ax, [bp+12]
	movzx	eax, ax
	cmp	eax, 0
	jne	L345
; RPN'ized expression: "l 1 = "
; Expanded expression: "(@12) 1 =(2) "
; Fused expression:    "=(172) *(@12) 1 "
	mov	eax, 1
	mov	[bp+12], ax
	movzx	eax, ax
L345:
; if
; RPN'ized expression: "num 0 == "
; Expanded expression: "(@8) *(4) 0 == "
; Fused expression:    "== *(@8) 0 IF! "
	mov	eax, [bp+8]
	cmp	eax, 0
	jne	L347
; {
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(2) "
; Fused expression:    "=(172) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], ax
	movzx	eax, ax
L349:
; RPN'ized expression: "i l 1 - < "
; Expanded expression: "(@-4) *(2) (@12) *(2) 1 - < "
; Fused expression:    "- *(@12) 1 < *(@-4) ax IF! "
	mov	ax, [bp+12]
	movzx	eax, ax
	dec	eax
	mov	ecx, eax
	mov	ax, [bp-4]
	movzx	eax, ax
	cmp	eax, ecx
	jge	L352
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(2) "
; RPN'ized expression: "( 48 p ) "
; Expanded expression: " 48  (@16) *(4) ()4 "
; Fused expression:    "( 48 , *(4) (@16) )4 "
	push	dword 48
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L353
section .text
L353:
	dd	L354
L354:
	mov	si, sp
	add	word [ss:si], L355 - L354
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L355:
	sub	sp, -4
L350:
; Fused expression:    "++p(2) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	inc	word [bp-4]
	jmp	L349
L352:
; RPN'ized expression: "( 48 p ) "
; Expanded expression: " 48  (@16) *(4) ()4 "
; Fused expression:    "( 48 , *(4) (@16) )4 "
	push	dword 48
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L356
section .text
L356:
	dd	L357
L357:
	mov	si, sp
	add	word [ss:si], L358 - L357
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L358:
	sub	sp, -4
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L343
; }
L347:
; RPN'ized expression: "i 32 = "
; Expanded expression: "(@-4) 32 =(2) "
; Fused expression:    "=(172) *(@-4) 32 "
	mov	eax, 32
	mov	[bp-4], ax
	movzx	eax, ax
; RPN'ized expression: "pot 1 i 1 - << = "
; Expanded expression: "(@-12) 1 (@-4) *(2) 1 - << =(2) "
; Fused expression:    "- *(@-4) 1 << 1 ax =(172) *(@-12) ax "
	mov	ax, [bp-4]
	movzx	eax, ax
	dec	eax
	mov	ecx, eax
	mov	eax, 1
	shl	eax, cl
	mov	[bp-12], ax
	movzx	eax, ax
; while
; RPN'ized expression: "pot num & 0 == "
; Expanded expression: "(@-12) *(2) (@8) *(4) & 0 == "
L359:
; Fused expression:    "& *(@-12) *(@8) == ax 0 IF! "
	mov	ax, [bp-12]
	movzx	eax, ax
	and	eax, [bp+8]
	cmp	eax, 0
	jne	L360
; {
; RPN'ized expression: "pot pot 1 >> = "
; Expanded expression: "(@-12) (@-12) *(2) 1 >> =(2) "
; Fused expression:    ">> *(@-12) 1 =(172) *(@-12) ax "
	mov	ax, [bp-12]
	movzx	eax, ax
	sar	eax, 1
	mov	[bp-12], ax
	movzx	eax, ax
; RPN'ized expression: "i --p "
; Expanded expression: "(@-4) --p(2) "
; Fused expression:    "--p(2) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	dec	word [bp-4]
; }
	jmp	L359
L360:
; if
; RPN'ized expression: "i l > "
; Expanded expression: "(@-4) *(2) (@12) *(2) > "
; Fused expression:    "> *(@-4) *(@12) IF! "
	mov	ax, [bp-4]
	movzx	eax, ax
	movzx	ecx, word [bp+12]
	cmp	eax, ecx
	jle	L361
; RPN'ized expression: "l i = "
; Expanded expression: "(@12) (@-4) *(2) =(2) "
; Fused expression:    "=(170) *(@12) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	mov	[bp+12], ax
	movzx	eax, ax
	jmp	L362
L361:
; else
; RPN'ized expression: "pot 1 l 1 - << = "
; Expanded expression: "(@-12) 1 (@12) *(2) 1 - << =(2) "
; Fused expression:    "- *(@12) 1 << 1 ax =(172) *(@-12) ax "
	mov	ax, [bp+12]
	movzx	eax, ax
	dec	eax
	mov	ecx, eax
	mov	eax, 1
	shl	eax, cl
	mov	[bp-12], ax
	movzx	eax, ax
L362:
; for
; RPN'ized expression: "j 0 = "
; Expanded expression: "(@-8) 0 =(2) "
; Fused expression:    "=(172) *(@-8) 0 "
	mov	eax, 0
	mov	[bp-8], ax
	movzx	eax, ax
L363:
; RPN'ized expression: "j l < "
; Expanded expression: "(@-8) *(2) (@12) *(2) < "
; Fused expression:    "< *(@-8) *(@12) IF! "
	mov	ax, [bp-8]
	movzx	eax, ax
	movzx	ecx, word [bp+12]
	cmp	eax, ecx
	jge	L366
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-8) ++p(2) "
; {
; if
; RPN'ized expression: "pot num & "
; Expanded expression: "(@-12) *(2) (@8) *(4) & "
; Fused expression:    "& *(@-12) *(@8)  "
	mov	ax, [bp-12]
	movzx	eax, ax
	and	eax, [bp+8]
; JumpIfZero
	test	eax, eax
	je	L367
; RPN'ized expression: "( 49 p ) "
; Expanded expression: " 49  (@16) *(4) ()4 "
; Fused expression:    "( 49 , *(4) (@16) )4 "
	push	dword 49
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L369
section .text
L369:
	dd	L370
L370:
	mov	si, sp
	add	word [ss:si], L371 - L370
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L371:
	sub	sp, -4
	jmp	L368
L367:
; else
; RPN'ized expression: "( 48 p ) "
; Expanded expression: " 48  (@16) *(4) ()4 "
; Fused expression:    "( 48 , *(4) (@16) )4 "
	push	dword 48
	mov	eax, [bp+16]
	db	0x9A
section .relot
	dd	L372
section .text
L372:
	dd	L373
L373:
	mov	si, sp
	add	word [ss:si], L374 - L373
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L374:
	sub	sp, -4
L368:
; RPN'ized expression: "pot pot 1 >> = "
; Expanded expression: "(@-12) (@-12) *(2) 1 >> =(2) "
; Fused expression:    ">> *(@-12) 1 =(172) *(@-12) ax "
	mov	ax, [bp-12]
	movzx	eax, ax
	sar	eax, 1
	mov	[bp-12], ax
	movzx	eax, ax
; }
L364:
; Fused expression:    "++p(2) *(@-8) "
	mov	ax, [bp-8]
	movzx	eax, ax
	inc	word [bp-8]
	jmp	L363
L366:
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L343
; }
L343:
	db	0x66
	leave
	retf
L375:

section .fxnsz
	dd	L375 - _printGenLBin

; glb printGenPtr : (
; prm     ptr : * unsigned char
; prm     p : * (
; prm         car : char
;         ) int
;     ) int
section .text
	global	_printGenPtr
_printGenPtr:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     ptr : (@8): * unsigned char
; loc     p : (@12): * (
; prm         car : char
;         ) int
; RPN'ized expression: "( p , 4 , ( ptr seg ) printGenHex ) "
; Expanded expression: " (@12) *(4)  4   (@8) *(4)  seg ()4  printGenHex ()12 "
; Fused expression:    "( *(4) (@12) , 4 , ( *(4) (@8) , seg )4 , printGenHex )12 "
	push	dword [bp+12]
	push	dword 4
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L378
section .text
L378:
	dd	_seg
	sub	sp, -4
	push	eax
	db	0x9A
section .relot
	dd	L379
section .text
L379:
	dd	_printGenHex
	sub	sp, -12
; RPN'ized expression: "( 58 p ) "
; Expanded expression: " 58  (@12) *(4) ()4 "
; Fused expression:    "( 58 , *(4) (@12) )4 "
	push	dword 58
	mov	eax, [bp+12]
	db	0x9A
section .relot
	dd	L380
section .text
L380:
	dd	L381
L381:
	mov	si, sp
	add	word [ss:si], L382 - L381
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L382:
	sub	sp, -4
; RPN'ized expression: "( p , 4 , ( ptr off ) printGenHex ) "
; Expanded expression: " (@12) *(4)  4   (@8) *(4)  off ()4  printGenHex ()12 "
; Fused expression:    "( *(4) (@12) , 4 , ( *(4) (@8) , off )4 , printGenHex )12 "
	push	dword [bp+12]
	push	dword 4
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L383
section .text
L383:
	dd	_off
	sub	sp, -4
	push	eax
	db	0x9A
section .relot
	dd	L384
section .text
L384:
	dd	_printGenHex
	sub	sp, -12
; return
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
; Fused expression:    "9  "
	mov	eax, 9
L376:
	db	0x66
	leave
	retf
L385:

section .fxnsz
	dd	L385 - _printGenPtr

; glb printfGen : (
; prm     formato : * char
; prm     p : * (
; prm         car : char
;         ) int
; prm     ...
;     ) int
section .text
	global	_printfGen
_printfGen:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     formato : (@8): * char
; loc     p : (@12): * (
; prm         car : char
;         ) int
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
L386:
	db	0x66
	leave
	retf
L388:

section .fxnsz
	dd	L388 - _printfGen


	extern	_dig
	extern	_seg
	extern	_off

; Syntax/declaration table/stack:
; Bytes used: 3085/40960


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
; Ident printCar_t
; Ident car
; Ident size_t
; Ident printCarN_t
; Ident n
; Ident printGenLn
; Ident p
; Ident printGenStr
; Ident str
; Ident printGenStrHasta
; Ident lleno
; Ident printGenDec
; Ident num
; Ident l
; Ident printGenLDec
; Ident printGenInt
; Ident printGenLInt
; Ident printGenHex
; Ident printGenLHex
; Ident printGenBin
; Ident printGenLBin
; Ident printGenPtr
; Ident printfGen
; Ident formato
; Ident dig
; Bytes used: 971/16384

; Next label number: 389
; Compilation succeeded.
