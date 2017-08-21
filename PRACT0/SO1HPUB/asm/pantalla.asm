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
; glb tamPantalla : (
; prm     numFilas : unsigned char
;     ) unsigned short
section .text
	global	_tamPantalla
_tamPantalla:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     numFilas : (@8): unsigned char
; return
; loc     <something> : struct <something>
; RPN'ized expression: "numFilas 80 * <something3> sizeof * "
; Expanded expression: "(@8) *(1) 80 * 2u * "
; Fused expression:    "* *(@8) 80 * ax 2u unsigned short  "
	mov	al, [bp+8]
	movzx	eax, al
	imul	eax, eax, 80
	imul	eax, eax, 2
	movzx	eax, ax
L1:
	db	0x66
	leave
	retf
L4:

section .fxnsz noalloc
	dd	L4 - _tamPantalla

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
section .text
	global	_pantallazo
_pantallazo:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         12
; loc     pantalla : (@8): * union <something>
; loc     numFilas : (@12): unsigned short
; loc     car : (@16): char
; loc     atr : (@20): char
; loc     esqSupDeF : (@24): unsigned char
; loc     esqSupDeC : (@28): unsigned char
; loc     esqInfIzF : (@32): unsigned char
; loc     esqInfIzC : (@36): unsigned char
; loc     F : (@-4): int
; loc     C : (@-8): int
; loc     pos : (@-12): struct <something>
; if
; RPN'ized expression: "esqInfIzF numFilas >= "
; Expanded expression: "(@32) *(1) (@12) *(2) >= "
; Fused expression:    ">= *(@32) *(@12) IF! "
	mov	al, [bp+32]
	movzx	eax, al
	movzx	ecx, word [bp+12]
	cmp	eax, ecx
	jl	L7
; return
	jmp	L5
L7:
; if
; loc     <something> : char
; RPN'ized expression: "atr 0 (something11) != "
; Expanded expression: "(@20) *(-1) 0 != "
; Fused expression:    "!= *(@20) 0 IF! "
	mov	al, [bp+20]
	movsx	eax, al
	cmp	eax, 0
	je	L9
; {
; RPN'ized expression: "pos &u car -> *u car = "
; Expanded expression: "(@-12) (@16) *(-1) =(1) "
; Fused expression:    "=(151) *(@-12) *(@16) "
	mov	al, [bp+16]
	movsx	eax, al
	mov	[bp-12], al
	movzx	eax, al
; RPN'ized expression: "pos &u atr -> *u atr = "
; Expanded expression: "(@-11) (@20) *(-1) =(1) "
; Fused expression:    "=(151) *(@-11) *(@20) "
	mov	al, [bp+20]
	movsx	eax, al
	mov	[bp-11], al
	movzx	eax, al
; for
; RPN'ized expression: "F esqSupDeF = "
; Expanded expression: "(@-4) (@24) *(1) =(4) "
; Fused expression:    "=(201) *(@-4) *(@24) "
	mov	al, [bp+24]
	movzx	eax, al
	mov	[bp-4], eax
L12:
; RPN'ized expression: "F esqInfIzF <= "
; Expanded expression: "(@-4) *(4) (@32) *(1) <= "
; Fused expression:    "<= *(@-4) *(@32) IF! "
	mov	eax, [bp-4]
	movzx	ecx, byte [bp+32]
	cmp	eax, ecx
	jg	L15
; RPN'ized expression: "F ++p "
; Expanded expression: "(@-4) ++p(4) "
; for
; RPN'ized expression: "C esqSupDeC = "
; Expanded expression: "(@-8) (@28) *(1) =(4) "
; Fused expression:    "=(201) *(@-8) *(@28) "
	mov	al, [bp+28]
	movzx	eax, al
	mov	[bp-8], eax
L16:
; RPN'ized expression: "C esqInfIzC <= "
; Expanded expression: "(@-8) *(4) (@36) *(1) <= "
; Fused expression:    "<= *(@-8) *(@36) IF! "
	mov	eax, [bp-8]
	movzx	ecx, byte [bp+36]
	cmp	eax, ecx
	jg	L19
; RPN'ized expression: "C ++p "
; Expanded expression: "(@-8) ++p(4) "
; RPN'ized expression: "pantalla t -> *u F + *u C + *u pos = "
; Expanded expression: " (@8) *(4) 0 + (@-4) *(4) 160 * + (@-8) *(4) 2 * +  (@-12)  2u  L20 ()12 "
; Fused expression:    "( + *(@8) 0 push-ax * *(@-4) 160 + *sp ax push-ax * *(@-8) 2 + *sp ax , (@-12) , 2u , L20 )12 "
	mov	eax, [bp+8]
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 160
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 2
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	xor	eax, eax
	mov	ax, ss
	shl	eax, 4
	lea	eax, [ebp+eax-12]
	push	eax
	push	dword 2
	db	0x9A
section .relot
	dd	L21
section .text
L21:
	dd	L20
	sub	sp, -12
L17:
; Fused expression:    "++p(4) *(@-8) "
	mov	eax, [bp-8]
	inc	dword [bp-8]
	jmp	L16
L19:
L13:
; Fused expression:    "++p(4) *(@-4) "
	mov	eax, [bp-4]
	inc	dword [bp-4]
	jmp	L12
L15:
; }
	jmp	L10
