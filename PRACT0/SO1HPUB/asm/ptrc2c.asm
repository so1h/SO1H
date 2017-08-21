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
; glb posicionPC2c : (
; prm     i : int
; prm     ptrC2c : * struct <something>
;     ) int
section .text
	global	_posicionPC2c
_posicionPC2c:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         20
; loc     i : (@8): int
; loc     ptrC2c : (@12): * struct <something>
; {
; loc         e : (@-4): * struct <something>
; loc         <something> : * struct <something>
; RPN'ized expression: "e ptrC2c (something3) e -> *u = "
; Expanded expression: "(@-4) (@12) *(4) 12 + *(4) =(4) "
; Fused expression:    "+ *(@12) 12 =(204) *(@-4) *ax "
	mov	eax, [bp+12]
	add	eax, 12
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-4], eax
; loc         cabecera : (@-8): int
; loc         <something> : * struct <something>
; RPN'ized expression: "cabecera ptrC2c (something4) cabecera -> *u = "
; Expanded expression: "(@-8) (@12) *(4) 8 + *(4) =(4) "
; Fused expression:    "+ *(@12) 8 =(204) *(@-8) *ax "
	mov	eax, [bp+12]
	add	eax, 8
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-8], eax
; loc         primero : (@-12): int
; loc         <something> : * struct <something>
; RPN'ized expression: "primero ptrC2c (something5) primero -> *u = "
; Expanded expression: "(@-12) (@12) *(4) 4 + *(4) =(4) "
; Fused expression:    "+ *(@12) 4 =(204) *(@-12) *ax "
	mov	eax, [bp+12]
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
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
	jne	L6
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L1
L6:
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
; Expanded expression: "(@-16) *(4) (@-8) *(4) != [sh&&->10] (@-16) *(4) (@8) *(4) != &&[10] "
L8:
; Fused expression:    "!= *(@-16) *(@-8) [sh&&->10] != *(@-16) *(@8) &&[10]  "
	mov	eax, [bp-16]
	cmp	eax, [bp-8]
	setne	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L10
	mov	eax, [bp-16]
	cmp	eax, [bp+8]
	setne	al
	movzx	eax, al
L10:
; JumpIfZero
	test	eax, eax
	je	L9
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
	jmp	L8
L9:
; if
; RPN'ized expression: "j cabecera != "
; Expanded expression: "(@-16) *(4) (@-8) *(4) != "
; Fused expression:    "!= *(@-16) *(@-8) IF! "
	mov	eax, [bp-16]
	cmp	eax, [bp-8]
	je	L11
; return
; RPN'ized expression: "k "
; Expanded expression: "(@-20) *(4) "
; Fused expression:    "*(4) (@-20)  "
	mov	eax, [bp-20]
	jmp	L1
L11:
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
L13:

section .fxnsz noalloc
	dd	L13 - _posicionPC2c

; glb eliminarPC2c : (
; prm     i : int
; prm     ptrC2c : * struct <something>
;     ) void
section .text
	global	_eliminarPC2c
_eliminarPC2c:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         12
; loc     i : (@8): int
; loc     ptrC2c : (@12): * struct <something>
; {
; loc         e : (@-4): * struct <something>
; loc         <something> : * struct <something>
; RPN'ized expression: "e ptrC2c (something16) e -> *u = "
; Expanded expression: "(@-4) (@12) *(4) 12 + *(4) =(4) "
; Fused expression:    "+ *(@12) 12 =(204) *(@-4) *ax "
	mov	eax, [bp+12]
	add	eax, 12
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
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
; loc         <something> : * struct <something>
; RPN'ized expression: "i ptrC2c (something19) primero -> *u == "
; Expanded expression: "(@8) *(4) (@12) *(4) 4 + *(4) == "
; Fused expression:    "+ *(@12) 4 == *(@8) *ax IF! "
	mov	eax, [bp+12]
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp+8]
	cmp	eax, ecx
	jne	L17
; loc         <something> : * struct <something>
; RPN'ized expression: "ptrC2c (something20) primero -> *u e i + *u &u sig -> *u = "
; Expanded expression: "(@12) *(4) 4 + (@-4) *(4) (@8) *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "+ *(@12) 4 push-ax * *(@8) 12 + *(@-4) ax + ax 0 =(204) **sp *ax "
	mov	eax, [bp+12]
	add	eax, 4
	push	eax
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
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
L17:
; loc         <something> : int
; RPN'ized expression: "e i + *u &u sig -> *u 1 -u (something21) = "
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
; RPN'ized expression: "e i + *u &u ant -> *u 1 -u (something22) = "
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
; RPN'ized expression: "e i + *u &u cab -> *u 1 -u (something23) = "
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
; loc         <something> : * struct <something>
; RPN'ized expression: "ptrC2c (something24) numElem -> *u --p "
; Expanded expression: "(@12) *(4) 0 + --p(4) "
; Fused expression:    "+ *(@12) 0 --p(4) *ax "
	mov	eax, [bp+12]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	dec	dword [si]
