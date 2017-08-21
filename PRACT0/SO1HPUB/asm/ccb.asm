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
; glb callBack_t : * (
; prm     arg : * void
;     ) int
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
; glb descCcb_t : struct <something>
; glb ccb_t : * struct <something>
; glb inicCcb : (
; prm     ccb : * struct <something>
; prm     max : unsigned short
;     ) int
; glb encolarCcb : (
; prm     cb : * (
; prm         arg : * void
;         ) int
; prm     ccb : * struct <something>
;     ) int
; glb desencolarCcb : (
; prm     ccb : * struct <something>
;     ) * (
; prm     arg : * void
;     ) int
; glb eliminarCcb : (
; prm     cb : * (
; prm         arg : * void
;         ) int
; prm     ccb : * struct <something>
;     ) int
; glb eliminarSegCcb : (
; prm     segmento : unsigned short
; prm     ccb : * struct <something>
;     ) int
; glb vaciarCcb : (
; prm     ccb : * struct <something>
;     ) int
; glb atenderCcb : (
; prm     ccb : * struct <something>
;     ) int
; glb inicCcb : (
; prm     ccb : * struct <something>
; prm     max : unsigned short
;     ) int
section .text
	global	_inicCcb
_inicCcb:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     ccb : (@8): * struct <something>
; loc     max : (@12): unsigned short
; loc     i : (@-4): int
; if
; loc     <something> : * struct <something>
; RPN'ized expression: "ccb 0 (something5) == "
; Expanded expression: "(@8) *(4) 0 == "
; Fused expression:    "== *(@8) 0 IF! "
	mov	eax, [bp+8]
	cmp	eax, 0
	jne	L3
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1  "
	mov	eax, -1
	jmp	L1
L3:
; RPN'ized expression: "ccb max -> *u max = "
; Expanded expression: "(@8) *(4) 6 + (@12) *(2) =(2) "
; Fused expression:    "+ *(@8) 6 =(170) *ax *(@12) "
	mov	eax, [bp+8]
	add	eax, 6
	mov	ebx, eax
	mov	ax, [bp+12]
	movzx	eax, ax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "ccb num -> *u 0 = "
; Expanded expression: "(@8) *(4) 0 + 0 =(2) "
; Fused expression:    "+ *(@8) 0 =(172) *ax 0 "
	mov	eax, [bp+8]
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "ccb in -> *u 0 = "
; Expanded expression: "(@8) *(4) 2 + 0 =(2) "
; Fused expression:    "+ *(@8) 2 =(172) *ax 0 "
	mov	eax, [bp+8]
	add	eax, 2
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "ccb out -> *u 0 = "
; Expanded expression: "(@8) *(4) 4 + 0 =(2) "
; Fused expression:    "+ *(@8) 4 =(172) *ax 0 "
	mov	eax, [bp+8]
	add	eax, 4
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(4) "
; Fused expression:    "=(204) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], eax
L6:
; RPN'ized expression: "i max < "
; Expanded expression: "(@-4) *(4) (@12) *(2) < "
; Fused expression:    "< *(@-4) *(@12) IF! "
	mov	eax, [bp-4]
	movzx	ecx, word [bp+12]
	cmp	eax, ecx
	jge	L9
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(4) "
; loc     <something> : * (
; prm         arg : * void
;         ) int
; RPN'ized expression: "ccb callBack -> *u i + *u 0 (something10) = "
; Expanded expression: "(@8) *(4) 12 + (@-4) *(4) 4 * + 0 =(4) "
; Fused expression:    "+ *(@8) 12 push-ax * *(@-4) 4 + *sp ax =(204) *ax 0 "
	mov	eax, [bp+8]
	add	eax, 12
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 4
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
L7:
; Fused expression:    "++p(4) *(@-4) "
	mov	eax, [bp-4]
	inc	dword [bp-4]
	jmp	L6
L9:
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
L1:
	db	0x66
	leave
	retf
L11:

section .fxnsz noalloc
	dd	L11 - _inicCcb

; glb encolarCcb : (
; prm     cb : * (
; prm         arg : * void
;         ) int
; prm     ccb : * struct <something>
;     ) int
section .text
	global	_encolarCcb
