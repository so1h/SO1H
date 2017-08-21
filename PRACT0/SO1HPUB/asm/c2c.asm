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
; glb posicionC2c : (
; prm     i : int
; prm     c2c : struct <something>
;     ) int
section .text
	global	_posicionC2c
_posicionC2c:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         20
; loc     i : (@8): int
; loc     c2c : (@12): struct <something>
; {
; loc         e : (@-4): * struct <something>
; RPN'ized expression: "e c2c &u e -> *u = "
; Expanded expression: "(@-4) (@24) *(4) =(4) "
; Fused expression:    "=(204) *(@-4) *(@24) "
	mov	eax, [bp+24]
	mov	[bp-4], eax
; loc         cabecera : (@-8): int
; RPN'ized expression: "cabecera c2c &u cabecera -> *u = "
; Expanded expression: "(@-8) (@20) *(4) =(4) "
; Fused expression:    "=(204) *(@-8) *(@20) "
	mov	eax, [bp+20]
	mov	[bp-8], eax
; loc         primero : (@-12): int
; RPN'ized expression: "primero c2c &u primero -> *u = "
; Expanded expression: "(@-12) (@16) *(4) =(4) "
; Fused expression:    "=(204) *(@-12) *(@16) "
	mov	eax, [bp+16]
	mov	[bp-12], eax
; {
; loc             j : (@-16): int
; loc             k : (@-20): int
; if
; RPN'ized expression: "i cabecera == "
; Expanded expression: "(@8) *(4) (@-8) *(4) == "
; Fused expression:    "== *(@8) *(@-8) IF! "
	mov	eax, [bp+8]
	cmp	eax, [bp-8]
	jne	L3
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L1
L3:
; RPN'ized expression: "j primero = "
; Expanded expression: "(@-16) (@-12) *(4) =(4) "
; Fused expression:    "=(204) *(@-16) *(@-12) "
	mov	eax, [bp-12]
	mov	[bp-16], eax
; RPN'ized expression: "k 1 = "
; Expanded expression: "(@-20) 1 =(4) "
; Fused expression:    "=(204) *(@-20) 1 "
	mov	eax, 1
	mov	[bp-20], eax
; while
; RPN'ized expression: "j cabecera != j i != && "
; Expanded expression: "(@-16) *(4) (@-8) *(4) != [sh&&->7] (@-16) *(4) (@8) *(4) != &&[7] "
L5:
; Fused expression:    "!= *(@-16) *(@-8) [sh&&->7] != *(@-16) *(@8) &&[7]  "
	mov	eax, [bp-16]
	cmp	eax, [bp-8]
	setne	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L7
	mov	eax, [bp-16]
	cmp	eax, [bp+8]
	setne	al
	movzx	eax, al
L7:
; JumpIfZero
	test	eax, eax
	je	L6
; {
; RPN'ized expression: "j e j + *u &u sig -> *u = "
; Expanded expression: "(@-16) (@-4) *(4) (@-16) *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "* *(@-16) 12 + *(@-4) ax + ax 0 =(204) *(@-16) *ax "
	mov	eax, [bp-16]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-16], eax
; RPN'ized expression: "k ++p "
; Expanded expression: "(@-20) ++p(4) "
; Fused expression:    "++p(4) *(@-20) "
	mov	eax, [bp-20]
	inc	dword [bp-20]
; }
	jmp	L5
L6:
; if
; RPN'ized expression: "j cabecera != "
; Expanded expression: "(@-16) *(4) (@-8) *(4) != "
; Fused expression:    "!= *(@-16) *(@-8) IF! "
	mov	eax, [bp-16]
	cmp	eax, [bp-8]
	je	L8
; return
; RPN'ized expression: "k "
; Expanded expression: "(@-20) *(4) "
; Fused expression:    "*(4) (@-20)  "
	mov	eax, [bp-20]
	jmp	L1
L8:
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1  "
	mov	eax, -1
	jmp	L1
; }
; }
L1:
	db	0x66
	leave
	retf
L10:

section .fxnsz noalloc
	dd	L10 - _posicionC2c

; glb eliminarC2c : (
; prm     i : int
; prm     c2c : struct <something>
;     ) void
section .text
	global	_eliminarC2c