L9:
; else
; {
; for
; RPN'ized expression: "F esqSupDeF = "
; Expanded expression: "(@-4) (@24) *(1) =(4) "
; Fused expression:    "=(201) *(@-4) *(@24) "
	mov	al, [bp+24]
	movzx	eax, al
	mov	[bp-4], eax
L22:
; RPN'ized expression: "F esqInfIzF <= "
; Expanded expression: "(@-4) *(4) (@32) *(1) <= "
; Fused expression:    "<= *(@-4) *(@32) IF! "
	mov	eax, [bp-4]
	movzx	ecx, byte [bp+32]
	cmp	eax, ecx
	jg	L25
; RPN'ized expression: "F ++p "
; Expanded expression: "(@-4) ++p(4) "
; for
; RPN'ized expression: "C esqSupDeC = "
; Expanded expression: "(@-8) (@28) *(1) =(4) "
; Fused expression:    "=(201) *(@-8) *(@28) "
	mov	al, [bp+28]
	movzx	eax, al
	mov	[bp-8], eax
L26:
; RPN'ized expression: "C esqInfIzC <= "
; Expanded expression: "(@-8) *(4) (@36) *(1) <= "
; Fused expression:    "<= *(@-8) *(@36) IF! "
	mov	eax, [bp-8]
	movzx	ecx, byte [bp+36]
	cmp	eax, ecx
	jg	L29
; RPN'ized expression: "C ++p "
; Expanded expression: "(@-8) ++p(4) "
; RPN'ized expression: "pantalla t -> *u F + *u C + *u &u car -> *u car = "
; Expanded expression: "(@8) *(4) 0 + (@-4) *(4) 160 * + (@-8) *(4) 2 * + 0 + (@16) *(-1) =(1) "
; Fused expression:    "+ *(@8) 0 push-ax * *(@-4) 160 + *sp ax push-ax * *(@-8) 2 + *sp ax + ax 0 =(151) *ax *(@16) "
	mov	eax, [bp+8]
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 160
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 2
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	al, [bp+16]
	movsx	eax, al
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
L27:
; Fused expression:    "++p(4) *(@-8) "
	mov	eax, [bp-8]
	inc	dword [bp-8]
	jmp	L26
L29:
L23:
; Fused expression:    "++p(4) *(@-4) "
	mov	eax, [bp-4]
	inc	dword [bp-4]
	jmp	L22
L25:
; }
L10:
L5:
	db	0x66
	leave
	retf
L30:

section .fxnsz
	dd	L30 - _pantallazo

; glb borrarPantalla : (
; prm     pantalla : * union <something>
; prm     numFilas : unsigned short
;     ) void
section .text
	global	_borrarPantalla