_encolarCcb:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     cb : (@8): * (
; prm         arg : * void
;         ) int
; loc     ccb : (@12): * struct <something>
; if
; loc     <something> : * struct <something>
; RPN'ized expression: "ccb 0 (something16) == "
; Expanded expression: "(@12) *(4) 0 == "
; Fused expression:    "== *(@12) 0 IF! "
	mov	eax, [bp+12]
	cmp	eax, 0
	jne	L14
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1  "
	mov	eax, -1
	jmp	L12
L14:
; if
; loc     <something> : * (
; prm         arg : * void
;         ) int
; RPN'ized expression: "cb 0 (something19) == "
; Expanded expression: "(@8) *(4) 0 == "
; Fused expression:    "== *(@8) 0 IF! "
	mov	eax, [bp+8]
	cmp	eax, 0
	jne	L17
; return
; RPN'ized expression: "2 -u "
; Expanded expression: "-2 "
; Expression value: -2
; Fused expression:    "-2  "
	mov	eax, -2
	jmp	L12
L17:
; if
; RPN'ized expression: "ccb num -> *u ccb max -> *u >= "
; Expanded expression: "(@12) *(4) 0 + *(2) (@12) *(4) 6 + *(2) >= "
; Fused expression:    "+ *(@12) 0 push-ax + *(@12) 6 >= **sp *ax IF! "
	mov	eax, [bp+12]
	push	eax
	mov	eax, [bp+12]
	add	eax, 6
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	movzx	ecx, word [si]
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	cmp	eax, ecx
	jl	L20
; return
; RPN'ized expression: "3 -u "
; Expanded expression: "-3 "
; Expression value: -3
; Fused expression:    "-3  "
	mov	eax, -3
	jmp	L12
L20:
; RPN'ized expression: "ccb callBack -> *u ccb in -> *u + *u cb = "
; Expanded expression: "(@12) *(4) 12 + (@12) *(4) 2 + *(2) 4 * + (@8) *(4) =(4) "
; Fused expression:    "+ *(@12) 12 push-ax + *(@12) 2 * *ax 4 + *sp ax =(204) *ax *(@8) "
	mov	eax, [bp+12]
	add	eax, 12
	push	eax
	mov	eax, [bp+12]
	add	eax, 2
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	imul	eax, eax, 4
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	eax, [bp+8]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "ccb in -> *u ccb in -> *u 1 + ccb max -> *u % = "
; Expanded expression: "(@12) *(4) 2 + (@12) *(4) 2 + *(2) 1 + (@12) *(4) 6 + *(2) % =(2) "
; Fused expression:    "+ *(@12) 2 push-ax + *(@12) 2 + *ax 1 push-ax + *(@12) 6 % *sp *ax =(172) **sp ax "
	mov	eax, [bp+12]
	add	eax, 2
	push	eax
	mov	eax, [bp+12]
	add	eax, 2
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	inc	eax
	push	eax
	mov	eax, [bp+12]
	add	eax, 6
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	movzx	ecx, word [si]
	pop	eax
	cdq
	idiv	ecx
	mov	eax, edx
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "ccb num -> *u ++p "
; Expanded expression: "(@12) *(4) 0 + ++p(2) "
; Fused expression:    "+ *(@12) 0 ++p(2) *ax "
	mov	eax, [bp+12]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	inc	word [si]
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
L12:
	db	0x66
	leave
	retf
L22:

section .fxnsz
	dd	L22 - _encolarCcb

; glb desencolarCcb : (
; prm     ccb : * struct <something>
;     ) * (
; prm     arg : * void
;     ) int
section .text
	global	_desencolarCcb
_desencolarCcb:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     ccb : (@8): * struct <something>
; loc     cb : (@-4): * (
; prm         arg : * void
;         ) int
; if
; loc     <something> : * struct <something>
; RPN'ized expression: "ccb 0 (something27) == "
; Expanded expression: "(@8) *(4) 0 == "
; Fused expression:    "== *(@8) 0 IF! "
	mov	eax, [bp+8]
	cmp	eax, 0
	jne	L25
