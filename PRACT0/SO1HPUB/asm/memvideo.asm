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
; glb tipoOrdenador : (void) unsigned char
; glb rebootLegacy : (void) void
; glb tipoTeclado : (void) unsigned char
; glb leerTeclaBIOS : (void) unsigned short
; glb leerTeclaExtBIOS : (void) unsigned short
; glb teclaListaBIOS : (void) unsigned short
; glb leerTeclaListaBDA : (void) unsigned short
; glb teclaListaBDA : (void) unsigned short
; glb printCarBIOS : (
; prm     car : char
;     ) int
; glb printCarPagBIOS : (
; prm     car : char
; prm     pag : unsigned char
;     ) int
; glb printCarAtrPagBIOS : (
; prm     car : char
; prm     atr : unsigned char
; prm     pag : unsigned char
;     ) int
; glb printLnBIOS : (void) int
; glb printStrBIOS : (
; prm     str : * char
;     ) int
; glb printStrHastaBIOS : (
; prm     str : * char
; prm     n : unsigned short
; prm     lleno : int
;     ) int
; glb printDecBIOS : (
; prm     num : unsigned short
; prm     l : unsigned short
;     ) int
; glb printLDecBIOS : (
; prm     num : unsigned
; prm     l : unsigned short
;     ) int
; glb printIntBIOS : (
; prm     num : short
; prm     l : unsigned short
;     ) int
; glb printLIntBIOS : (
; prm     num : int
; prm     l : unsigned short
;     ) int
; glb printHexBIOS : (
; prm     num : unsigned short
; prm     l : unsigned short
;     ) int
; glb printLHexBIOS : (
; prm     num : unsigned
; prm     l : unsigned short
;     ) int
; glb printBinBIOS : (
; prm     num : unsigned short
; prm     l : unsigned short
;     ) int
; glb printLBinBIOS : (
; prm     num : unsigned
; prm     l : unsigned short
;     ) int
; glb printPtrBIOS : (
; prm     ptr : * unsigned char
;     ) int
; glb printByteBIOS : (
; prm     b : unsigned char
;     ) int
; glb printWordBIOS : (
; prm     w : unsigned short
;     ) int
; glb printCadBIOS : (
; prm     cad : * char
;     ) int
; glb esperarTicsBIOS : (
; prm     tics : unsigned short
;     ) void
; glb modoDeVideo : (void) unsigned char
; glb establecerModoDeVideo : (
; prm     modo : unsigned char
;     ) void
; glb paginaActiva : (void) unsigned char
; glb establecerPaginaActiva : (
; prm     num : unsigned char
;     ) void
; glb numPagsVideo : (void) unsigned char
; glb scrollPagBDA : (
; prm     numLineas : unsigned char
; prm     pag : unsigned char
;     ) void
; glb scrollPagBIOS : (
; prm     numLineas : unsigned char
; prm     pag : unsigned char
;     ) void
; glb scrollBIOS : (
; prm     numLineas : unsigned char
;     ) void
; glb goToXYPag : (
; prm     fila : unsigned char
; prm     columna : unsigned char
; prm     pag : unsigned char
;     ) void
; glb goToXYBIOS : (
; prm     fila : unsigned char
; prm     columna : unsigned char
;     ) void
; glb setCursorBIOS : (
; prm     linea1 : unsigned char
; prm     linea2 : unsigned char
;     ) void
; glb ocultaCursorBIOS : (void) void
; glb readXYPagBIOS : (
; prm     fila : * unsigned char
; prm     columna : * unsigned char
; prm     linea1 : * unsigned char
; prm     linea2 : * unsigned char
; prm     pag : unsigned char
;     ) void
; glb readXYBIOS : (
; prm     fila : * unsigned char
; prm     columna : * unsigned char
; prm     linea1 : * unsigned char
; prm     linea2 : * unsigned char
;     ) void
; glb memBIOS : (void) unsigned short
; glb enviarBIOS : (
; prm     car : char
;     ) void
; glb recibirBIOS : (void) char
; glb hayApmBIOS : (
; prm     version : * unsigned short
;     ) int
; glb connectApmBIOS : (void) int
; glb disconnectApmBIOS : (void) int
; glb cpuIdleBIOS : (void) void
; glb cpuBusyBIOS : (void) void
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
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
; RPN'ized expression: "48 "
; Expanded expression: "48 "
; Expression value: 48
; glb tipoAdaptador_t : int
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
; RPN'ized expression: "14 "
; Expanded expression: "14 "
; Expression value: 14
; glb fontSize_t : int
; glb numFilas : unsigned char
; glb numColumnas : unsigned char
; glb ptrPant : * union <something>
; glb tipoAdaptador : int
; glb redimensionable : int
; glb fontSize : unsigned char
; glb visibilidad : unsigned char
; glb inicBiosCrt : (void) void
; glb finBiosCrt : (void) void
; glb getFontSize : (void) int
; glb getFilas : (void) unsigned char
; glb comprobarAdaptador : (
; prm     tipoAdaptador : int
;     ) int
; glb tipoDeAdaptador : (void) int
; glb setCursorVisibilidad : (
; prm     valorDeVisibilidad : int
;     ) unsigned char
; glb setFontSize : (
; prm     size : int
;     ) void
; glb set25x80 : (void) void
; glb redimensionar : (
; prm     nFilas : unsigned char
; prm     nCols : unsigned char
;     ) void
; glb cursorF : unsigned char
section .bss
	global	_cursorF