_eliminarC2c:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         12
; loc     i : (@8): int
; loc     c2c : (@12): struct <something>
; {
; loc         e : (@-4): * struct <something>
; RPN'ized expression: "e c2c &u e -> *u = "
; Expanded expression: "(@-4) (@24) *(4) =(4) "
; Fused expression:    "=(204) *(@-4) *(@24) "
	mov	eax, [bp+24]
	mov	[bp-4], eax
; {
; loc             ant : (@-8): int
; RPN'ized expression: "ant e i + *u &u ant -> *u = "
; Expanded expression: "(@-8) (@-4) *(4) (@8) *(4) 12 * + 4 + *(4) =(4) "
; Fused expression:    "* *(@8) 12 + *(@-4) ax + ax 4 =(204) *(@-8) *ax "
	mov	eax, [bp+8]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-8], eax
; loc             sig : (@-12): int
; RPN'ized expression: "sig e i + *u &u sig -> *u = "
; Expanded expression: "(@-12) (@-4) *(4) (@8) *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "* *(@8) 12 + *(@-4) ax + ax 0 =(204) *(@-12) *ax "
	mov	eax, [bp+8]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-12], eax
; RPN'ized expression: "e ant + *u &u sig -> *u sig = "
; Expanded expression: "(@-4) *(4) (@-8) *(4) 12 * + 0 + (@-12) *(4) =(4) "
; Fused expression:    "* *(@-8) 12 + *(@-4) ax + ax 0 =(204) *ax *(@-12) "
	mov	eax, [bp-8]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	mov	ebx, eax
	mov	eax, [bp-12]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "e sig + *u &u ant -> *u ant = "
; Expanded expression: "(@-4) *(4) (@-12) *(4) 12 * + 4 + (@-8) *(4) =(4) "
; Fused expression:    "* *(@-12) 12 + *(@-4) ax + ax 4 =(204) *ax *(@-8) "
	mov	eax, [bp-12]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	eax, [bp-8]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; }
; if
; RPN'ized expression: "i c2c &u primero -> *u == "
; Expanded expression: "(@8) *(4) (@16) *(4) == "
; Fused expression:    "== *(@8) *(@16) IF! "
	mov	eax, [bp+8]
	cmp	eax, [bp+16]
	jne	L13
; RPN'ized expression: "c2c &u primero -> *u e i + *u &u sig -> *u = "
; Expanded expression: "(@16) (@-4) *(4) (@8) *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "* *(@8) 12 + *(@-4) ax + ax 0 =(204) *(@16) *ax "
	mov	eax, [bp+8]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp+16], eax
L13:
; loc         <something> : int
; RPN'ized expression: "e i + *u &u sig -> *u 1 -u (something15) = "
; Expanded expression: "(@-4) *(4) (@8) *(4) 12 * + 0 + -1 =(4) "
; Fused expression:    "* *(@8) 12 + *(@-4) ax + ax 0 =(204) *ax -1 "
	mov	eax, [bp+8]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	mov	ebx, eax
	mov	eax, -1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc         <something> : int
; RPN'ized expression: "e i + *u &u ant -> *u 1 -u (something16) = "
; Expanded expression: "(@-4) *(4) (@8) *(4) 12 * + 4 + -1 =(4) "
; Fused expression:    "* *(@8) 12 + *(@-4) ax + ax 4 =(204) *ax -1 "
	mov	eax, [bp+8]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	eax, -1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc         <something> : int
; RPN'ized expression: "e i + *u &u cab -> *u 1 -u (something17) = "
; Expanded expression: "(@-4) *(4) (@8) *(4) 12 * + 8 + -1 =(4) "
; Fused expression:    "* *(@8) 12 + *(@-4) ax + ax 8 =(204) *ax -1 "
	mov	eax, [bp+8]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	add	eax, 8
	mov	ebx, eax
	mov	eax, -1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "c2c &u numElem -> *u --p "
; Expanded expression: "(@12) --p(4) "
; Fused expression:    "--p(4) *(@12) "
	mov	eax, [bp+12]
	dec	dword [bp+12]
; }
L11:
	db	0x66
	leave
	retf
L18:

section .fxnsz
	dd	L18 - _eliminarC2c

; glb apilarC2c : (
; prm     i : int
; prm     c2c : struct <something>
;     ) void
section .text
	global	_apilarC2c