; return
; loc     <something> : * struct <something>
; RPN'ized expression: "0 (something28) "
; Expanded expression: "0 "
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L23
L25:
; if
; RPN'ized expression: "ccb num -> *u 0 == "
; Expanded expression: "(@8) *(4) 0 + *(2) 0 == "
; Fused expression:    "+ *(@8) 0 == *ax 0 IF! "
	mov	eax, [bp+8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	cmp	eax, 0
	jne	L29
; return
; loc     <something> : * (
; prm         arg : * void
;         ) int
; RPN'ized expression: "0 (something31) "
; Expanded expression: "0 "
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L23
L29:
; RPN'ized expression: "cb ccb callBack -> *u ccb out -> *u + *u = "
; Expanded expression: "(@-4) (@8) *(4) 12 + (@8) *(4) 4 + *(2) 4 * + *(4) =(4) "
; Fused expression:    "+ *(@8) 12 push-ax + *(@8) 4 * *ax 4 + *sp ax =(204) *(@-4) *ax "
	mov	eax, [bp+8]
	add	eax, 12
	push	eax
	mov	eax, [bp+8]
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	imul	eax, eax, 4
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-4], eax
; RPN'ized expression: "ccb out -> *u ccb out -> *u 1 + ccb max -> *u % = "
; Expanded expression: "(@8) *(4) 4 + (@8) *(4) 4 + *(2) 1 + (@8) *(4) 6 + *(2) % =(2) "
; Fused expression:    "+ *(@8) 4 push-ax + *(@8) 4 + *ax 1 push-ax + *(@8) 6 % *sp *ax =(172) **sp ax "
	mov	eax, [bp+8]
	add	eax, 4
	push	eax
	mov	eax, [bp+8]
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	inc	eax
	push	eax
	mov	eax, [bp+8]
	add	eax, 6
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	movzx	ecx, word [si]
	pop	eax
	cdq
	idiv	ecx
	mov	eax, edx
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "ccb num -> *u --p "
; Expanded expression: "(@8) *(4) 0 + --p(2) "
; Fused expression:    "+ *(@8) 0 --p(2) *ax "
	mov	eax, [bp+8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	dec	word [si]
; return
; RPN'ized expression: "cb "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
L23:
	db	0x66
	leave
	retf
L32:

section .fxnsz
	dd	L32 - _desencolarCcb

; glb eliminarCcb : (
; prm     cb : * (
; prm         arg : * void
;         ) int
; prm     ccb : * struct <something>
;     ) int
section .text
	global	_eliminarCcb
_eliminarCcb:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         12
; loc     cb : (@8): * (
; prm         arg : * void
;         ) int
; loc     ccb : (@12): * struct <something>
; loc     i : (@-4): int
; loc     ind : (@-8): int
; loc     num : (@-12): int
; if
; loc     <something> : * struct <something>
; RPN'ized expression: "ccb 0 (something37) == "
; Expanded expression: "(@12) *(4) 0 == "
; Fused expression:    "== *(@12) 0 IF! "
	mov	eax, [bp+12]
	cmp	eax, 0
	jne	L35
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1  "
	mov	eax, -1
	jmp	L33
L35:
; if
; loc     <something> : * (
; prm         arg : * void
;         ) int
; RPN'ized expression: "cb 0 (something40) == "
; Expanded expression: "(@8) *(4) 0 == "
; Fused expression:    "== *(@8) 0 IF! "
	mov	eax, [bp+8]
	cmp	eax, 0
	jne	L38
; return
; RPN'ized expression: "2 -u "
; Expanded expression: "-2 "
; Expression value: -2
; Fused expression:    "-2  "
	mov	eax, -2
	jmp	L33
L38:
; RPN'ized expression: "num ccb num -> *u = "
; Expanded expression: "(@-12) (@12) *(4) 0 + *(2) =(4) "
; Fused expression:    "+ *(@12) 0 =(202) *(@-12) *ax "
	mov	eax, [bp+12]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-12], eax
; if
; RPN'ized expression: "num 0 == "
; Expanded expression: "(@-12) *(4) 0 == "
; Fused expression:    "== *(@-12) 0 IF! "
	mov	eax, [bp-12]
	cmp	eax, 0
	jne	L41
; return
; RPN'ized expression: "3 -u "
; Expanded expression: "-3 "
; Expression value: -3
; Fused expression:    "-3  "
	mov	eax, -3
	jmp	L33
