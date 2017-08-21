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
; glb HWLIST_t : unsigned short
; glb KBDFLAGS_t : unsigned short
; glb KBDSTATUS_t : unsigned short
; glb VIDEOCONTROL_t : unsigned char
; glb DRECSTATUS_t : unsigned char
; glb DMOTORSTATUS_t : unsigned char
; glb FDOPSTATUS_t : unsigned char
; glb VIDEOSWITCHES_t : unsigned char
; glb VGAOPTIONS_t : unsigned char
; glb VIDEOSAVETBL_t : struct <something>
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
; RPN'ized expression: "25 "
; Expanded expression: "25 "
; Expression value: 25
; RPN'ized expression: "20 "
; Expanded expression: "20 "
; Expression value: 20
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
; glb VIDEOPARAM_t : struct <something>
; RPN'ized expression: "256 "
; Expanded expression: "256 "
; Expression value: 256
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
; RPN'ized expression: "3 "
; Expanded expression: "3 "
; Expression value: 3
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; RPN'ized expression: "3 "
; Expanded expression: "3 "
; Expression value: 3
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
; RPN'ized expression: "68 "
; Expanded expression: "68 "
; Expression value: 68
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
; glb BIOSAREA_t : struct <something>
; glb ptrBiosArea : * struct <something>
; glb ptrFechaBios : * unsigned char
; glb ptrPant : * union <something>
section .bss
	alignb 4
_ptrPant:
	resb	4

; glb cursorOriginalF : unsigned char
section .bss
_cursorOriginalF:
	resb	1

; glb cursorOriginalC : unsigned char
section .bss
_cursorOriginalC:
	resb	1

; glb lineaOriginal1 : unsigned char
section .bss
_lineaOriginal1:
	resb	1

; glb lineaOriginal2 : unsigned char
section .bss
_lineaOriginal2:
	resb	1

; glb VIDEO_mode : unsigned char
section .bss
_VIDEO_mode:
	resb	1

; glb copiaDeLaPantallaOriginal : * union <something>
section .bss
	alignb 4
_copiaDeLaPantallaOriginal:
	resb	4

; glb segMemVideo : unsigned short
section .bss
	alignb 4
_segMemVideo:
	resb	2

; glb salvarPantallaInicial : (void) void
section .text
	global	_salvarPantallaInicial
_salvarPantallaInicial:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          8
; loc     F : (@-4): unsigned char
; loc     C : (@-8): unsigned char
; RPN'ized expression: "( lineaOriginal2 &u , lineaOriginal1 &u , cursorOriginalC &u , cursorOriginalF &u readXYBIOS ) "
; Expanded expression: " lineaOriginal2  lineaOriginal1  cursorOriginalC  cursorOriginalF  readXYBIOS ()16 "
; Fused expression:    "( lineaOriginal2 , lineaOriginal1 , cursorOriginalC , cursorOriginalF , readXYBIOS )16 "
section .relod
	dd	L3
section .text
	db	0x66, 0x68
L3:
	dd	_lineaOriginal2
section .relod
	dd	L4
section .text
	db	0x66, 0x68
L4:
	dd	_lineaOriginal1
section .relod
	dd	L5
section .text
	db	0x66, 0x68
L5:
	dd	_cursorOriginalC
section .relod
	dd	L6
section .text
	db	0x66, 0x68
L6:
	dd	_cursorOriginalF
	db	0x9A
section .relot
	dd	L7
section .text
L7:
	dd	_readXYBIOS
	sub	sp, -16
; RPN'ized expression: "VIDEO_mode ptrBiosArea VIDEO_mode -> *u = "
; Expanded expression: "VIDEO_mode ptrBiosArea *(4) 1097 + *(1) =(1) "
; Fused expression:    "VIDEO_mode push-ax ptrBiosArea + *ax 1097 =(153) **sp *ax "
section .relod
	dd	L8
section .text
	db	0x66, 0xB8
L8:
	dd	_VIDEO_mode
	push	eax
section .relod
	dd	L9
section .text
	db	0x66, 0xB8
L9:
	dd	_ptrBiosArea
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 1097
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
; if
; RPN'ized expression: "VIDEO_mode 7 != "
; Expanded expression: "VIDEO_mode *(1) 7 != "
; Fused expression:    "VIDEO_mode != *ax 7 IF! "
section .relod
	dd	L12
section .text
	db	0x66, 0xB8
L12:
	dd	_VIDEO_mode
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 7
	je	L10
; RPN'ized expression: "segMemVideo 47104 = "
; Expanded expression: "segMemVideo 47104 =(2) "
; Fused expression:    "segMemVideo =(172) *ax 47104 "
section .relod
	dd	L13
section .text
	db	0x66, 0xB8
L13:
	dd	_segMemVideo
	mov	ebx, eax
	mov	eax, 47104
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
	jmp	L11
L10:
; else
; RPN'ized expression: "segMemVideo 45056 = "
; Expanded expression: "segMemVideo 45056 =(2) "
; Fused expression:    "segMemVideo =(172) *ax 45056 "
section .relod
	dd	L14