_apilarC2c:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         12
; loc     i : (@8): int
; loc     c2c : (@12): struct <something>
; {
; loc         e : (@-4): * struct <something>
; RPN'ized expression: "e c2c &u e -> *u = "
; Expanded expression: "(@-4) (@24) *(4) =(4) "
; Fused expression:    "=(204) *(@-4) *(@24) "
	mov	eax, [bp+24]
	mov	[bp-4], eax
; loc         anterior : (@-8): int
; RPN'ized expression: "anterior c2c &u cabecera -> *u = "
; Expanded expression: "(@-8) (@20) *(4) =(4) "
; Fused expression:    "=(204) *(@-8) *(@20) "
	mov	eax, [bp+20]
	mov	[bp-8], eax
; loc         siguiente : (@-12): int
; RPN'ized expression: "siguiente c2c &u primero -> *u = "
; Expanded expression: "(@-12) (@16) *(4) =(4) "
; Fused expression:    "=(204) *(@-12) *(@16) "
	mov	eax, [bp+16]
	mov	[bp-12], eax
; {
; RPN'ized expression: "e i + *u &u sig -> *u siguiente = "
; Expanded expression: "(@-4) *(4) (@8) *(4) 12 * + 0 + (@-12) *(4) =(4) "
; Fused expression:    "* *(@8) 12 + *(@-4) ax + ax 0 =(204) *ax *(@-12) "
	mov	eax, [bp+8]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	mov	ebx, eax
	mov	eax, [bp-12]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "e i + *u &u ant -> *u anterior = "
; Expanded expression: "(@-4) *(4) (@8) *(4) 12 * + 4 + (@-8) *(4) =(4) "
; Fused expression:    "* *(@8) 12 + *(@-4) ax + ax 4 =(204) *ax *(@-8) "
	mov	eax, [bp+8]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	eax, [bp-8]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "e anterior + *u &u sig -> *u i = "
; Expanded expression: "(@-4) *(4) (@-8) *(4) 12 * + 0 + (@8) *(4) =(4) "
; Fused expression:    "* *(@-8) 12 + *(@-4) ax + ax 0 =(204) *ax *(@8) "
	mov	eax, [bp-8]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	mov	ebx, eax
	mov	eax, [bp+8]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "e siguiente + *u &u ant -> *u i = "
; Expanded expression: "(@-4) *(4) (@-12) *(4) 12 * + 4 + (@8) *(4) =(4) "
; Fused expression:    "* *(@-12) 12 + *(@-4) ax + ax 4 =(204) *ax *(@8) "
	mov	eax, [bp-12]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	eax, [bp+8]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; }
; RPN'ized expression: "c2c &u primero -> *u i = "
; Expanded expression: "(@16) (@8) *(4) =(4) "
; Fused expression:    "=(204) *(@16) *(@8) "
	mov	eax, [bp+8]
	mov	[bp+16], eax
; RPN'ized expression: "c2c &u numElem -> *u ++p "
; Expanded expression: "(@12) ++p(4) "
; Fused expression:    "++p(4) *(@12) "
	mov	eax, [bp+12]
	inc	dword [bp+12]
; }
L19:
	db	0x66
	leave
	retf
L21:

section .fxnsz
	dd	L21 - _apilarC2c

; glb encolarC2c : (
; prm     i : int
; prm     c2c : struct <something>
;     ) void
section .text
	global	_encolarC2c
_encolarC2c:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         12
; loc     i : (@8): int
; loc     c2c : (@12): struct <something>
; {
; loc         e : (@-4): * struct <something>
; RPN'ized expression: "e c2c &u e -> *u = "
; Expanded expression: "(@-4) (@24) *(4) =(4) "
; Fused expression:    "=(204) *(@-4) *(@24) "
	mov	eax, [bp+24]
	mov	[bp-4], eax
; loc         siguiente : (@-8): int
; RPN'ized expression: "siguiente c2c &u cabecera -> *u = "
; Expanded expression: "(@-8) (@20) *(4) =(4) "
; Fused expression:    "=(204) *(@-8) *(@20) "
	mov	eax, [bp+20]
	mov	[bp-8], eax
; loc         anterior : (@-12): int
; RPN'ized expression: "anterior e siguiente + *u &u ant -> *u = "
; Expanded expression: "(@-12) (@-4) *(4) (@-8) *(4) 12 * + 4 + *(4) =(4) "
; Fused expression:    "* *(@-8) 12 + *(@-4) ax + ax 4 =(204) *(@-12) *ax "
	mov	eax, [bp-8]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-12], eax