L41:
; RPN'ized expression: "ind ccb out -> *u = "
; Expanded expression: "(@-8) (@12) *(4) 4 + *(2) =(4) "
; Fused expression:    "+ *(@12) 4 =(202) *(@-8) *ax "
	mov	eax, [bp+12]
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-8], eax
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(4) "
; Fused expression:    "=(204) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], eax
L43:
; RPN'ized expression: "i num < "
; Expanded expression: "(@-4) *(4) (@-12) *(4) < "
; Fused expression:    "< *(@-4) *(@-12) IF! "
	mov	eax, [bp-4]
	cmp	eax, [bp-12]
	jge	L46
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(4) "
; {
; if
; RPN'ized expression: "ccb callBack -> *u ind + *u cb == "
; Expanded expression: "(@12) *(4) 12 + (@-8) *(4) 4 * + *(4) (@8) *(4) == "
; Fused expression:    "+ *(@12) 12 push-ax * *(@-8) 4 + *sp ax == *ax *(@8) IF! "
	mov	eax, [bp+12]
	add	eax, 12
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 4
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, [bp+8]
	jne	L47
; break
	jmp	L46
L47:
; RPN'ized expression: "ind ind 1 + ccb max -> *u % = "
; Expanded expression: "(@-8) (@-8) *(4) 1 + (@12) *(4) 6 + *(2) % =(4) "
; Fused expression:    "+ *(@-8) 1 push-ax + *(@12) 6 % *sp *ax =(204) *(@-8) ax "
	mov	eax, [bp-8]
	inc	eax
	push	eax
	mov	eax, [bp+12]
	add	eax, 6
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	movzx	ecx, word [si]
	pop	eax
	cdq
	idiv	ecx
	mov	eax, edx
	mov	[bp-8], eax
; }
L44:
; Fused expression:    "++p(4) *(@-4) "
	mov	eax, [bp-4]
	inc	dword [bp-4]
	jmp	L43
L46:
; if
; RPN'ized expression: "i num == "
; Expanded expression: "(@-4) *(4) (@-12) *(4) == "
; Fused expression:    "== *(@-4) *(@-12) IF! "
	mov	eax, [bp-4]
	cmp	eax, [bp-12]
	jne	L49
; return
; RPN'ized expression: "4 -u "
; Expanded expression: "-4 "
; Expression value: -4
; Fused expression:    "-4  "
	mov	eax, -4
	jmp	L33
L49:
; loc     <something> : * (
; prm         arg : * void
;         ) int
; RPN'ized expression: "ccb callBack -> *u ind + *u 0 (something51) = "
; Expanded expression: "(@12) *(4) 12 + (@-8) *(4) 4 * + 0 =(4) "
; Fused expression:    "+ *(@12) 12 push-ax * *(@-8) 4 + *sp ax =(204) *ax 0 "
	mov	eax, [bp+12]
	add	eax, 12
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 4
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; if
; RPN'ized expression: "ind ccb out -> *u == "
; Expanded expression: "(@-8) *(4) (@12) *(4) 4 + *(2) == "
; Fused expression:    "+ *(@12) 4 == *(@-8) *ax IF! "
	mov	eax, [bp+12]
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	movzx	ecx, word [si]
	mov	eax, [bp-8]
	cmp	eax, ecx
	jne	L52
; RPN'ized expression: "( ccb desencolarCcb ) "
; Expanded expression: " (@12) *(4)  desencolarCcb ()4 "
; Fused expression:    "( *(4) (@12) , desencolarCcb )4 "
	push	dword [bp+12]
	db	0x9A
section .relot
	dd	L54
section .text
L54:
	dd	_desencolarCcb
	sub	sp, -4
	jmp	L53
L52:
; else
; RPN'ized expression: "ccb callBack -> *u ind + *u ( ccb desencolarCcb ) = "
; Expanded expression: "(@12) *(4) 12 + (@-8) *(4) 4 * +  (@12) *(4)  desencolarCcb ()4 =(4) "
; Fused expression:    "+ *(@12) 12 push-ax * *(@-8) 4 + *sp ax push-ax ( *(4) (@12) , desencolarCcb )4 =(204) **sp ax "
	mov	eax, [bp+12]
	add	eax, 12
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 4
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	push	dword [bp+12]
	db	0x9A
section .relot
	dd	L55
section .text
L55:
	dd	_desencolarCcb
	sub	sp, -4
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
L53:
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
L33:
	db	0x66
	leave
	retf
L56:

section .fxnsz
	dd	L56 - _eliminarCcb

; glb eliminarSegCcb : (
; prm     segmento : unsigned short
; prm     ccb : * struct <something>
;     ) int
section .text
	global	_eliminarSegCcb