_borrarPantalla:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     pantalla : (@8): * union <something>
; loc     numFilas : (@12): unsigned short
; RPN'ized expression: "( 80 1 - , numFilas 1 - , 0 , 0 , 7 , 32 , numFilas , pantalla pantallazo ) "
; Expanded expression: " 79  (@12) *(2) 1 -  0  0  7  32  (@12) *(2)  (@8) *(4)  pantallazo ()32 "
; Fused expression:    "( 79 , - *(@12) 1 , 0 , 0 , 7 , 32 , *(2) (@12) , *(4) (@8) , pantallazo )32 "
	push	dword 79
	mov	ax, [bp+12]
	movzx	eax, ax
	dec	eax
	push	eax
	push	dword 0
	push	dword 0
	push	dword 7
	push	dword 32
	mov	ax, [bp+12]
	movzx	eax, ax
	push	eax
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L33
section .text
L33:
	dd	_pantallazo
	sub	sp, -32
L31:
	db	0x66
	leave
	retf
L34:

section .fxnsz
	dd	L34 - _borrarPantalla

; glb borrarCPantalla : (
; prm     pantalla : * union <something>
; prm     numFilas : unsigned short
;     ) void
section .text
	global	_borrarCPantalla
_borrarCPantalla:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     pantalla : (@8): * union <something>
; loc     numFilas : (@12): unsigned short
; loc     <something> : char
; RPN'ized expression: "( 80 1 - , numFilas 1 - , 0 , 0 , 0 (something37) , 32 , numFilas , pantalla pantallazo ) "
; Expanded expression: " 79  (@12) *(2) 1 -  0  0  0  32  (@12) *(2)  (@8) *(4)  pantallazo ()32 "
; Fused expression:    "( 79 , - *(@12) 1 , 0 , 0 , 0 , 32 , *(2) (@12) , *(4) (@8) , pantallazo )32 "
	push	dword 79
	mov	ax, [bp+12]
	movzx	eax, ax
	dec	eax
	push	eax
	push	dword 0
	push	dword 0
	push	dword 0
	push	dword 32
	mov	ax, [bp+12]
	movzx	eax, ax
	push	eax
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L38
section .text
L38:
	dd	_pantallazo
	sub	sp, -32
L35:
	db	0x66
	leave
	retf
L39:

section .fxnsz
	dd	L39 - _borrarCPantalla

; glb copiarPantalla : (
; prm     p1 : * union <something>
; prm     p2 : * union <something>
; prm     numFilas : unsigned short
;     ) void
section .text
	global	_copiarPantalla
_copiarPantalla:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          8
; loc     p1 : (@8): * union <something>
; loc     p2 : (@12): * union <something>
; loc     numFilas : (@16): unsigned short
; loc     F : (@-4): unsigned char
; loc     C : (@-8): unsigned char
; for
; RPN'ized expression: "F 0 = "
; Expanded expression: "(@-4) 0 =(1) "
; Fused expression:    "=(156) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], al
	movzx	eax, al
L42:
; RPN'ized expression: "F numFilas < "
; Expanded expression: "(@-4) *(1) (@16) *(2) < "
; Fused expression:    "< *(@-4) *(@16) IF! "
	mov	al, [bp-4]
	movzx	eax, al
	movzx	ecx, word [bp+16]
	cmp	eax, ecx
	jge	L45
; RPN'ized expression: "F ++p "
; Expanded expression: "(@-4) ++p(1) "
; for
; RPN'ized expression: "C 0 = "
; Expanded expression: "(@-8) 0 =(1) "
; Fused expression:    "=(156) *(@-8) 0 "
	mov	eax, 0
	mov	[bp-8], al
	movzx	eax, al
L46:
; RPN'ized expression: "C 80 < "
; Expanded expression: "(@-8) *(1) 80 < "
; Fused expression:    "< *(@-8) 80 IF! "
	mov	al, [bp-8]
	movzx	eax, al
	cmp	eax, 80
	jge	L49