; {
; RPN'ized expression: "e i + *u &u sig -> *u siguiente = "
; Expanded expression: "(@-4) *(4) (@8) *(4) 12 * + 0 + (@-8) *(4) =(4) "
; Fused expression:    "* *(@8) 12 + *(@-4) ax + ax 0 =(204) *ax *(@-8) "
	mov	eax, [bp+8]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	mov	ebx, eax
	mov	eax, [bp-8]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "e i + *u &u ant -> *u anterior = "
; Expanded expression: "(@-4) *(4) (@8) *(4) 12 * + 4 + (@-12) *(4) =(4) "
; Fused expression:    "* *(@8) 12 + *(@-4) ax + ax 4 =(204) *ax *(@-12) "
	mov	eax, [bp+8]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	eax, [bp-12]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "e anterior + *u &u sig -> *u i = "
; Expanded expression: "(@-4) *(4) (@-12) *(4) 12 * + 0 + (@8) *(4) =(4) "
; Fused expression:    "* *(@-12) 12 + *(@-4) ax + ax 0 =(204) *ax *(@8) "
	mov	eax, [bp-12]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	mov	ebx, eax
	mov	eax, [bp+8]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "e siguiente + *u &u ant -> *u i = "
; Expanded expression: "(@-4) *(4) (@-8) *(4) 12 * + 4 + (@8) *(4) =(4) "
; Fused expression:    "* *(@-8) 12 + *(@-4) ax + ax 4 =(204) *ax *(@8) "
	mov	eax, [bp-8]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	eax, [bp+8]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; }
; RPN'ized expression: "c2c &u primero -> *u c2c &u e -> *u siguiente + *u &u sig -> *u = "
; Expanded expression: "(@16) (@24) *(4) (@-8) *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "* *(@-8) 12 + *(@24) ax + ax 0 =(204) *(@16) *ax "
	mov	eax, [bp-8]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp+24]
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp+16], eax
; RPN'ized expression: "c2c &u numElem -> *u ++p "
; Expanded expression: "(@12) ++p(4) "
; Fused expression:    "++p(4) *(@12) "
	mov	eax, [bp+12]
	inc	dword [bp+12]
; }
L22:
	db	0x66
	leave
	retf
L24:

section .fxnsz
	dd	L24 - _encolarC2c

; glb desencolarC2c : (
; prm     c2c : struct <something>
;     ) int
section .text
	global	_desencolarC2c
_desencolarC2c:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         16
; loc     c2c : (@8): struct <something>
; loc     i : (@-4): int
; RPN'ized expression: "i c2c &u primero -> *u = "
; Expanded expression: "(@-4) (@12) *(4) =(4) "
; Fused expression:    "=(204) *(@-4) *(@12) "
	mov	eax, [bp+12]
	mov	[bp-4], eax
; {
; loc         e : (@-8): * struct <something>
; RPN'ized expression: "e c2c &u e -> *u = "
; Expanded expression: "(@-8) (@20) *(4) =(4) "
; Fused expression:    "=(204) *(@-8) *(@20) "
	mov	eax, [bp+20]
	mov	[bp-8], eax
; {
; loc             ant : (@-12): int
; RPN'ized expression: "ant e i + *u &u ant -> *u = "
; Expanded expression: "(@-12) (@-8) *(4) (@-4) *(4) 12 * + 4 + *(4) =(4) "
; Fused expression:    "* *(@-4) 12 + *(@-8) ax + ax 4 =(204) *(@-12) *ax "
	mov	eax, [bp-4]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-12], eax
; loc             sig : (@-16): int
; RPN'ized expression: "sig e i + *u &u sig -> *u = "
; Expanded expression: "(@-16) (@-8) *(4) (@-4) *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "* *(@-4) 12 + *(@-8) ax + ax 0 =(204) *(@-16) *ax "
	mov	eax, [bp-4]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-16], eax