section .text
	db	0x66, 0xB8
L14:
	dd	_segMemVideo
	mov	ebx, eax
	mov	eax, 45056
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
L11:
; loc     <something> : * union <something>
; RPN'ized expression: "ptrPant segMemVideo 4 << (something15) = "
; Expanded expression: "ptrPant segMemVideo *(2) 4 << =(4) "
; Fused expression:    "ptrPant push-ax segMemVideo << *ax 4 =(204) **sp ax "
section .relod
	dd	L16
section .text
	db	0x66, 0xB8
L16:
	dd	_ptrPant
	push	eax
section .relod
	dd	L17
section .text
	db	0x66, 0xB8
L17:
	dd	_segMemVideo
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	shl	eax, 4
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * union <something>
; RPN'ized expression: "copiaDeLaPantallaOriginal ptrPant t -> *u 50 + *u 0 + *u &u (something18) = "
; Expanded expression: "copiaDeLaPantallaOriginal ptrPant *(4) 8000 + =(4) "
; Fused expression:    "copiaDeLaPantallaOriginal push-ax ptrPant + *ax 8000 =(204) **sp ax "
section .relod
	dd	L19
section .text
	db	0x66, 0xB8
L19:
	dd	_copiaDeLaPantallaOriginal
	push	eax
section .relod
	dd	L20
section .text
	db	0x66, 0xB8
L20:
	dd	_ptrPant
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 8000
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "( 50 , copiaDeLaPantallaOriginal , ptrPant copiarPantalla ) "
; Expanded expression: " 50  copiaDeLaPantallaOriginal *(4)  ptrPant *(4)  copiarPantalla ()12 "
; Fused expression:    "( 50 , copiaDeLaPantallaOriginal *(4) ax , ptrPant *(4) ax , copiarPantalla )12 "
	push	dword 50
section .relod
	dd	L21
section .text
	db	0x66, 0xB8
L21:
	dd	_copiaDeLaPantallaOriginal
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
section .relod
	dd	L22
section .text
	db	0x66, 0xB8
L22:
	dd	_ptrPant
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L23
section .text
L23:
	dd	_copiarPantalla
	sub	sp, -12
; for
; RPN'ized expression: "F 0 = "
; Expanded expression: "(@-4) 0 =(1) "
; Fused expression:    "=(156) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], al
	movzx	eax, al
L24:
; RPN'ized expression: "F 50 < "
; Expanded expression: "(@-4) *(1) 50 < "
; Fused expression:    "< *(@-4) 50 IF! "
	mov	al, [bp-4]
	movzx	eax, al
	cmp	eax, 50
	jge	L27
; RPN'ized expression: "F ++p "
; Expanded expression: "(@-4) ++p(1) "
; for
; RPN'ized expression: "C 0 = "
; Expanded expression: "(@-8) 0 =(1) "
; Fused expression:    "=(156) *(@-8) 0 "
	mov	eax, 0
	mov	[bp-8], al
	movzx	eax, al
L28:
; RPN'ized expression: "C 80 < "
; Expanded expression: "(@-8) *(1) 80 < "
; Fused expression:    "< *(@-8) 80 IF! "
	mov	al, [bp-8]
	movzx	eax, al
	cmp	eax, 80
	jge	L31
; RPN'ized expression: "C ++p "
; Expanded expression: "(@-8) ++p(1) "
; RPN'ized expression: "ptrPant t -> *u F + *u C + *u &u atr -> *u 7 = "
; Expanded expression: "ptrPant *(4) 0 + (@-4) *(1) 160 * + (@-8) *(1) 2 * + 1 + 7 =(1) "
; Fused expression:    "ptrPant + *ax 0 push-ax * *(@-4) 160 + *sp ax push-ax * *(@-8) 2 + *sp ax + ax 1 =(156) *ax 7 "
section .relod
	dd	L32
section .text
	db	0x66, 0xB8
L32:
	dd	_ptrPant
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
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
	inc	eax
	mov	ebx, eax
	mov	eax, 7
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
L29:
; Fused expression:    "++p(1) *(@-8) "
	mov	al, [bp-8]
	movzx	eax, al
	inc	byte [bp-8]
	jmp	L28
L31:
L25:
; Fused expression:    "++p(1) *(@-4) "
	mov	al, [bp-4]
	movzx	eax, al
	inc	byte [bp-4]
	jmp	L24
L27:
L1:
	db	0x66
	leave
	retf
L33:

section .fxnsz noalloc
	dd	L33 - _salvarPantallaInicial

; glb restaurarPantallaInicial : (void) void
section .text
	global	_restaurarPantallaInicial
_restaurarPantallaInicial:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; RPN'ized expression: "( 50 , ptrPant , copiaDeLaPantallaOriginal copiarPantalla ) "
; Expanded expression: " 50  ptrPant *(4)  copiaDeLaPantallaOriginal *(4)  copiarPantalla ()12 "
; Fused expression:    "( 50 , ptrPant *(4) ax , copiaDeLaPantallaOriginal *(4) ax , copiarPantalla )12 "
	push	dword 50