; RPN'ized expression: "C ++p "
; Expanded expression: "(@-8) ++p(1) "
; RPN'ized expression: "p2 t -> *u F + *u C + *u p1 t -> *u F + *u C + *u = "
; Expanded expression: " (@12) *(4) 0 + (@-4) *(1) 160 * + (@-8) *(1) 2 * +  (@8) *(4) 0 + (@-4) *(1) 160 * + (@-8) *(1) 2 * +  2u  L20 ()12 "
; Fused expression:    "( + *(@12) 0 push-ax * *(@-4) 160 + *sp ax push-ax * *(@-8) 2 + *sp ax , + *(@8) 0 push-ax * *(@-4) 160 + *sp ax push-ax * *(@-8) 2 + *sp ax , 2u , L20 )12 "
	mov	eax, [bp+12]
	push	eax
	mov	al, [bp-4]
	movzx	eax, al
	imul	eax, eax, 160
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	mov	al, [bp-8]
	movzx	eax, al
	imul	eax, eax, 2
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	mov	eax, [bp+8]
	push	eax
	mov	al, [bp-4]
	movzx	eax, al
	imul	eax, eax, 160
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	mov	al, [bp-8]
	movzx	eax, al
	imul	eax, eax, 2
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	push	dword 2
	db	0x9A
section .relot
	dd	L50
section .text
L50:
	dd	L20
	sub	sp, -12
L47:
; Fused expression:    "++p(1) *(@-8) "
	mov	al, [bp-8]
	movzx	eax, al
	inc	byte [bp-8]
	jmp	L46
L49:
L43:
; Fused expression:    "++p(1) *(@-4) "
	mov	al, [bp-4]
	movzx	eax, al
	inc	byte [bp-4]
	jmp	L42
L45:
L40:
	db	0x66
	leave
	retf
L51:

section .fxnsz
	dd	L51 - _copiarPantalla

; glb copiarCPantalla : (
; prm     p1 : * union <something>
; prm     p2 : * union <something>
; prm     numFilas : unsigned short
;     ) void
section .text
	global	_copiarCPantalla
_copiarCPantalla:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          8
; loc     p1 : (@8): * union <something>
; loc     p2 : (@12): * union <something>
; loc     numFilas : (@16): unsigned short
; loc     F : (@-4): unsigned char
; loc     C : (@-8): unsigned char
; for
; RPN'ized expression: "F 0 = "
; Expanded expression: "(@-4) 0 =(1) "
; Fused expression:    "=(156) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], al
	movzx	eax, al
L54:
; RPN'ized expression: "F numFilas < "
; Expanded expression: "(@-4) *(1) (@16) *(2) < "
; Fused expression:    "< *(@-4) *(@16) IF! "
	mov	al, [bp-4]
	movzx	eax, al
	movzx	ecx, word [bp+16]
	cmp	eax, ecx
	jge	L57
; RPN'ized expression: "F ++p "
; Expanded expression: "(@-4) ++p(1) "
; for
; RPN'ized expression: "C 0 = "
; Expanded expression: "(@-8) 0 =(1) "
; Fused expression:    "=(156) *(@-8) 0 "
	mov	eax, 0
	mov	[bp-8], al
	movzx	eax, al
L58:
; RPN'ized expression: "C 80 < "
; Expanded expression: "(@-8) *(1) 80 < "
; Fused expression:    "< *(@-8) 80 IF! "
	mov	al, [bp-8]
	movzx	eax, al
	cmp	eax, 80
	jge	L61
; RPN'ized expression: "C ++p "
; Expanded expression: "(@-8) ++p(1) "
; RPN'ized expression: "p2 t -> *u F + *u C + *u &u car -> *u p1 t -> *u F + *u C + *u &u car -> *u = "
; Expanded expression: "(@12) *(4) 0 + (@-4) *(1) 160 * + (@-8) *(1) 2 * + 0 + (@8) *(4) 0 + (@-4) *(1) 160 * + (@-8) *(1) 2 * + 0 + *(1) =(1) "
; Fused expression:    "+ *(@12) 0 push-ax * *(@-4) 160 + *sp ax push-ax * *(@-8) 2 + *sp ax + ax 0 push-ax + *(@8) 0 push-ax * *(@-4) 160 + *sp ax push-ax * *(@-8) 2 + *sp ax + ax 0 =(153) **sp *ax "
	mov	eax, [bp+12]
	push	eax
	mov	al, [bp-4]
	movzx	eax, al
	imul	eax, eax, 160
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	mov	al, [bp-8]
	movzx	eax, al
	imul	eax, eax, 2
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	mov	eax, [bp+8]
	push	eax
	mov	al, [bp-4]
	movzx	eax, al
	imul	eax, eax, 160
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	mov	al, [bp-8]
	movzx	eax, al
	imul	eax, eax, 2
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
L59:
; Fused expression:    "++p(1) *(@-8) "
	mov	al, [bp-8]
	movzx	eax, al
	inc	byte [bp-8]
	jmp	L58