_cursorF:
	resb	1

; glb cursorC : unsigned char
section .bss
	global	_cursorC
_cursorC:
	resb	1

; glb inicMemVideo : (void) void
section .text
	global	_inicMemVideo
_inicMemVideo:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; RPN'ized expression: "( inicBiosCrt ) "
; Expanded expression: " inicBiosCrt ()0 "
; Fused expression:    "( inicBiosCrt )0 "
	db	0x9A
section .relot
	dd	L3
section .text
L3:
	dd	_inicBiosCrt
L1:
	db	0x66
	leave
	retf
L4:

section .fxnsz noalloc
	dd	L4 - _inicMemVideo

; glb finMemVideo : (void) int
section .text
	global	_finMemVideo
_finMemVideo:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
L5:
	db	0x66
	leave
	retf
L7:

section .fxnsz
	dd	L7 - _finMemVideo

; glb goToXYVideo : (
; prm     F : unsigned char
; prm     C : unsigned char
;     ) void
section .text
	global	_goToXYVideo
_goToXYVideo:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     F : (@8): unsigned char
; loc     C : (@12): unsigned char
; RPN'ized expression: "cursorF F = "
; Expanded expression: "cursorF (@8) *(1) =(1) "
; Fused expression:    "cursorF =(153) *ax *(@8) "
section .relod
	dd	L10
section .text
	db	0x66, 0xB8
L10:
	dd	_cursorF
	mov	ebx, eax
	mov	al, [bp+8]
	movzx	eax, al
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; RPN'ized expression: "cursorC C = "
; Expanded expression: "cursorC (@12) *(1) =(1) "
; Fused expression:    "cursorC =(153) *ax *(@12) "
section .relod
	dd	L11
section .text
	db	0x66, 0xB8
L11:
	dd	_cursorC
	mov	ebx, eax
	mov	al, [bp+12]
	movzx	eax, al
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
L8:
	db	0x66
	leave
	retf
L12:

section .fxnsz
	dd	L12 - _goToXYVideo

; glb printCarVideo : (
; prm     car : char
;     ) int
section .text
	global	_printCarVideo
_printCarVideo:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     car : (@8): char
; switch
; RPN'ized expression: "car "
; Expanded expression: "(@8) *(-1) "
; Fused expression:    "*(-1) (@8)  "
	mov	al, [bp+8]
	movsx	eax, al
	jmp	L16