_eliminarSegCcb:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         12
; loc     segmento : (@8): unsigned short
; loc     ccb : (@12): * struct <something>
; loc     i : (@-4): int
; loc     ind : (@-8): int
; loc     num : (@-12): int
; if
; loc     <something> : * struct <something>
; RPN'ized expression: "ccb 0 (something61) == "
; Expanded expression: "(@12) *(4) 0 == "
; Fused expression:    "== *(@12) 0 IF! "
	mov	eax, [bp+12]
	cmp	eax, 0
	jne	L59
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1  "
	mov	eax, -1
	jmp	L57
L59:
; RPN'ized expression: "num ccb num -> *u = "
; Expanded expression: "(@-12) (@12) *(4) 0 + *(2) =(4) "
; Fused expression:    "+ *(@12) 0 =(202) *(@-12) *ax "
	mov	eax, [bp+12]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-12], eax
; if
; RPN'ized expression: "num 0 == "
; Expanded expression: "(@-12) *(4) 0 == "
; Fused expression:    "== *(@-12) 0 IF! "
	mov	eax, [bp-12]
	cmp	eax, 0
	jne	L62
; return
; RPN'ized expression: "2 -u "
; Expanded expression: "-2 "
; Expression value: -2
; Fused expression:    "-2  "
	mov	eax, -2
	jmp	L57
L62:
; RPN'ized expression: "ind ccb out -> *u = "
; Expanded expression: "(@-8) (@12) *(4) 4 + *(2) =(4) "
; Fused expression:    "+ *(@12) 4 =(202) *(@-8) *ax "
	mov	eax, [bp+12]
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-8], eax
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(4) "
; Fused expression:    "=(204) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], eax
L64:
; RPN'ized expression: "i num < "
; Expanded expression: "(@-4) *(4) (@-12) *(4) < "
; Fused expression:    "< *(@-4) *(@-12) IF! "
	mov	eax, [bp-4]
	cmp	eax, [bp-12]
	jge	L67
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(4) "
; {
; if
; loc         <something> : * unsigned char
; RPN'ized expression: "( ccb callBack -> *u ind + *u (something70) seg ) segmento == "
; Expanded expression: " (@12) *(4) 12 + (@-8) *(4) 4 * + *(4)  seg ()4 (@8) *(2) == "
; Fused expression:    "( + *(@12) 12 push-ax * *(@-8) 4 + *sp ax *(4) ax , seg )4 == ax *(@8) IF! "
	mov	eax, [bp+12]
	add	eax, 12
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 4
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L71
section .text
L71:
	dd	_seg
	sub	sp, -4
	movzx	ecx, word [bp+8]
	cmp	eax, ecx
	jne	L68
; break
	jmp	L67
L68:
; RPN'ized expression: "ind ind 1 + ccb max -> *u % = "
; Expanded expression: "(@-8) (@-8) *(4) 1 + (@12) *(4) 6 + *(2) % =(4) "
; Fused expression:    "+ *(@-8) 1 push-ax + *(@12) 6 % *sp *ax =(204) *(@-8) ax "
	mov	eax, [bp-8]
	inc	eax
	push	eax
	mov	eax, [bp+12]
	add	eax, 6
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	movzx	ecx, word [si]
	pop	eax
	cdq
	idiv	ecx
	mov	eax, edx
	mov	[bp-8], eax
; }
L65:
; Fused expression:    "++p(4) *(@-4) "
	mov	eax, [bp-4]
	inc	dword [bp-4]
	jmp	L64
L67:
; if
; RPN'ized expression: "i num == "
; Expanded expression: "(@-4) *(4) (@-12) *(4) == "
; Fused expression:    "== *(@-4) *(@-12) IF! "
	mov	eax, [bp-4]
	cmp	eax, [bp-12]
	jne	L72
; return
; RPN'ized expression: "3 -u "
; Expanded expression: "-3 "
; Expression value: -3
; Fused expression:    "-3  "
	mov	eax, -3
	jmp	L57
L72:
; loc     <something> : * (
; prm         arg : * void
;         ) int
; RPN'ized expression: "ccb callBack -> *u ind + *u 0 (something74) = "
; Expanded expression: "(@12) *(4) 12 + (@-8) *(4) 4 * + 0 =(4) "
; Fused expression:    "+ *(@12) 12 push-ax * *(@-8) 4 + *sp ax =(204) *ax 0 "
	mov	eax, [bp+12]
	add	eax, 12
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 4
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; if
; RPN'ized expression: "ind ccb out -> *u == "
; Expanded expression: "(@-8) *(4) (@12) *(4) 4 + *(2) == "
; Fused expression:    "+ *(@12) 4 == *(@-8) *ax IF! "
	mov	eax, [bp+12]
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	movzx	ecx, word [si]
	mov	eax, [bp-8]
	cmp	eax, ecx
	jne	L75