section .relod
	dd	L36
section .text
	db	0x66, 0xB8
L36:
	dd	_ptrPant
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
section .relod
	dd	L37
section .text
	db	0x66, 0xB8
L37:
	dd	_copiaDeLaPantallaOriginal
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L38
section .text
L38:
	dd	_copiarPantalla
	sub	sp, -12
; RPN'ized expression: "( cursorOriginalC , cursorOriginalF goToXYBIOS ) "
; Expanded expression: " cursorOriginalC *(1)  cursorOriginalF *(1)  goToXYBIOS ()8 "
; Fused expression:    "( cursorOriginalC *(1) ax , cursorOriginalF *(1) ax , goToXYBIOS )8 "
section .relod
	dd	L39
section .text
	db	0x66, 0xB8
L39:
	dd	_cursorOriginalC
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	push	eax
section .relod
	dd	L40
section .text
	db	0x66, 0xB8
L40:
	dd	_cursorOriginalF
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	push	eax
	db	0x9A
section .relot
	dd	L41
section .text
L41:
	dd	_goToXYBIOS
	sub	sp, -8
L34:
	db	0x66
	leave
	retf
L42:

section .fxnsz
	dd	L42 - _restaurarPantallaInicial


	extern	_readXYBIOS
	extern	_ptrBiosArea
	extern	_copiarPantalla
	extern	_goToXYBIOS

; Syntax/declaration table/stack:
; Bytes used: 5160/40960


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
; Ident tipoOrdenador
; Ident rebootLegacy
; Ident tipoTeclado
; Ident leerTeclaBIOS
; Ident leerTeclaExtBIOS
; Ident teclaListaBIOS
; Ident leerTeclaListaBDA
; Ident teclaListaBDA
; Ident printCarBIOS
; Ident printCarPagBIOS
; Ident pag
; Ident printCarAtrPagBIOS
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
; Ident HWLIST_t
; Ident KBDFLAGS_t
; Ident KBDSTATUS_t
; Ident VIDEOCONTROL_t
; Ident DRECSTATUS_t
; Ident DMOTORSTATUS_t
; Ident FDOPSTATUS_t
; Ident VIDEOSWITCHES_t
; Ident VGAOPTIONS_t
; Ident VIDEO_paramtbl
; Ident VIDEO_dynsavearea
; Ident VIDEO_text_charset
; Ident VIDEO_graph_charset
; Ident VIDEO_savetbl2
; Ident VIDEOSAVETBL_t
; Ident VPARAM_width
; Ident VPARAM_height
; Ident VPARAM_hchar
; Ident VPARAM_pagesize
; Ident VPARAM_SEQC
; Ident VPARAM_MISC
; Ident VPARAM_CRTC
; Ident VPARAM_ATC
; Ident VPARAM_GRC
; Ident VIDEOPARAM_t
; Ident IVT
; Ident COM_base
; Ident LPT_base
; Ident XBDA_seg
; Ident HW_list
; Ident relleno1
; Ident basemem_K
; Ident relleno2
; Ident KBD_flags
; Ident relleno3
; Ident KBD_bufhead
; Ident KBD_buftail
; Ident KBD_buffer
; Ident dRecStatus
; Ident dMotorStatus
; Ident motorShutoffCounter
; Ident fdOpStatus
; Ident relleno4
; Ident VIDEO_mode
; Ident VIDEO_width
; Ident VIDEO_pagesize
; Ident VIDEO_pageoff
; Ident CURSOR_pos
; Ident CURSOR_shape
; Ident VIDEO_pagActiva
; Ident CRTC_base
; Ident CRT_MODE
; Ident CRT_PALETTE
; Ident relleno5
; Ident BIOS_timer
; Ident BIOS_overflow
; Ident BIOS_ctrlbreak
; Ident BIOS_POSTreset
; Ident relleno6
; Ident BIOS_HD_cnt
; Ident relleno7
; Ident LPT_timeout
; Ident BIOS_4B_flags
; Ident COM_timeout
; Ident KBD_start
; Ident KBD_end1
; Ident VIDEO_lastrow
; Ident VIDEO_hchar
; Ident VIDEO_control
; Ident VIDEO_switches
; Ident VGA_options
; Ident VGA_DCC_index
; Ident relleno8
; Ident KBD_status
; Ident TIMER_waitflag
; Ident TIMER_waitmks
; Ident TIMER_active
; Ident relleno9
; Ident VIDEO_ptrtable
; Ident relleno10
; Ident IAC
; Ident BIOSAREA_t
; Ident ptrBiosArea
; Ident ptrFechaBios
; Ident ptrPant
; Ident cursorOriginalF
; Ident cursorOriginalC
; Ident lineaOriginal1
; Ident lineaOriginal2
; Ident copiaDeLaPantallaOriginal
; Ident segMemVideo
; Ident salvarPantallaInicial
; Ident restaurarPantallaInicial
; Bytes used: 3050/16384

; Next label number: 43
; Compilation succeeded.