L61:
L55:
; Fused expression:    "++p(1) *(@-4) "
	mov	al, [bp-4]
	movzx	eax, al
	inc	byte [bp-4]
	jmp	L54
L57:
L52:
	db	0x66
	leave
	retf
L62:

section .fxnsz
	dd	L62 - _copiarCPantalla

; glb scrollPantalla : (
; prm     pantalla : * union <something>
; prm     numFilas : unsigned short
;     ) void
section .text
	global	_scrollPantalla
_scrollPantalla:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          8
; loc     pantalla : (@8): * union <something>
; loc     numFilas : (@12): unsigned short
; loc     C : (@-4): unsigned char
; loc     pos : (@-8): struct <something>
; RPN'ized expression: "pos &u car -> *u 32 = "
; Expanded expression: "(@-8) 32 =(1) "
; Fused expression:    "=(156) *(@-8) 32 "
	mov	eax, 32
	mov	[bp-8], al
	movzx	eax, al
; RPN'ized expression: "pos &u atr -> *u 7 = "
; Expanded expression: "(@-7) 7 =(1) "
; Fused expression:    "=(156) *(@-7) 7 "
	mov	eax, 7
	mov	[bp-7], al
	movzx	eax, al
; RPN'ized expression: "numFilas --p "
; Expanded expression: "(@12) --p(2) "
; Fused expression:    "--p(2) *(@12) "
	mov	ax, [bp+12]
	movzx	eax, ax
	dec	word [bp+12]
; loc     <something> : * union <something>
; RPN'ized expression: "( numFilas , pantalla , pantalla t -> *u 1 + *u 0 + *u &u (something65) copiarPantalla ) "
; Expanded expression: " (@12) *(2)  (@8) *(4)  (@8) *(4) 160 +  copiarPantalla ()12 "
; Fused expression:    "( *(2) (@12) , *(4) (@8) , + *(@8) 160 , copiarPantalla )12 "
	mov	ax, [bp+12]
	movzx	eax, ax
	push	eax
	push	dword [bp+8]
	mov	eax, [bp+8]
	add	eax, 160
	push	eax
	db	0x9A
section .relot
	dd	L66
section .text
L66:
	dd	_copiarPantalla
	sub	sp, -12
; for
; RPN'ized expression: "C 0 = "
; Expanded expression: "(@-4) 0 =(1) "
; Fused expression:    "=(156) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], al
	movzx	eax, al
L67:
; RPN'ized expression: "C 80 < "
; Expanded expression: "(@-4) *(1) 80 < "
; Fused expression:    "< *(@-4) 80 IF! "
	mov	al, [bp-4]
	movzx	eax, al
	cmp	eax, 80
	jge	L70
; RPN'ized expression: "C ++p "
; Expanded expression: "(@-4) ++p(1) "
; RPN'ized expression: "pantalla t -> *u numFilas + *u C + *u pos = "
; Expanded expression: " (@8) *(4) 0 + (@12) *(2) 160 * + (@-4) *(1) 2 * +  (@-8)  2u  L20 ()12 "
; Fused expression:    "( + *(@8) 0 push-ax * *(@12) 160 + *sp ax push-ax * *(@-4) 2 + *sp ax , (@-8) , 2u , L20 )12 "
	mov	eax, [bp+8]
	push	eax
	mov	ax, [bp+12]
	movzx	eax, ax
	imul	eax, eax, 160
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	mov	al, [bp-4]
	movzx	eax, al
	imul	eax, eax, 2
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	xor	eax, eax
	mov	ax, ss
	shl	eax, 4
	lea	eax, [ebp+eax-8]
	push	eax
	push	dword 2
	db	0x9A
section .relot
	dd	L71