; RPN'ized expression: "( ccb desencolarCcb ) "
; Expanded expression: " (@12) *(4)  desencolarCcb ()4 "
; Fused expression:    "( *(4) (@12) , desencolarCcb )4 "
	push	dword [bp+12]
	db	0x9A
section .relot
	dd	L77
section .text
L77:
	dd	_desencolarCcb
	sub	sp, -4
	jmp	L76
L75:
; else
; RPN'ized expression: "ccb callBack -> *u ind + *u ( ccb desencolarCcb ) = "
; Expanded expression: "(@12) *(4) 12 + (@-8) *(4) 4 * +  (@12) *(4)  desencolarCcb ()4 =(4) "
; Fused expression:    "+ *(@12) 12 push-ax * *(@-8) 4 + *sp ax push-ax ( *(4) (@12) , desencolarCcb )4 =(204) **sp ax "
	mov	eax, [bp+12]
	add	eax, 12
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 4
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	push	dword [bp+12]
	db	0x9A
section .relot
	dd	L78
section .text
L78:
	dd	_desencolarCcb
	sub	sp, -4
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
L76:
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
L57:
	db	0x66
	leave
	retf
L79:

section .fxnsz
	dd	L79 - _eliminarSegCcb

; glb vaciarCcb : (
; prm     ccb : * struct <something>
;     ) int
section .text
	global	_vaciarCcb
_vaciarCcb:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     ccb : (@8): * struct <something>
; loc     i : (@-4): int
; if
; loc     <something> : * struct <something>
; RPN'ized expression: "ccb 0 (something84) == "
; Expanded expression: "(@8) *(4) 0 == "
; Fused expression:    "== *(@8) 0 IF! "
	mov	eax, [bp+8]
	cmp	eax, 0
	jne	L82
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1  "
	mov	eax, -1
	jmp	L80
L82:
; RPN'ized expression: "ccb num -> *u 0 = "
; Expanded expression: "(@8) *(4) 0 + 0 =(2) "
; Fused expression:    "+ *(@8) 0 =(172) *ax 0 "
	mov	eax, [bp+8]
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "ccb in -> *u 0 = "
; Expanded expression: "(@8) *(4) 2 + 0 =(2) "
; Fused expression:    "+ *(@8) 2 =(172) *ax 0 "
	mov	eax, [bp+8]
	add	eax, 2
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "ccb out -> *u 0 = "
; Expanded expression: "(@8) *(4) 4 + 0 =(2) "
; Fused expression:    "+ *(@8) 4 =(172) *ax 0 "
	mov	eax, [bp+8]
	add	eax, 4
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(4) "
; Fused expression:    "=(204) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], eax
L85:
; RPN'ized expression: "i ccb max -> *u < "
; Expanded expression: "(@-4) *(4) (@8) *(4) 6 + *(2) < "
; Fused expression:    "+ *(@8) 6 < *(@-4) *ax IF! "
	mov	eax, [bp+8]
	add	eax, 6
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	movzx	ecx, word [si]
	mov	eax, [bp-4]
	cmp	eax, ecx
	jge	L88
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(4) "
; loc     <something> : * (
; prm         arg : * void
;         ) int
; RPN'ized expression: "ccb callBack -> *u i + *u 0 (something89) = "
; Expanded expression: "(@8) *(4) 12 + (@-4) *(4) 4 * + 0 =(4) "
; Fused expression:    "+ *(@8) 12 push-ax * *(@-4) 4 + *sp ax =(204) *ax 0 "
	mov	eax, [bp+8]
	add	eax, 12
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 4
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
L86:
; Fused expression:    "++p(4) *(@-4) "
	mov	eax, [bp-4]
	inc	dword [bp-4]
	jmp	L85
L88:
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
L80:
	db	0x66
	leave
	retf
L90:

section .fxnsz
	dd	L90 - _vaciarCcb

; glb atenderCcb : (
; prm     ccb : * struct <something>
;     ) int
section .text
	global	_atenderCcb