; }
L14:
	db	0x66
	leave
	retf
L25:

section .fxnsz
	dd	L25 - _eliminarPC2c

; glb apilarPC2c : (
; prm     i : int
; prm     ptrC2c : * struct <something>
;     ) void
section .text
	global	_apilarPC2c
_apilarPC2c:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         12
; loc     i : (@8): int
; loc     ptrC2c : (@12): * struct <something>
; {
; loc         e : (@-4): * struct <something>
; loc         <something> : * struct <something>
; RPN'ized expression: "e ptrC2c (something28) e -> *u = "
; Expanded expression: "(@-4) (@12) *(4) 12 + *(4) =(4) "
; Fused expression:    "+ *(@12) 12 =(204) *(@-4) *ax "
	mov	eax, [bp+12]
	add	eax, 12
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-4], eax
; loc         anterior : (@-8): int
; loc         <something> : * struct <something>
; RPN'ized expression: "anterior ptrC2c (something29) cabecera -> *u = "
; Expanded expression: "(@-8) (@12) *(4) 8 + *(4) =(4) "
; Fused expression:    "+ *(@12) 8 =(204) *(@-8) *ax "
	mov	eax, [bp+12]
	add	eax, 8
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-8], eax
; loc         siguiente : (@-12): int
; loc         <something> : * struct <something>
; RPN'ized expression: "siguiente ptrC2c (something30) primero -> *u = "
; Expanded expression: "(@-12) (@12) *(4) 4 + *(4) =(4) "
; Fused expression:    "+ *(@12) 4 =(204) *(@-12) *ax "
	mov	eax, [bp+12]
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
; loc         <something> : * struct <something>
; RPN'ized expression: "ptrC2c (something31) primero -> *u i = "
; Expanded expression: "(@12) *(4) 4 + (@8) *(4) =(4) "
; Fused expression:    "+ *(@12) 4 =(204) *ax *(@8) "
	mov	eax, [bp+12]
	add	eax, 4
	mov	ebx, eax
	mov	eax, [bp+8]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc         <something> : * struct <something>
; RPN'ized expression: "ptrC2c (something32) numElem -> *u ++p "
; Expanded expression: "(@12) *(4) 0 + ++p(4) "
; Fused expression:    "+ *(@12) 0 ++p(4) *ax "
	mov	eax, [bp+12]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	inc	dword [si]
; }
L26:
	db	0x66
	leave
	retf
L33:

section .fxnsz
	dd	L33 - _apilarPC2c

; glb encolarPC2c : (
; prm     i : int
; prm     ptrC2c : * struct <something>
;     ) void
section .text
	global	_encolarPC2c
_encolarPC2c:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         12
; loc     i : (@8): int
; loc     ptrC2c : (@12): * struct <something>
; {
; loc         e : (@-4): * struct <something>
; loc         <something> : * struct <something>
; RPN'ized expression: "e ptrC2c (something36) e -> *u = "
; Expanded expression: "(@-4) (@12) *(4) 12 + *(4) =(4) "
; Fused expression:    "+ *(@12) 12 =(204) *(@-4) *ax "
	mov	eax, [bp+12]
	add	eax, 12
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-4], eax
; loc         siguiente : (@-8): int
; loc         <something> : * struct <something>
; RPN'ized expression: "siguiente ptrC2c (something37) cabecera -> *u = "
; Expanded expression: "(@-8) (@12) *(4) 8 + *(4) =(4) "
; Fused expression:    "+ *(@12) 8 =(204) *(@-8) *ax "
	mov	eax, [bp+12]
	add	eax, 8
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
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
; loc         <something> : * struct <something>
; loc         <something> : * struct <something>
; RPN'ized expression: "ptrC2c (something38) primero -> *u ptrC2c (something39) e -> *u siguiente + *u &u sig -> *u = "
; Expanded expression: "(@12) *(4) 4 + (@12) *(4) 12 + *(4) (@-8) *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "+ *(@12) 4 push-ax + *(@12) 12 push-ax * *(@-8) 12 + **sp ax + ax 0 =(204) **sp *ax "
	mov	eax, [bp+12]
	add	eax, 4
	push	eax
	mov	eax, [bp+12]
	add	eax, 12
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 12
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
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
; loc         <something> : * struct <something>
; RPN'ized expression: "ptrC2c (something40) numElem -> *u ++p "
; Expanded expression: "(@12) *(4) 0 + ++p(4) "
; Fused expression:    "+ *(@12) 0 ++p(4) *ax "
	mov	eax, [bp+12]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	inc	dword [si]
; }
L34:
	db	0x66
	leave
	retf
L41:

section .fxnsz
	dd	L41 - _encolarPC2c