; {
; case
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
L17:
; RPN'ized expression: "( numFilas , ptrPant borrarCPantalla ) "
; Expanded expression: " numFilas *(1)  ptrPant *(4)  borrarCPantalla ()8 "
; Fused expression:    "( numFilas *(1) ax , ptrPant *(4) ax , borrarCPantalla )8 "
section .relod
	dd	L18
section .text
	db	0x66, 0xB8
L18:
	dd	_numFilas
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	push	eax
section .relod
	dd	L19
section .text
	db	0x66, 0xB8
L19:
	dd	_ptrPant
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L20
section .text
L20:
	dd	_borrarCPantalla
	sub	sp, -8
; RPN'ized expression: "cursorF 0 = "
; Expanded expression: "cursorF 0 =(1) "
; Fused expression:    "cursorF =(156) *ax 0 "
section .relod
	dd	L21
section .text
	db	0x66, 0xB8
L21:
	dd	_cursorF
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; RPN'ized expression: "cursorC 0 = "
; Expanded expression: "cursorC 0 =(1) "
; Fused expression:    "cursorC =(156) *ax 0 "
section .relod
	dd	L22
section .text
	db	0x66, 0xB8
L22:
	dd	_cursorC
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; break
	jmp	L15
; case
; RPN'ized expression: "13 "
; Expanded expression: "13 "
; Expression value: 13
L23:
; RPN'ized expression: "cursorC 0 = "
; Expanded expression: "cursorC 0 =(1) "
; Fused expression:    "cursorC =(156) *ax 0 "
section .relod
	dd	L24
section .text
	db	0x66, 0xB8
L24:
	dd	_cursorC
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; break
	jmp	L15
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
L25:
; if
; RPN'ized expression: "cursorF ++ numFilas == "
; Expanded expression: "cursorF ++(1) numFilas *(1) == "
; Fused expression:    "cursorF ++(1) *ax push-ax numFilas == *sp *ax IF! "
section .relod
	dd	L28
section .text
	db	0x66, 0xB8
L28:
	dd	_cursorF
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	inc	byte [si]
	mov	al, [si]
	movzx	eax, al
	push	eax
section .relod
	dd	L29
section .text
	db	0x66, 0xB8
L29:
	dd	_numFilas
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	movzx	ecx, byte [si]
	pop	eax
	cmp	eax, ecx
	jne	L26
; {
; RPN'ized expression: "( numFilas , ptrPant scrollCPantalla ) "
; Expanded expression: " numFilas *(1)  ptrPant *(4)  scrollCPantalla ()8 "
; Fused expression:    "( numFilas *(1) ax , ptrPant *(4) ax , scrollCPantalla )8 "
section .relod
	dd	L30
section .text
	db	0x66, 0xB8
L30:
	dd	_numFilas
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	push	eax
section .relod
	dd	L31
section .text
	db	0x66, 0xB8
L31:
	dd	_ptrPant
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L32
section .text
L32:
	dd	_scrollCPantalla
	sub	sp, -8
; RPN'ized expression: "cursorF numFilas 1 - = "
; Expanded expression: "cursorF numFilas *(1) 1 - =(1) "
; Fused expression:    "cursorF push-ax numFilas - *ax 1 =(156) **sp ax "
section .relod
	dd	L33
section .text
	db	0x66, 0xB8
L33:
	dd	_cursorF
	push	eax
section .relod
	dd	L34
section .text
	db	0x66, 0xB8
L34:
	dd	_numFilas
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	dec	eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; }
L26:
; break
	jmp	L15
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
L35:
; if
; RPN'ized expression: "cursorC 0 > "
; Expanded expression: "cursorC *(1) 0 > "
; Fused expression:    "cursorC > *ax 0 IF! "
section .relod
	dd	L38
section .text
	db	0x66, 0xB8
L38:
	dd	_cursorC
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 0
	jle	L36
; {
; RPN'ized expression: "cursorC --p "
; Expanded expression: "cursorC --p(1) "
; Fused expression:    "cursorC --p(1) *ax "
section .relod
	dd	L39
section .text
	db	0x66, 0xB8
L39:
	dd	_cursorC
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	dec	byte [si]
; RPN'ized expression: "ptrPant t -> *u cursorF + *u cursorC + *u &u car -> *u 32 = "
; Expanded expression: "ptrPant *(4) 0 + cursorF *(1) 160 * + cursorC *(1) 2 * + 0 + 32 =(1) "
; Fused expression:    "ptrPant + *ax 0 push-ax cursorF * *ax 160 + *sp ax push-ax cursorC * *ax 2 + *sp ax + ax 0 =(156) *ax 32 "
section .relod
	dd	L40
section .text
	db	0x66, 0xB8
L40:
	dd	_ptrPant
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	push	eax
section .relod
	dd	L41
section .text
	db	0x66, 0xB8
L41:
	dd	_cursorF
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	imul	eax, eax, 160
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
section .relod
	dd	L42
section .text
	db	0x66, 0xB8
L42:
	dd	_cursorC
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
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
; }
	jmp	L37
L36:
; else
; RPN'ized expression: "( 7 printCarBIOS ) "
; Expanded expression: " 7  printCarBIOS ()4 "
; Fused expression:    "( 7 , printCarBIOS )4 "
	push	dword 7
	db	0x9A
section .relot
	dd	L43
section .text
L43:
	dd	_printCarBIOS
	sub	sp, -4
L37:
; break
	jmp	L15
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
L44:
; RPN'ized expression: "car 32 = "
; Expanded expression: "(@8) 32 =(-1) "
; Fused expression:    "=(124) *(@8) 32 "
	mov	eax, 32
	mov	[bp+8], al
	movsx	eax, al
; break
	jmp	L15
; case
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
L45:
; RPN'ized expression: "( 7 printCarBIOS ) "
; Expanded expression: " 7  printCarBIOS ()4 "
; Fused expression:    "( 7 , printCarBIOS )4 "
	push	dword 7
	db	0x9A
section .relot
	dd	L46
section .text
L46:
	dd	_printCarBIOS
	sub	sp, -4
; break
	jmp	L15
; default
L47:
; RPN'ized expression: "ptrPant t -> *u cursorF + *u cursorC + *u &u car -> *u car = "
; Expanded expression: "ptrPant *(4) 0 + cursorF *(1) 160 * + cursorC *(1) 2 * + 0 + (@8) *(-1) =(1) "
; Fused expression:    "ptrPant + *ax 0 push-ax cursorF * *ax 160 + *sp ax push-ax cursorC * *ax 2 + *sp ax + ax 0 =(151) *ax *(@8) "
section .relod
	dd	L48
section .text
	db	0x66, 0xB8
L48:
	dd	_ptrPant
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	push	eax
section .relod
	dd	L49
section .text
	db	0x66, 0xB8
L49:
	dd	_cursorF
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	imul	eax, eax, 160
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
section .relod
	dd	L50
section .text
	db	0x66, 0xB8
L50:
	dd	_cursorC
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	imul	eax, eax, 2
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	al, [bp+8]
	movsx	eax, al
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; if
; RPN'ized expression: "cursorC ++ 80 == "
; Expanded expression: "cursorC ++(1) 80 == "
; Fused expression:    "cursorC ++(1) *ax == ax 80 IF! "
section .relod
	dd	L53
section .text
	db	0x66, 0xB8
L53:
	dd	_cursorC
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	inc	byte [si]
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 80
	jne	L51
; {
; RPN'ized expression: "cursorC 0 = "
; Expanded expression: "cursorC 0 =(1) "
; Fused expression:    "cursorC =(156) *ax 0 "
section .relod
	dd	L54
section .text
	db	0x66, 0xB8
L54:
	dd	_cursorC
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; if
; RPN'ized expression: "cursorF ++ numFilas == "
; Expanded expression: "cursorF ++(1) numFilas *(1) == "
; Fused expression:    "cursorF ++(1) *ax push-ax numFilas == *sp *ax IF! "
section .relod
	dd	L57
section .text
	db	0x66, 0xB8
L57:
	dd	_cursorF
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	inc	byte [si]
	mov	al, [si]
	movzx	eax, al
	push	eax
section .relod
	dd	L58
section .text
	db	0x66, 0xB8
L58:
	dd	_numFilas
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	movzx	ecx, byte [si]
	pop	eax
	cmp	eax, ecx
	jne	L55
; {
; RPN'ized expression: "( numFilas , ptrPant scrollCPantalla ) "
; Expanded expression: " numFilas *(1)  ptrPant *(4)  scrollCPantalla ()8 "
; Fused expression:    "( numFilas *(1) ax , ptrPant *(4) ax , scrollCPantalla )8 "
section .relod
	dd	L59
section .text
	db	0x66, 0xB8
L59:
	dd	_numFilas
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	push	eax
section .relod
	dd	L60
section .text
	db	0x66, 0xB8
L60:
	dd	_ptrPant
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L61
section .text
L61:
	dd	_scrollCPantalla
	sub	sp, -8
; RPN'ized expression: "cursorF numFilas 1 - = "
; Expanded expression: "cursorF numFilas *(1) 1 - =(1) "
; Fused expression:    "cursorF push-ax numFilas - *ax 1 =(156) **sp ax "
section .relod
	dd	L62
section .text
	db	0x66, 0xB8
L62:
	dd	_cursorF
	push	eax
section .relod
	dd	L63
section .text
	db	0x66, 0xB8
L63:
	dd	_numFilas
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	dec	eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; }
L55:
; }
L51:
; }
	jmp	L15