_atenderCcb:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          8
; loc     ccb : (@8): * struct <something>
; loc     cb : (@-4): * (
; prm         arg : * void
;         ) int
; loc     num : (@-8): int
; if
; loc     <something> : * struct <something>
; RPN'ized expression: "ccb 0 (something95) == "
; Expanded expression: "(@8) *(4) 0 == "
; Fused expression:    "== *(@8) 0 IF! "
	mov	eax, [bp+8]
	cmp	eax, 0
	jne	L93
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1  "
	mov	eax, -1
	jmp	L91
L93:
; RPN'ized expression: "num ccb num -> *u = "
; Expanded expression: "(@-8) (@8) *(4) 0 + *(2) =(4) "
; Fused expression:    "+ *(@8) 0 =(202) *(@-8) *ax "
	mov	eax, [bp+8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-8], eax
; while
; RPN'ized expression: "num 0 > "
; Expanded expression: "(@-8) *(4) 0 > "
L96:
; Fused expression:    "> *(@-8) 0 IF! "
	mov	eax, [bp-8]
	cmp	eax, 0
	jle	L97
; {
; RPN'ized expression: "cb ( ccb desencolarCcb ) = "
; Expanded expression: "(@-4)  (@8) *(4)  desencolarCcb ()4 =(4) "
; Fused expression:    "( *(4) (@8) , desencolarCcb )4 =(204) *(@-4) ax "
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L98
section .text
L98:
	dd	_desencolarCcb
	sub	sp, -4
	mov	[bp-4], eax
; if
; loc         <something> : * (
; prm             arg : * void
;             ) int
; RPN'ized expression: "cb 0 (something101) == "
; Expanded expression: "(@-4) *(4) 0 == "
; Fused expression:    "== *(@-4) 0 IF! "
	mov	eax, [bp-4]
	cmp	eax, 0
	jne	L99
; return
; RPN'ized expression: "2 -u "
; Expanded expression: "-2 "
; Expression value: -2
; Fused expression:    "-2  "
	mov	eax, -2
	jmp	L91
L99:
; switch
; RPN'ized expression: "( ccb arg -> *u cb ) "
; Expanded expression: " (@8) *(4) 8 + *(4)  (@-4) *(4) ()4 "
; Fused expression:    "( + *(@8) 8 *(4) ax , *(4) (@-4) )4  "
	mov	eax, [bp+8]
	add	eax, 8
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	mov	eax, [bp-4]
	db	0x9A
section .relot
	dd	L104
section .text
L104:
	dd	L105
L105:
	mov	si, sp
	add	word [ss:si], L106 - L105
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L106:
	sub	sp, -4
	jmp	L103
; {
; case
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
L107:
; break
	jmp	L102
; case
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
L108:
; RPN'ized expression: "( ccb , cb encolarCcb ) "
; Expanded expression: " (@8) *(4)  (@-4) *(4)  encolarCcb ()8 "
; Fused expression:    "( *(4) (@8) , *(4) (@-4) , encolarCcb )8 "
	push	dword [bp+8]
	push	dword [bp-4]
	db	0x9A
section .relot
	dd	L109
section .text
L109:
	dd	_encolarCcb
	sub	sp, -8
; break
	jmp	L102
; default
L110:
; return
; RPN'ized expression: "3 -u "
; Expanded expression: "-3 "
; Expression value: -3
; Fused expression:    "-3  "
	mov	eax, -3
	jmp	L91
; }
	jmp	L102
L103:
	cmp	eax, 0
	je	L107
	cmp	eax, 1
	je	L108
	jmp	L110
L102:
; RPN'ized expression: "num --p "
; Expanded expression: "(@-8) --p(4) "
; Fused expression:    "--p(4) *(@-8) "
	mov	eax, [bp-8]
	dec	dword [bp-8]
cli
; }
	jmp	L96
L97:
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
L91:
	db	0x66
	leave
	retf
L111:

section .fxnsz
	dd	L111 - _atenderCcb


	extern	_seg

; Syntax/declaration table/stack:
; Bytes used: 1995/40960


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
; Ident callBack_t
; Ident arg
; Ident num
; Ident in
; Ident out
; Ident max
; Ident callBack
; Ident descCcb_t
; Ident ccb_t
; Ident inicCcb
; Ident ccb
; Ident encolarCcb
; Ident cb
; Ident desencolarCcb
; Ident eliminarCcb
; Ident eliminarSegCcb
; Ident segmento
; Ident vaciarCcb
; Ident atenderCcb
; Bytes used: 889/16384

; Next label number: 112
; Compilation succeeded.