; glb desencolarPC2c : (
; prm     ptrC2c : * struct <something>
;     ) int
section .text
	global	_desencolarPC2c
_desencolarPC2c:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         16
; loc     ptrC2c : (@8): * struct <something>
; loc     i : (@-4): int
; RPN'ized expression: "i ptrC2c primero -> *u = "
; Expanded expression: "(@-4) (@8) *(4) 4 + *(4) =(4) "
; Fused expression:    "+ *(@8) 4 =(204) *(@-4) *ax "
	mov	eax, [bp+8]
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-4], eax
; {
; loc         e : (@-8): * struct <something>
; loc         <something> : * struct <something>
; RPN'ized expression: "e ptrC2c (something44) e -> *u = "
; Expanded expression: "(@-8) (@8) *(4) 12 + *(4) =(4) "
; Fused expression:    "+ *(@8) 12 =(204) *(@-8) *ax "
	mov	eax, [bp+8]
	add	eax, 12
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
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
; loc         <something> : * struct <something>
; RPN'ized expression: "i ptrC2c (something47) primero -> *u == "
; Expanded expression: "(@-4) *(4) (@8) *(4) 4 + *(4) == "
; Fused expression:    "+ *(@8) 4 == *(@-4) *ax IF! "
	mov	eax, [bp+8]
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp-4]
	cmp	eax, ecx
	jne	L45
; loc         <something> : * struct <something>
; RPN'ized expression: "ptrC2c (something48) primero -> *u e i + *u &u sig -> *u = "
; Expanded expression: "(@8) *(4) 4 + (@-8) *(4) (@-4) *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "+ *(@8) 4 push-ax * *(@-4) 12 + *(@-8) ax + ax 0 =(204) **sp *ax "
	mov	eax, [bp+8]
	add	eax, 4
	push	eax
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
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
L45:
; loc         <something> : int
; RPN'ized expression: "e i + *u &u sig -> *u 1 -u (something49) = "
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
; RPN'ized expression: "e i + *u &u ant -> *u 1 -u (something50) = "
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
; RPN'ized expression: "e i + *u &u cab -> *u 1 -u (something51) = "
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
; loc         <something> : * struct <something>
; RPN'ized expression: "ptrC2c (something52) numElem -> *u --p "
; Expanded expression: "(@8) *(4) 0 + --p(4) "
; Fused expression:    "+ *(@8) 0 --p(4) *ax "
	mov	eax, [bp+8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	dec	dword [si]
; }
; return
; RPN'ized expression: "i "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
L42:
	db	0x66
	leave
	retf
L53:

section .fxnsz
	dd	L53 - _desencolarPC2c

; glb inicializarPC2c : (
; prm     ptrC2c : * struct <something>
; prm     e : * struct <something>
; prm     cabecera : int
; prm     compartida : int
;     ) void
section .text
	global	_inicializarPC2c
_inicializarPC2c:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     ptrC2c : (@8): * struct <something>
; loc     e : (@12): * struct <something>
; loc     cabecera : (@16): int
; loc     compartida : (@20): int
; RPN'ized expression: "ptrC2c primero -> *u cabecera = "
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
; RPN'ized expression: "ptrC2c cabecera -> *u cabecera = "
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
; RPN'ized expression: "ptrC2c numElem -> *u 0 = "
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
; RPN'ized expression: "ptrC2c e -> *u e = "
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
	je	L56
; return
	jmp	L54
L56:
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(4) "
; Fused expression:    "=(204) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], eax
L58:
; RPN'ized expression: "i cabecera < "
; Expanded expression: "(@-4) *(4) (@16) *(4) < "
; Fused expression:    "< *(@-4) *(@16) IF! "
	mov	eax, [bp-4]
	cmp	eax, [bp+16]
	jge	L61
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(4) "
; {
; loc             <something> : int
; RPN'ized expression: "e i + *u &u sig -> *u 1 -u (something62) = "
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
; RPN'ized expression: "e i + *u &u ant -> *u 1 -u (something63) = "
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
; RPN'ized expression: "e i + *u &u cab -> *u 1 -u (something64) = "
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
L59:
; Fused expression:    "++p(4) *(@-4) "
	mov	eax, [bp-4]
	inc	dword [bp-4]
	jmp	L58
L61:
; }
L54:
	db	0x66
	leave
	retf
L65:

section .fxnsz
	dd	L65 - _inicializarPC2c



; Syntax/declaration table/stack:
; Bytes used: 2045/40960


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
; Ident ptrC2c_t
; Ident posicionPC2c
; Ident eliminarPC2c
; Ident ptrC2c
; Ident apilarPC2c
; Ident encolarPC2c
; Ident desencolarPC2c
; Ident inicializarPC2c
; Bytes used: 990/16384

; Next label number: 66
; Compilation succeeded.