section .text
L71:
	dd	L20
	sub	sp, -12
L68:
; Fused expression:    "++p(1) *(@-4) "
	mov	al, [bp-4]
	movzx	eax, al
	inc	byte [bp-4]
	jmp	L67
L70:
L63:
	db	0x66
	leave
	retf
L72:

section .fxnsz
	dd	L72 - _scrollPantalla

; glb scrollCPantalla : (
; prm     pantalla : * union <something>
; prm     numFilas : unsigned short
;     ) void
section .text
	global	_scrollCPantalla
_scrollCPantalla:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     pantalla : (@8): * union <something>
; loc     numFilas : (@12): unsigned short
; loc     C : (@-4): unsigned char
; RPN'ized expression: "numFilas --p "
; Expanded expression: "(@12) --p(2) "
; Fused expression:    "--p(2) *(@12) "
	mov	ax, [bp+12]
	movzx	eax, ax
	dec	word [bp+12]
; loc     <something> : * union <something>
; RPN'ized expression: "( numFilas , pantalla , pantalla t -> *u 1 + *u 0 + *u &u (something75) copiarCPantalla ) "
; Expanded expression: " (@12) *(2)  (@8) *(4)  (@8) *(4) 160 +  copiarCPantalla ()12 "
; Fused expression:    "( *(2) (@12) , *(4) (@8) , + *(@8) 160 , copiarCPantalla )12 "
	mov	ax, [bp+12]
	movzx	eax, ax
	push	eax
	push	dword [bp+8]
	mov	eax, [bp+8]
	add	eax, 160
	push	eax
	db	0x9A
section .relot
	dd	L76
section .text
L76:
	dd	_copiarCPantalla
	sub	sp, -12
; for
; RPN'ized expression: "C 0 = "
; Expanded expression: "(@-4) 0 =(1) "
; Fused expression:    "=(156) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], al
	movzx	eax, al
L77:
; RPN'ized expression: "C 80 < "
; Expanded expression: "(@-4) *(1) 80 < "
; Fused expression:    "< *(@-4) 80 IF! "
	mov	al, [bp-4]
	movzx	eax, al
	cmp	eax, 80
	jge	L80
; RPN'ized expression: "C ++p "
; Expanded expression: "(@-4) ++p(1) "
; RPN'ized expression: "pantalla t -> *u numFilas + *u C + *u &u car -> *u 32 = "
; Expanded expression: "(@8) *(4) 0 + (@12) *(2) 160 * + (@-4) *(1) 2 * + 0 + 32 =(1) "
; Fused expression:    "+ *(@8) 0 push-ax * *(@12) 160 + *sp ax push-ax * *(@-4) 2 + *sp ax + ax 0 =(156) *ax 32 "
	mov	eax, [bp+8]
	push	eax
	mov	ax, [bp+12]
	movzx	eax, ax
	imul	eax, eax, 160
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	mov	al, [bp-4]
	movzx	eax, al
	imul	eax, eax, 2
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	eax, 32
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
L78:
; Fused expression:    "++p(1) *(@-4) "
	mov	al, [bp-4]
	movzx	eax, al
	inc	byte [bp-4]
	jmp	L77
L80:
L73:
	db	0x66
	leave
	retf
L81:

section .fxnsz
	dd	L81 - _scrollCPantalla

section .text
L20:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
	mov	edi, [bp+16]
	ror	edi, 4
	mov	es, di
	shr	edi, 28
	mov	esi, [bp+12]
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ebx, [bp+8]
	cld
L82:
	mov	ecx, 32768
	cmp	ebx, ecx
	jc	L83
	sub	ebx, ecx
	rep	movsb
	and	di, 15
	mov	ax, es
	add	ax, 2048
	mov	es, ax
	and	si, 15
	mov	ax, ds
	add	ax, 2048
	mov	ds, ax
	jmp	L82
L83:
	mov	cx, bx
	rep	movsb
	mov	eax, [bp+16]
	db	0x66
	leave
	retf



; Syntax/declaration table/stack:
; Bytes used: 2035/40960


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
; Ident car
; Ident atr
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
; Bytes used: 946/16384

; Next label number: 84
; Compilation succeeded.