L16:
	cmp	eax, 12
	je	L17
	cmp	eax, 13
	je	L23
	cmp	eax, 10
	je	L25
	cmp	eax, 8
	je	L35
	cmp	eax, 9
	je	L44
	cmp	eax, 7
	je	L45
	jmp	L47
L15:
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
L13:
	db	0x66
	leave
	retf
L64:

section .fxnsz
	dd	L64 - _printCarVideo


	extern	_inicBiosCrt
	extern	_numFilas
	extern	_ptrPant
	extern	_borrarCPantalla
	extern	_scrollCPantalla
	extern	_printCarBIOS

; Syntax/declaration table/stack:
; Bytes used: 4110/40960


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
; Ident tipoOrdenador
; Ident rebootLegacy
; Ident tipoTeclado
; Ident leerTeclaBIOS
; Ident leerTeclaExtBIOS
; Ident teclaListaBIOS
; Ident leerTeclaListaBDA
; Ident teclaListaBDA
; Ident printCarBIOS
; Ident car
; Ident printCarPagBIOS
; Ident pag
; Ident printCarAtrPagBIOS
; Ident atr
; Ident printLnBIOS
; Ident printStrBIOS
; Ident str
; Ident printStrHastaBIOS
; Ident n
; Ident lleno
; Ident printDecBIOS
; Ident num
; Ident l
; Ident printLDecBIOS
; Ident printIntBIOS
; Ident printLIntBIOS
; Ident printHexBIOS
; Ident printLHexBIOS
; Ident printBinBIOS
; Ident printLBinBIOS
; Ident printPtrBIOS
; Ident printByteBIOS
; Ident b
; Ident printWordBIOS
; Ident w
; Ident printCadBIOS
; Ident cad
; Ident esperarTicsBIOS
; Ident tics
; Ident modoDeVideo
; Ident establecerModoDeVideo
; Ident modo
; Ident paginaActiva
; Ident establecerPaginaActiva
; Ident numPagsVideo
; Ident scrollPagBDA
; Ident numLineas
; Ident scrollPagBIOS
; Ident scrollBIOS
; Ident goToXYPag
; Ident fila
; Ident columna
; Ident goToXYBIOS
; Ident setCursorBIOS
; Ident linea1
; Ident linea2
; Ident ocultaCursorBIOS
; Ident readXYPagBIOS
; Ident readXYBIOS
; Ident memBIOS
; Ident enviarBIOS
; Ident recibirBIOS
; Ident hayApmBIOS
; Ident version
; Ident connectApmBIOS
; Ident disconnectApmBIOS
; Ident cpuIdleBIOS
; Ident cpuBusyBIOS
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
; Ident _NONE
; Ident _MDA
; Ident _CGA
; Ident _EGACOLOR
; Ident _EGAMONO
; Ident _VGACOLOR
; Ident _VGAMONO
; Ident _MCGACOLOR
; Ident _MCGAMONO
; Ident _MDS_GENIUS
; Ident tipoAdaptador_t
; Ident _FONT08
; Ident _FONT14
; Ident _FONT15
; Ident _FONT16
; Ident fontSize_t
; Ident numColumnas
; Ident ptrPant
; Ident tipoAdaptador
; Ident redimensionable
; Ident fontSize
; Ident visibilidad
; Ident inicBiosCrt
; Ident finBiosCrt
; Ident getFontSize
; Ident getFilas
; Ident comprobarAdaptador
; Ident tipoDeAdaptador
; Ident setCursorVisibilidad
; Ident valorDeVisibilidad
; Ident setFontSize
; Ident size
; Ident set25x80
; Ident redimensionar
; Ident nFilas
; Ident nCols
; Ident cursorF
; Ident cursorC
; Ident inicMemVideo
; Ident finMemVideo
; Ident goToXYVideo
; Ident F
; Ident C
; Ident printCarVideo
; Bytes used: 2284/16384

; Next label number: 65
; Compilation succeeded.