; RPN'ized expression: "e ant + *u &u sig -> *u sig = "
; Expanded expression: "(@-8) *(4) (@-12) *(4) 12 * + 0 + (@-16) *(4) =(4) "
; Fused expression:    "* *(@-12) 12 + *(@-8) ax + ax 0 =(204) *ax *(@-16) "
	mov	eax, [bp-12]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	mov	ebx, eax
	mov	eax, [bp-16]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "e sig + *u &u ant -> *u ant = "
; Expanded expression: "(@-8) *(4) (@-16) *(4) 12 * + 4 + (@-12) *(4) =(4) "
; Fused expression:    "* *(@-16) 12 + *(@-8) ax + ax 4 =(204) *ax *(@-12) "
	mov	eax, [bp-16]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	eax, [bp-12]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; }
; if
; RPN'ized expression: "i c2c &u primero -> *u == "
; Expanded expression: "(@-4) *(4) (@12) *(4) == "
; Fused expression:    "== *(@-4) *(@12) IF! "
	mov	eax, [bp-4]
	cmp	eax, [bp+12]
	jne	L27
; RPN'ized expression: "c2c &u primero -> *u e i + *u &u sig -> *u = "
; Expanded expression: "(@12) (@-8) *(4) (@-4) *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "* *(@-4) 12 + *(@-8) ax + ax 0 =(204) *(@12) *ax "
	mov	eax, [bp-4]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp+12], eax
L27:
; loc         <something> : int
; RPN'ized expression: "e i + *u &u sig -> *u 1 -u (something29) = "
; Expanded expression: "(@-8) *(4) (@-4) *(4) 12 * + 0 + -1 =(4) "
; Fused expression:    "* *(@-4) 12 + *(@-8) ax + ax 0 =(204) *ax -1 "
	mov	eax, [bp-4]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	mov	ebx, eax
	mov	eax, -1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc         <something> : int
; RPN'ized expression: "e i + *u &u ant -> *u 1 -u (something30) = "
; Expanded expression: "(@-8) *(4) (@-4) *(4) 12 * + 4 + -1 =(4) "
; Fused expression:    "* *(@-4) 12 + *(@-8) ax + ax 4 =(204) *ax -1 "
	mov	eax, [bp-4]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	eax, -1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc         <something> : int
; RPN'ized expression: "e i + *u &u cab -> *u 1 -u (something31) = "
; Expanded expression: "(@-8) *(4) (@-4) *(4) 12 * + 8 + -1 =(4) "
; Fused expression:    "* *(@-4) 12 + *(@-8) ax + ax 8 =(204) *ax -1 "
	mov	eax, [bp-4]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	add	eax, 8
	mov	ebx, eax
	mov	eax, -1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "c2c &u numElem -> *u --p "
; Expanded expression: "(@8) --p(4) "
; Fused expression:    "--p(4) *(@8) "
	mov	eax, [bp+8]
	dec	dword [bp+8]
; }
; return
; RPN'ized expression: "i "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
L25:
	db	0x66
	leave
	retf
L32:

section .fxnsz
	dd	L32 - _desencolarC2c

; glb inicializarC2c : (
; prm     c2c : * struct <something>
; prm     e : * struct <something>
; prm     cabecera : int
; prm     compartida : int
;     ) void
section .text
	global	_inicializarC2c
_inicializarC2c:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     c2c : (@8): * struct <something>
; loc     e : (@12): * struct <something>
; loc     cabecera : (@16): int
; loc     compartida : (@20): int
; RPN'ized expression: "c2c primero -> *u cabecera = "
; Expanded expression: "(@8) *(4) 4 + (@16) *(4) =(4) "
; Fused expression:    "+ *(@8) 4 =(204) *ax *(@16) "
	mov	eax, [bp+8]
	add	eax, 4
	mov	ebx, eax
	mov	eax, [bp+16]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "c2c cabecera -> *u cabecera = "
; Expanded expression: "(@8) *(4) 8 + (@16) *(4) =(4) "
; Fused expression:    "+ *(@8) 8 =(204) *ax *(@16) "
	mov	eax, [bp+8]
	add	eax, 8
	mov	ebx, eax
	mov	eax, [bp+16]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "c2c numElem -> *u 0 = "
; Expanded expression: "(@8) *(4) 0 + 0 =(4) "
; Fused expression:    "+ *(@8) 0 =(204) *ax 0 "
	mov	eax, [bp+8]
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "c2c e -> *u e = "
; Expanded expression: "(@8) *(4) 12 + (@12) *(4) =(4) "
; Fused expression:    "+ *(@8) 12 =(204) *ax *(@12) "
	mov	eax, [bp+8]
	add	eax, 12
	mov	ebx, eax
	mov	eax, [bp+12]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; {
; loc         i : (@-4): int
; RPN'ized expression: "e cabecera + *u &u sig -> *u cabecera = "
; Expanded expression: "(@12) *(4) (@16) *(4) 12 * + 0 + (@16) *(4) =(4) "
; Fused expression:    "* *(@16) 12 + *(@12) ax + ax 0 =(204) *ax *(@16) "
	mov	eax, [bp+16]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp+12]
	add	eax, ecx
	mov	ebx, eax
	mov	eax, [bp+16]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "e cabecera + *u &u ant -> *u cabecera = "
; Expanded expression: "(@12) *(4) (@16) *(4) 12 * + 4 + (@16) *(4) =(4) "
; Fused expression:    "* *(@16) 12 + *(@12) ax + ax 4 =(204) *ax *(@16) "
	mov	eax, [bp+16]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp+12]
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	eax, [bp+16]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "e cabecera + *u &u cab -> *u cabecera = "
; Expanded expression: "(@12) *(4) (@16) *(4) 12 * + 8 + (@16) *(4) =(4) "
; Fused expression:    "* *(@16) 12 + *(@12) ax + ax 8 =(204) *ax *(@16) "
	mov	eax, [bp+16]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp+12]
	add	eax, ecx
	add	eax, 8
	mov	ebx, eax
	mov	eax, [bp+16]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; if
; RPN'ized expression: "compartida "
; Expanded expression: "(@20) *(4) "
; Fused expression:    "*(4) (@20)  "
	mov	eax, [bp+20]
; JumpIfZero
	test	eax, eax
	je	L35
; return
	jmp	L33
L35:
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(4) "
; Fused expression:    "=(204) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], eax
L37:
; RPN'ized expression: "i cabecera < "
; Expanded expression: "(@-4) *(4) (@16) *(4) < "
; Fused expression:    "< *(@-4) *(@16) IF! "
	mov	eax, [bp-4]
	cmp	eax, [bp+16]
	jge	L40
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(4) "
; {
; loc             <something> : int
; RPN'ized expression: "e i + *u &u sig -> *u 1 -u (something41) = "
; Expanded expression: "(@12) *(4) (@-4) *(4) 12 * + 0 + -1 =(4) "
; Fused expression:    "* *(@-4) 12 + *(@12) ax + ax 0 =(204) *ax -1 "
	mov	eax, [bp-4]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp+12]
	add	eax, ecx
	mov	ebx, eax
	mov	eax, -1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc             <something> : int
; RPN'ized expression: "e i + *u &u ant -> *u 1 -u (something42) = "
; Expanded expression: "(@12) *(4) (@-4) *(4) 12 * + 4 + -1 =(4) "
; Fused expression:    "* *(@-4) 12 + *(@12) ax + ax 4 =(204) *ax -1 "
	mov	eax, [bp-4]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp+12]
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	eax, -1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc             <something> : int
; RPN'ized expression: "e i + *u &u cab -> *u 1 -u (something43) = "
; Expanded expression: "(@12) *(4) (@-4) *(4) 12 * + 8 + -1 =(4) "
; Fused expression:    "* *(@-4) 12 + *(@12) ax + ax 8 =(204) *ax -1 "
	mov	eax, [bp-4]
	imul	eax, eax, 12
	mov	ecx, eax
	mov	eax, [bp+12]
	add	eax, ecx
	add	eax, 8
	mov	ebx, eax
	mov	eax, -1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; }
L38:
; Fused expression:    "++p(4) *(@-4) "
	mov	eax, [bp-4]
	inc	dword [bp-4]
	jmp	L37
L40:
; }
L33:
	db	0x66
	leave
	retf
L44:

section .fxnsz
	dd	L44 - _inicializarC2c



; Syntax/declaration table/stack:
; Bytes used: 1720/40960


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
; Ident sig
; Ident ant
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
; Bytes used: 886/16384

; Next label number: 45
; Compilation succeeded.
