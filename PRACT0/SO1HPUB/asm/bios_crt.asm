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
; glb numFilas : unsigned char
section .bss
	global	_numFilas
_numFilas:
	resb	1

; glb numColumnas : unsigned char
section .bss
	global	_numColumnas
_numColumnas:
	resb	1

; glb ptrPant : * union <something>
section .bss
	alignb 4
	global	_ptrPant
_ptrPant:
	resb	4

; glb tipoAdaptador : int
section .bss
	alignb 4
	global	_tipoAdaptador
_tipoAdaptador:
	resb	4

; glb enColor : int
section .bss
	alignb 4
_enColor:
	resb	4

; glb videoDirecto : int
section .bss
	alignb 4
_videoDirecto:
	resb	4

; glb redimensionable : int
section .bss
	alignb 4
	global	_redimensionable
_redimensionable:
	resb	4

; glb adaptadorNoFiable : int
section .bss
	alignb 4
_adaptadorNoFiable:
	resb	4

; glb fontSize : unsigned char
section .bss
	global	_fontSize
_fontSize:
	resb	1

; glb visibilidad : unsigned char
section .data
	global	_visibilidad
_visibilidad:
; =
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
	db	1

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

; glb numFilasOriginal : unsigned char
section .bss
_numFilasOriginal:
	resb	1

; glb numColumnasOriginal : unsigned char
section .bss
_numColumnasOriginal:
	resb	1

; glb fontSizeOriginal : unsigned char
section .bss
_fontSizeOriginal:
	resb	1

; glb VIDEO_mode : unsigned char
section .bss
_VIDEO_mode:
	resb	1

; glb VIDEO_pagesize : unsigned short
section .bss
	alignb 4
_VIDEO_pagesize:
	resb	2

; glb VIDEO_pageoff : unsigned short
section .bss
	alignb 4
_VIDEO_pageoff:
	resb	2

; glb segMemVideo : unsigned short
section .bss
	alignb 4
_segMemVideo:
	resb	2

; glb inicBiosCrt : (void) void
section .text
	global	_inicBiosCrt
_inicBiosCrt:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; RPN'ized expression: "numFilasOriginal ptrBiosArea VIDEO_lastrow -> *u 1 + = "
; Expanded expression: "numFilasOriginal ptrBiosArea *(4) 1156 + *(1) 1 + =(1) "
; Fused expression:    "numFilasOriginal push-ax ptrBiosArea + *ax 1156 + *ax 1 =(156) **sp ax "
section .relod
	dd	L3
section .text
	db	0x66, 0xB8
L3:
	dd	_numFilasOriginal
	push	eax
section .relod
	dd	L4
section .text
	db	0x66, 0xB8
L4:
	dd	_ptrBiosArea
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 1156
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	inc	eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; RPN'ized expression: "numColumnasOriginal ptrBiosArea VIDEO_width -> *u = "
; Expanded expression: "numColumnasOriginal ptrBiosArea *(4) 1098 + *(2) =(1) "
; Fused expression:    "numColumnasOriginal push-ax ptrBiosArea + *ax 1098 =(154) **sp *ax "
section .relod
	dd	L5
section .text
	db	0x66, 0xB8
L5:
	dd	_numColumnasOriginal
	push	eax
section .relod
	dd	L6
section .text
	db	0x66, 0xB8
L6:
	dd	_ptrBiosArea
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 1098
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; RPN'ized expression: "fontSizeOriginal ptrBiosArea VIDEO_hchar -> *u = "
; Expanded expression: "fontSizeOriginal ptrBiosArea *(4) 1157 + *(2) =(1) "
; Fused expression:    "fontSizeOriginal push-ax ptrBiosArea + *ax 1157 =(154) **sp *ax "
section .relod
	dd	L7
section .text
	db	0x66, 0xB8
L7:
	dd	_fontSizeOriginal
	push	eax
section .relod
	dd	L8
section .text
	db	0x66, 0xB8
L8:
	dd	_ptrBiosArea
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 1157
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; RPN'ized expression: "( lineaOriginal2 &u , lineaOriginal1 &u , cursorOriginalC &u , cursorOriginalF &u readXYBIOS ) "
; Expanded expression: " lineaOriginal2  lineaOriginal1  cursorOriginalC  cursorOriginalF  readXYBIOS ()16 "
; Fused expression:    "( lineaOriginal2 , lineaOriginal1 , cursorOriginalC , cursorOriginalF , readXYBIOS )16 "
section .relod
	dd	L9
section .text
	db	0x66, 0x68
L9:
	dd	_lineaOriginal2
section .relod
	dd	L10
section .text
	db	0x66, 0x68
L10:
	dd	_lineaOriginal1
section .relod
	dd	L11
section .text
	db	0x66, 0x68
L11:
	dd	_cursorOriginalC
section .relod
	dd	L12
section .text
	db	0x66, 0x68
L12:
	dd	_cursorOriginalF
	db	0x9A
section .relot
	dd	L13
section .text
L13:
	dd	_readXYBIOS
	sub	sp, -16
; RPN'ized expression: "tipoAdaptador ( tipoDeAdaptador ) = "
; Expanded expression: "tipoAdaptador  tipoDeAdaptador ()0 =(4) "
; Fused expression:    "tipoAdaptador push-ax ( tipoDeAdaptador )0 =(204) **sp ax "
section .relod
	dd	L14
section .text
	db	0x66, 0xB8
L14:
	dd	_tipoAdaptador
	push	eax
	db	0x9A
section .relot
	dd	L15
section .text
L15:
	dd	_tipoDeAdaptador
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * union <something>
; loc     <something> : unsigned
; RPN'ized expression: "ptrPant segMemVideo (something17) 4 << (something16) = "
; Expanded expression: "ptrPant segMemVideo *(2) 4 << =(4) "
; Fused expression:    "ptrPant push-ax segMemVideo << *ax 4 =(204) **sp ax "
section .relod
	dd	L18
section .text
	db	0x66, 0xB8
L18:
	dd	_ptrPant
	push	eax
section .relod
	dd	L19
section .text
	db	0x66, 0xB8
L19:
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
; RPN'ized expression: "redimensionable TRUE = "
; Expanded expression: "redimensionable 1 =(4) "
; Fused expression:    "redimensionable =(204) *ax 1 "
section .relod
	dd	L20
section .text
	db	0x66, 0xB8
L20:
	dd	_redimensionable
	mov	ebx, eax
	mov	eax, 1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "numFilas ptrBiosArea VIDEO_lastrow -> *u 1 + = "
; Expanded expression: "numFilas ptrBiosArea *(4) 1156 + *(1) 1 + =(1) "
; Fused expression:    "numFilas push-ax ptrBiosArea + *ax 1156 + *ax 1 =(156) **sp ax "
section .relod
	dd	L21
section .text
	db	0x66, 0xB8
L21:
	dd	_numFilas
	push	eax
section .relod
	dd	L22
section .text
	db	0x66, 0xB8
L22:
	dd	_ptrBiosArea
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 1156
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	inc	eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; loc     <something> : unsigned char
; RPN'ized expression: "numColumnas ptrBiosArea VIDEO_width -> *u (something23) = "
; Expanded expression: "numColumnas ptrBiosArea *(4) 1098 + *(2) unsigned char =(1) "
; Fused expression:    "numColumnas push-ax ptrBiosArea + *ax 1098 *(2) ax unsigned char =(156) **sp ax "
section .relod
	dd	L24
section .text
	db	0x66, 0xB8
L24:
	dd	_numColumnas
	push	eax
section .relod
	dd	L25
section .text
	db	0x66, 0xB8
L25:
	dd	_ptrBiosArea
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 1098
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	and	eax, 255
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; RPN'ized expression: "redimensionable numFilas 50 == = "
; Expanded expression: "redimensionable numFilas *(1) 50 == =(4) "
; Fused expression:    "redimensionable push-ax numFilas == *ax 50 =(204) **sp ax "
section .relod
	dd	L26
section .text
	db	0x66, 0xB8
L26:
	dd	_redimensionable
	push	eax
section .relod
	dd	L27
section .text
	db	0x66, 0xB8
L27:
	dd	_numFilas
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 50
	sete	al
	movzx	eax, al
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "VIDEO_mode ptrBiosArea VIDEO_mode -> *u = "
; Expanded expression: "VIDEO_mode ptrBiosArea *(4) 1097 + *(1) =(1) "
; Fused expression:    "VIDEO_mode push-ax ptrBiosArea + *ax 1097 =(153) **sp *ax "
section .relod
	dd	L28
section .text
	db	0x66, 0xB8
L28:
	dd	_VIDEO_mode
	push	eax
section .relod
	dd	L29
section .text
	db	0x66, 0xB8
L29:
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
; RPN'ized expression: "VIDEO_pagesize ptrBiosArea VIDEO_pagesize -> *u = "
; Expanded expression: "VIDEO_pagesize ptrBiosArea *(4) 1100 + *(2) =(2) "
; Fused expression:    "VIDEO_pagesize push-ax ptrBiosArea + *ax 1100 =(170) **sp *ax "
section .relod
	dd	L30
section .text
	db	0x66, 0xB8
L30:
	dd	_VIDEO_pagesize
	push	eax
section .relod
	dd	L31
section .text
	db	0x66, 0xB8
L31:
	dd	_ptrBiosArea
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 1100
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "VIDEO_pageoff ptrBiosArea VIDEO_pageoff -> *u = "
; Expanded expression: "VIDEO_pageoff ptrBiosArea *(4) 1102 + *(2) =(2) "
; Fused expression:    "VIDEO_pageoff push-ax ptrBiosArea + *ax 1102 =(170) **sp *ax "
section .relod
	dd	L32
section .text
	db	0x66, 0xB8
L32:
	dd	_VIDEO_pageoff
	push	eax
section .relod
	dd	L33
section .text
	db	0x66, 0xB8
L33:
	dd	_ptrBiosArea
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 1102
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
L1:
	db	0x66
	leave
	retf
L34:

section .fxnsz noalloc
	dd	L34 - _inicBiosCrt

; glb finBiosCrt : (void) void
section .text
	global	_finBiosCrt
_finBiosCrt:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; RPN'ized expression: "( numColumnasOriginal , numFilasOriginal redimensionar ) "
; Expanded expression: " numColumnasOriginal *(1)  numFilasOriginal *(1)  redimensionar ()8 "
; Fused expression:    "( numColumnasOriginal *(1) ax , numFilasOriginal *(1) ax , redimensionar )8 "
section .relod
	dd	L37
section .text
	db	0x66, 0xB8
L37:
	dd	_numColumnasOriginal
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	push	eax
section .relod
	dd	L38
section .text
	db	0x66, 0xB8
L38:
	dd	_numFilasOriginal
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
	dd	L39
section .text
L39:
	dd	_redimensionar
	sub	sp, -8
L35:
	db	0x66
	leave
	retf
L40:

section .fxnsz
	dd	L40 - _finBiosCrt

; glb getFontSize : (void) int
section .text
	global	_getFontSize
_getFontSize:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     res : (@-4): int
; RPN'ized expression: "res ptrBiosArea VIDEO_hchar -> *u = "
; Expanded expression: "(@-4) ptrBiosArea *(4) 1157 + *(2) =(4) "
; Fused expression:    "ptrBiosArea + *ax 1157 =(202) *(@-4) *ax "
section .relod
	dd	L43
section .text
	db	0x66, 0xB8
L43:
	dd	_ptrBiosArea
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 1157
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-4], eax
; if
; RPN'ized expression: "res 0 == tipoAdaptador _MDS_GENIUS == && "
; Expanded expression: "(@-4) *(4) 0 == [sh&&->46] tipoAdaptador *(4) 48 == &&[46] "
; Fused expression:    "== *(@-4) 0 [sh&&->46] tipoAdaptador == *ax 48 &&[46]  "
	mov	eax, [bp-4]
	cmp	eax, 0
	sete	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L46
section .relod
	dd	L47
section .text
	db	0x66, 0xB8
L47:
	dd	_tipoAdaptador
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 48
	sete	al
	movzx	eax, al
L46:
; JumpIfZero
	test	eax, eax
	je	L44
; RPN'ized expression: "res _FONT15 = "
; Expanded expression: "(@-4) 15 =(4) "
; Fused expression:    "=(204) *(@-4) 15 "
	mov	eax, 15
	mov	[bp-4], eax
L44:
; switch
; RPN'ized expression: "tipoAdaptador "
; Expanded expression: "tipoAdaptador *(4) "
; Fused expression:    "tipoAdaptador *(4) ax  "
section .relod
	dd	L50
section .text
	db	0x66, 0xB8
L50:
	dd	_tipoAdaptador
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	jmp	L49
; {
; case
; RPN'ized expression: "_MDA "
; Expanded expression: "1 "
; Expression value: 1
L51:
; RPN'ized expression: "res 10 = "
; Expanded expression: "(@-4) 10 =(4) "
; Fused expression:    "=(204) *(@-4) 10 "
	mov	eax, 10
	mov	[bp-4], eax
; break
	jmp	L48
; case
; RPN'ized expression: "_EGACOLOR "
; Expanded expression: "4 "
; Expression value: 4
L52:
; case
; RPN'ized expression: "_EGAMONO "
; Expanded expression: "5 "
; Expression value: 5
L53:
; switch
; RPN'ized expression: "res "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
	jmp	L55
; {
; case
; RPN'ized expression: "_FONT08 "
; Expanded expression: "8 "
; Expression value: 8
L56:
; case
; RPN'ized expression: "_FONT14 "
; Expanded expression: "14 "
; Expression value: 14
L57:
; break
	jmp	L54
; default
L58:
; RPN'ized expression: "res _FONT14 = "
; Expanded expression: "(@-4) 14 =(4) "
; Fused expression:    "=(204) *(@-4) 14 "
	mov	eax, 14
	mov	[bp-4], eax
; }
	jmp	L54
L55:
	cmp	eax, 8
	je	L56
	cmp	eax, 14
	je	L57
	jmp	L58
L54:
; break
	jmp	L48
; case
; RPN'ized expression: "_CGA "
; Expanded expression: "2 "
; Expression value: 2
L59:
; RPN'ized expression: "res _FONT08 = "
; Expanded expression: "(@-4) 8 =(4) "
; Fused expression:    "=(204) *(@-4) 8 "
	mov	eax, 8
	mov	[bp-4], eax
; }
	jmp	L48
L49:
	cmp	eax, 1
	je	L51
	cmp	eax, 4
	je	L52
	cmp	eax, 5
	je	L53
	cmp	eax, 2
	je	L59
L48:
; return
; RPN'ized expression: "res "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
L41:
	db	0x66
	leave
	retf
L60:

section .fxnsz
	dd	L60 - _getFontSize

; glb getFilas : (void) unsigned char
section .text
	global	_getFilas
_getFilas:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     filas : (@-4): int
; RPN'ized expression: "filas ptrBiosArea VIDEO_lastrow -> *u 1 + = "
; Expanded expression: "(@-4) ptrBiosArea *(4) 1156 + *(1) 1 + =(4) "
; Fused expression:    "ptrBiosArea + *ax 1156 + *ax 1 =(204) *(@-4) ax "
section .relod
	dd	L63
section .text
	db	0x66, 0xB8
L63:
	dd	_ptrBiosArea
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 1156
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	inc	eax
	mov	[bp-4], eax
; if
; RPN'ized expression: "filas 1 == tipoAdaptador _MDS_GENIUS == && "
; Expanded expression: "(@-4) *(4) 1 == [sh&&->66] tipoAdaptador *(4) 48 == &&[66] "
; Fused expression:    "== *(@-4) 1 [sh&&->66] tipoAdaptador == *ax 48 &&[66]  "
	mov	eax, [bp-4]
	cmp	eax, 1
	sete	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L66
section .relod
	dd	L67
section .text
	db	0x66, 0xB8
L67:
	dd	_tipoAdaptador
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 48
	sete	al
	movzx	eax, al
L66:
; JumpIfZero
	test	eax, eax
	je	L64
; RPN'ized expression: "filas 66 = "
; Expanded expression: "(@-4) 66 =(4) "
; Fused expression:    "=(204) *(@-4) 66 "
	mov	eax, 66
	mov	[bp-4], eax
L64:
; if
; RPN'ized expression: "filas 1 == tipoAdaptador _MDA == && "
; Expanded expression: "(@-4) *(4) 1 == [sh&&->70] tipoAdaptador *(4) 1 == &&[70] "
; Fused expression:    "== *(@-4) 1 [sh&&->70] tipoAdaptador == *ax 1 &&[70]  "
	mov	eax, [bp-4]
	cmp	eax, 1
	sete	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L70
section .relod
	dd	L71
section .text
	db	0x66, 0xB8
L71:
	dd	_tipoAdaptador
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 1
	sete	al
	movzx	eax, al
L70:
; JumpIfZero
	test	eax, eax
	je	L68
; RPN'ized expression: "filas 25 = "
; Expanded expression: "(@-4) 25 =(4) "
; Fused expression:    "=(204) *(@-4) 25 "
	mov	eax, 25
	mov	[bp-4], eax
L68:
; if
; RPN'ized expression: "filas 1 == "
; Expanded expression: "(@-4) *(4) 1 == "
; Fused expression:    "== *(@-4) 1 IF! "
	mov	eax, [bp-4]
	cmp	eax, 1
	jne	L72
; {
; RPN'ized expression: "filas 25 = "
; Expanded expression: "(@-4) 25 =(4) "
; Fused expression:    "=(204) *(@-4) 25 "
	mov	eax, 25
	mov	[bp-4], eax
; RPN'ized expression: "videoDirecto FALSE = "
; Expanded expression: "videoDirecto 0 =(4) "
; Fused expression:    "videoDirecto =(204) *ax 0 "
section .relod
	dd	L74
section .text
	db	0x66, 0xB8
L74:
	dd	_videoDirecto
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; }
L72:
; switch
; RPN'ized expression: "tipoAdaptador "
; Expanded expression: "tipoAdaptador *(4) "
; Fused expression:    "tipoAdaptador *(4) ax  "
section .relod
	dd	L77
section .text
	db	0x66, 0xB8
L77:
	dd	_tipoAdaptador
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	jmp	L76
; {
; case
; RPN'ized expression: "_EGACOLOR "
; Expanded expression: "4 "
; Expression value: 4
L78:
; case
; RPN'ized expression: "_EGAMONO "
; Expanded expression: "5 "
; Expression value: 5
L79:
; switch
; RPN'ized expression: "filas "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
	jmp	L81
; {
; case
; RPN'ized expression: "25 "
; Expanded expression: "25 "
; Expression value: 25
L82:
; case
; RPN'ized expression: "43 "
; Expanded expression: "43 "
; Expression value: 43
L83:
; break
	jmp	L80
; default
L84:
; RPN'ized expression: "filas 25 = "
; Expanded expression: "(@-4) 25 =(4) "
; Fused expression:    "=(204) *(@-4) 25 "
	mov	eax, 25
	mov	[bp-4], eax
; }
	jmp	L80
L81:
	cmp	eax, 25
	je	L82
	cmp	eax, 43
	je	L83
	jmp	L84
L80:
; break
	jmp	L75
; case
; RPN'ized expression: "_VGACOLOR "
; Expanded expression: "7 "
; Expression value: 7
L85:
; case
; RPN'ized expression: "_VGAMONO "
; Expanded expression: "8 "
; Expression value: 8
L86:
; break
	jmp	L75
; default
L87:
; RPN'ized expression: "filas 25 = "
; Expanded expression: "(@-4) 25 =(4) "
; Fused expression:    "=(204) *(@-4) 25 "
	mov	eax, 25
	mov	[bp-4], eax
; break
	jmp	L75
; }
	jmp	L75
L76:
	cmp	eax, 4
	je	L78
	cmp	eax, 5
	je	L79
	cmp	eax, 7
	je	L85
	cmp	eax, 8
	je	L86
	jmp	L87
L75:
; return
; RPN'ized expression: "filas "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4) unsigned char  "
	mov	eax, [bp-4]
	and	eax, 255
L61:
	db	0x66
	leave
	retf
L88:

section .fxnsz
	dd	L88 - _getFilas

; glb comprobarAdaptador : (
; prm     tipoAdaptador : int
;     ) int
section .text
	global	_comprobarAdaptador
_comprobarAdaptador:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          8
; loc     tipoAdaptador : (@8): int
; loc     fontSize : (@-4): int
; RPN'ized expression: "fontSize ( getFontSize ) = "
; Expanded expression: "(@-4)  getFontSize ()0 =(4) "
; Fused expression:    "( getFontSize )0 =(204) *(@-4) ax "
	db	0x9A
section .relot
	dd	L91
section .text
L91:
	dd	_getFontSize
	mov	[bp-4], eax
; loc     filas : (@-8): int
; RPN'ized expression: "filas ( getFilas ) = "
; Expanded expression: "(@-8)  getFilas ()0 =(4) "
; Fused expression:    "( getFilas )0 =(204) *(@-8) ax "
	db	0x9A
section .relot
	dd	L92
section .text
L92:
	dd	_getFilas
	mov	[bp-8], eax
; switch
; RPN'ized expression: "tipoAdaptador "
; Expanded expression: "(@8) *(4) "
; Fused expression:    "*(4) (@8)  "
	mov	eax, [bp+8]
	jmp	L94
; {
; case
; RPN'ized expression: "_EGACOLOR "
; Expanded expression: "4 "
; Expression value: 4
L95:
; case
; RPN'ized expression: "_EGAMONO "
; Expanded expression: "5 "
; Expression value: 5
L96:
; switch
; RPN'ized expression: "filas "
; Expanded expression: "(@-8) *(4) "
; Fused expression:    "*(4) (@-8)  "
	mov	eax, [bp-8]
	jmp	L98
; {
; case
; RPN'ized expression: "25 "
; Expanded expression: "25 "
; Expression value: 25
L99:
; case
; RPN'ized expression: "43 "
; Expanded expression: "43 "
; Expression value: 43
L100:
; break
	jmp	L97
; default
L101:
; RPN'ized expression: "adaptadorNoFiable TRUE = "
; Expanded expression: "adaptadorNoFiable 1 =(4) "
; Fused expression:    "adaptadorNoFiable =(204) *ax 1 "
section .relod
	dd	L102
section .text
	db	0x66, 0xB8
L102:
	dd	_adaptadorNoFiable
	mov	ebx, eax
	mov	eax, 1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; }
	jmp	L97
L98:
	cmp	eax, 25
	je	L99
	cmp	eax, 43
	je	L100
	jmp	L101
L97:
; switch
; RPN'ized expression: "fontSize "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
	jmp	L104
; {
; case
; RPN'ized expression: "_FONT08 "
; Expanded expression: "8 "
; Expression value: 8
L105:
; case
; RPN'ized expression: "_FONT14 "
; Expanded expression: "14 "
; Expression value: 14
L106:
; break
	jmp	L103
; default
L107:
; RPN'ized expression: "adaptadorNoFiable TRUE = "
; Expanded expression: "adaptadorNoFiable 1 =(4) "
; Fused expression:    "adaptadorNoFiable =(204) *ax 1 "
section .relod
	dd	L108
section .text
	db	0x66, 0xB8
L108:
	dd	_adaptadorNoFiable
	mov	ebx, eax
	mov	eax, 1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; }
	jmp	L103
L104:
	cmp	eax, 8
	je	L105
	cmp	eax, 14
	je	L106
	jmp	L107
L103:
; break
	jmp	L93
; case
; RPN'ized expression: "_VGACOLOR "
; Expanded expression: "7 "
; Expression value: 7
L109:
; case
; RPN'ized expression: "_VGAMONO "
; Expanded expression: "8 "
; Expression value: 8
L110:
; break
	jmp	L93
; case
; RPN'ized expression: "_CGA "
; Expanded expression: "2 "
; Expression value: 2
L111:
; case
; RPN'ized expression: "_MDA "
; Expanded expression: "1 "
; Expression value: 1
L112:
; case
; RPN'ized expression: "_MCGACOLOR "
; Expanded expression: "10 "
; Expression value: 10
L113:
; case
; RPN'ized expression: "_MCGAMONO "
; Expanded expression: "11 "
; Expression value: 11
L114:
; switch
; RPN'ized expression: "filas "
; Expanded expression: "(@-8) *(4) "
; Fused expression:    "*(4) (@-8)  "
	mov	eax, [bp-8]
	jmp	L116
; {
; case
; RPN'ized expression: "25 "
; Expanded expression: "25 "
; Expression value: 25
L117:
; break
	jmp	L115
; default
L118:
; RPN'ized expression: "adaptadorNoFiable TRUE = "
; Expanded expression: "adaptadorNoFiable 1 =(4) "
; Fused expression:    "adaptadorNoFiable =(204) *ax 1 "
section .relod
	dd	L119
section .text
	db	0x66, 0xB8
L119:
	dd	_adaptadorNoFiable
	mov	ebx, eax
	mov	eax, 1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; }
	jmp	L115
L116:
	cmp	eax, 25
	je	L117
	jmp	L118
L115:
; break
	jmp	L93
; default
L120:
; RPN'ized expression: "adaptadorNoFiable TRUE = "
; Expanded expression: "adaptadorNoFiable 1 =(4) "
; Fused expression:    "adaptadorNoFiable =(204) *ax 1 "
section .relod
	dd	L121
section .text
	db	0x66, 0xB8
L121:
	dd	_adaptadorNoFiable
	mov	ebx, eax
	mov	eax, 1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; }
	jmp	L93
L94:
	cmp	eax, 4
	je	L95
	cmp	eax, 5
	je	L96
	cmp	eax, 7
	je	L109
	cmp	eax, 8
	je	L110
	cmp	eax, 2
	je	L111
	cmp	eax, 1
	je	L112
	cmp	eax, 10
	je	L113
	cmp	eax, 11
	je	L114
	jmp	L120
L93:
; if
; RPN'ized expression: "adaptadorNoFiable "
; Expanded expression: "adaptadorNoFiable *(4) "
; Fused expression:    "adaptadorNoFiable *(4) ax  "
section .relod
	dd	L124
section .text
	db	0x66, 0xB8
L124:
	dd	_adaptadorNoFiable
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
; JumpIfZero
	test	eax, eax
	je	L122
; {
; RPN'ized expression: "redimensionable FALSE = "
; Expanded expression: "redimensionable 0 =(4) "
; Fused expression:    "redimensionable =(204) *ax 0 "
section .relod
	dd	L125
section .text
	db	0x66, 0xB8
L125:
	dd	_redimensionable
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "videoDirecto FALSE = "
; Expanded expression: "videoDirecto 0 =(4) "
; Fused expression:    "videoDirecto =(204) *ax 0 "
section .relod
	dd	L126
section .text
	db	0x66, 0xB8
L126:
	dd	_videoDirecto
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; }
L122:
; return
; RPN'ized expression: "tipoAdaptador "
; Expanded expression: "(@8) *(4) "
; Fused expression:    "*(4) (@8)  "
	mov	eax, [bp+8]
L89:
	db	0x66
	leave
	retf
L127:

section .fxnsz
	dd	L127 - _comprobarAdaptador

; glb tipoDeAdaptador : (void) int
section .text
	global	_tipoDeAdaptador
_tipoDeAdaptador:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         24
; loc     CRTC_base : (@-4): unsigned short
; loc     res : (@-8): int
; RPN'ized expression: "res _NONE = "
; Expanded expression: "(@-8) 0 =(4) "
; Fused expression:    "=(204) *(@-8) 0 "
	mov	eax, 0
	mov	[bp-8], eax
; loc     DCC : (@-12): unsigned short
; loc     reg_AL : (@-16): unsigned char
; loc     reg_BL : (@-20): unsigned char
; loc     reg_BH : (@-24): unsigned char
; RPN'ized expression: "redimensionable FALSE = "
; Expanded expression: "redimensionable 0 =(4) "
; Fused expression:    "redimensionable =(204) *ax 0 "
section .relod
	dd	L130
section .text
	db	0x66, 0xB8
L130:
	dd	_redimensionable
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
   mov ax,01a00h  
   int 10h        
   mov [bp-12],bx 
   mov [bp-16],al 

; if
; RPN'ized expression: "reg_AL 26 == "
; Expanded expression: "(@-16) *(1) 26 == "
; Fused expression:    "== *(@-16) 26 IF! "
	mov	al, [bp-16]
	movzx	eax, al
	cmp	eax, 26
	jne	L131
; {
; switch
; loc         <something> : unsigned char
; RPN'ized expression: "DCC (something135) "
; Expanded expression: "(@-12) *(2) unsigned char "
; Fused expression:    "*(2) (@-12) unsigned char  "
	mov	ax, [bp-12]
	movzx	eax, ax
	and	eax, 255
	jmp	L134
; {
; case
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
L136:
; RPN'ized expression: "res _NONE = "
; Expanded expression: "(@-8) 0 =(4) "
; Fused expression:    "=(204) *(@-8) 0 "
	mov	eax, 0
	mov	[bp-8], eax
; break
	jmp	L133
; case
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
L137:
; RPN'ized expression: "res _MDA = "
; Expanded expression: "(@-8) 1 =(4) "
; Fused expression:    "=(204) *(@-8) 1 "
	mov	eax, 1
	mov	[bp-8], eax
; break
	jmp	L133
; case
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
L138:
; RPN'ized expression: "res _CGA = "
; Expanded expression: "(@-8) 2 =(4) "
; Fused expression:    "=(204) *(@-8) 2 "
	mov	eax, 2
	mov	[bp-8], eax
; break
	jmp	L133
; case
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
L139:
; RPN'ized expression: "res _EGACOLOR = "
; Expanded expression: "(@-8) 4 =(4) "
; Fused expression:    "=(204) *(@-8) 4 "
	mov	eax, 4
	mov	[bp-8], eax
; RPN'ized expression: "redimensionable TRUE = "
; Expanded expression: "redimensionable 1 =(4) "
; Fused expression:    "redimensionable =(204) *ax 1 "
section .relod
	dd	L140
section .text
	db	0x66, 0xB8
L140:
	dd	_redimensionable
	mov	ebx, eax
	mov	eax, 1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; break
	jmp	L133
; case
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
L141:
; RPN'ized expression: "res _EGAMONO = "
; Expanded expression: "(@-8) 5 =(4) "
; Fused expression:    "=(204) *(@-8) 5 "
	mov	eax, 5
	mov	[bp-8], eax
; break
	jmp	L133
; case
; RPN'ized expression: "26 "
; Expanded expression: "26 "
; Expression value: 26
L142:
; case
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
L143:
; RPN'ized expression: "res _VGACOLOR = "
; Expanded expression: "(@-8) 7 =(4) "
; Fused expression:    "=(204) *(@-8) 7 "
	mov	eax, 7
	mov	[bp-8], eax
; RPN'ized expression: "redimensionable TRUE = "
; Expanded expression: "redimensionable 1 =(4) "
; Fused expression:    "redimensionable =(204) *ax 1 "
section .relod
	dd	L144
section .text
	db	0x66, 0xB8
L144:
	dd	_redimensionable
	mov	ebx, eax
	mov	eax, 1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; break
	jmp	L133
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
L145:
; RPN'ized expression: "res _VGAMONO = "
; Expanded expression: "(@-8) 8 =(4) "
; Fused expression:    "=(204) *(@-8) 8 "
	mov	eax, 8
	mov	[bp-8], eax
; break
	jmp	L133
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
L146:
; case
; RPN'ized expression: "13 "
; Expanded expression: "13 "
; Expression value: 13
L147:
; RPN'ized expression: "res _MCGACOLOR = "
; Expanded expression: "(@-8) 10 =(4) "
; Fused expression:    "=(204) *(@-8) 10 "
	mov	eax, 10
	mov	[bp-8], eax
; break
	jmp	L133
; case
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
L148:
; RPN'ized expression: "res _MCGAMONO = "
; Expanded expression: "(@-8) 11 =(4) "
; Fused expression:    "=(204) *(@-8) 11 "
	mov	eax, 11
	mov	[bp-8], eax
; break
	jmp	L133
; default
L149:
; RPN'ized expression: "res _CGA = "
; Expanded expression: "(@-8) 2 =(4) "
; Fused expression:    "=(204) *(@-8) 2 "
	mov	eax, 2
	mov	[bp-8], eax
; }
	jmp	L133
L134:
	cmp	eax, 0
	je	L136
	cmp	eax, 1
	je	L137
	cmp	eax, 2
	je	L138
	cmp	eax, 4
	je	L139
	cmp	eax, 5
	je	L141
	cmp	eax, 26
	je	L142
	cmp	eax, 7
	je	L143
	cmp	eax, 8
	je	L145
	cmp	eax, 10
	je	L146
	cmp	eax, 13
	je	L147
	cmp	eax, 12
	je	L148
	jmp	L149
L133:
; }
	jmp	L132
L131:
; else
; {
   mov ah,12h     
   mov bx,0010h   
   int 10h        
   mov [bp-20],bl 

; if
; RPN'ized expression: "reg_BL 16 != res _NONE == && "
; Expanded expression: "(@-20) *(1) 16 != [sh&&->152] (@-8) *(4) 0 == &&[152] "
; Fused expression:    "!= *(@-20) 16 [sh&&->152] == *(@-8) 0 &&[152]  "
	mov	al, [bp-20]
	movzx	eax, al
	cmp	eax, 16
	setne	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L152
	mov	eax, [bp-8]
	cmp	eax, 0
	sete	al
	movzx	eax, al
L152:
; JumpIfZero
	test	eax, eax
	je	L150
; {
   mov ah,12h     
   mov bx,0010h   
   int 10h        
   mov [bp-24],bl 

; if
; RPN'ized expression: "reg_BH 0 == "
; Expanded expression: "(@-24) *(1) 0 == "
; Fused expression:    "== *(@-24) 0 IF! "
	mov	al, [bp-24]
	movzx	eax, al
	cmp	eax, 0
	jne	L153
; RPN'ized expression: "res _EGACOLOR = "
; Expanded expression: "(@-8) 4 =(4) "
; Fused expression:    "=(204) *(@-8) 4 "
	mov	eax, 4
	mov	[bp-8], eax
	jmp	L154
L153:
; else
; RPN'ized expression: "res _EGAMONO = "
; Expanded expression: "(@-8) 5 =(4) "
; Fused expression:    "=(204) *(@-8) 5 "
	mov	eax, 5
	mov	[bp-8], eax
L154:
; }
	jmp	L151
L150:
; else
; if
; RPN'ized expression: "res _NONE == "
; Expanded expression: "(@-8) *(4) 0 == "
; Fused expression:    "== *(@-8) 0 IF! "
	mov	eax, [bp-8]
	cmp	eax, 0
	jne	L155
; {
   int 11h   
   mov [bp-16],al 

; switch
; RPN'ized expression: "reg_AL 48 & "
; Expanded expression: "(@-16) *(1) 48 & "
; Fused expression:    "& *(@-16) 48  "
	mov	al, [bp-16]
	movzx	eax, al
	and	eax, 48
	jmp	L158
; {
; case
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
L159:
; case
; RPN'ized expression: "32 "
; Expanded expression: "32 "
; Expression value: 32
L160:
; RPN'ized expression: "res _CGA = "
; Expanded expression: "(@-8) 2 =(4) "
; Fused expression:    "=(204) *(@-8) 2 "
	mov	eax, 2
	mov	[bp-8], eax
; break
	jmp	L157
; case
; RPN'ized expression: "48 "
; Expanded expression: "48 "
; Expression value: 48
L161:
; RPN'ized expression: "res _MDA = "
; Expanded expression: "(@-8) 1 =(4) "
; Fused expression:    "=(204) *(@-8) 1 "
	mov	eax, 1
	mov	[bp-8], eax
; break
	jmp	L157
; default
L162:
; RPN'ized expression: "res _NONE = "
; Expanded expression: "(@-8) 0 =(4) "
; Fused expression:    "=(204) *(@-8) 0 "
	mov	eax, 0
	mov	[bp-8], eax
; }
	jmp	L157
L158:
	cmp	eax, 16
	je	L159
	cmp	eax, 32
	je	L160
	cmp	eax, 48
	je	L161
	jmp	L162
L157:
; }
L155:
L151:
; }
L132:
; RPN'ized expression: "CRTC_base ptrBiosArea CRTC_base -> *u = "
; Expanded expression: "(@-4) ptrBiosArea *(4) 1123 + *(2) =(2) "
; Fused expression:    "ptrBiosArea + *ax 1123 =(170) *(@-4) *ax "
section .relod
	dd	L163
section .text
	db	0x66, 0xB8
L163:
	dd	_ptrBiosArea
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 1123
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-4], ax
	movzx	eax, ax
; if
; RPN'ized expression: "CRTC_base 980 == "
; Expanded expression: "(@-4) *(2) 980 == "
; Fused expression:    "== *(@-4) 980 IF! "
	mov	ax, [bp-4]
	movzx	eax, ax
	cmp	eax, 980
	jne	L164
; {
; RPN'ized expression: "segMemVideo 47104 = "
; Expanded expression: "segMemVideo 47104 =(2) "
; Fused expression:    "segMemVideo =(172) *ax 47104 "
section .relod
	dd	L166
section .text
	db	0x66, 0xB8
L166:
	dd	_segMemVideo
	mov	ebx, eax
	mov	eax, 47104
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; switch
; RPN'ized expression: "res "
; Expanded expression: "(@-8) *(4) "
; Fused expression:    "*(4) (@-8)  "
	mov	eax, [bp-8]
	jmp	L168
; {
; case
; RPN'ized expression: "_EGAMONO "
; Expanded expression: "5 "
; Expression value: 5
L169:
; RPN'ized expression: "res _EGACOLOR = "
; Expanded expression: "(@-8) 4 =(4) "
; Fused expression:    "=(204) *(@-8) 4 "
	mov	eax, 4
	mov	[bp-8], eax
; break
	jmp	L167
; case
; RPN'ized expression: "_VGAMONO "
; Expanded expression: "8 "
; Expression value: 8
L170:
; RPN'ized expression: "res _VGACOLOR = "
; Expanded expression: "(@-8) 7 =(4) "
; Fused expression:    "=(204) *(@-8) 7 "
	mov	eax, 7
	mov	[bp-8], eax
; }
	jmp	L167
L168:
	cmp	eax, 5
	je	L169
	cmp	eax, 8
	je	L170
L167:
; }
	jmp	L165
L164:
; else
; if
; RPN'ized expression: "CRTC_base 948 == "
; Expanded expression: "(@-4) *(2) 948 == "
; Fused expression:    "== *(@-4) 948 IF! "
	mov	ax, [bp-4]
	movzx	eax, ax
	cmp	eax, 948
	jne	L171
; {
; RPN'ized expression: "segMemVideo 45056 = "
; Expanded expression: "segMemVideo 45056 =(2) "
; Fused expression:    "segMemVideo =(172) *ax 45056 "
section .relod
	dd	L173
section .text
	db	0x66, 0xB8
L173:
	dd	_segMemVideo
	mov	ebx, eax
	mov	eax, 45056
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; switch
; RPN'ized expression: "res "
; Expanded expression: "(@-8) *(4) "
; Fused expression:    "*(4) (@-8)  "
	mov	eax, [bp-8]
	jmp	L175
; {
; case
; RPN'ized expression: "_EGACOLOR "
; Expanded expression: "4 "
; Expression value: 4
L176:
; RPN'ized expression: "res _EGAMONO = "
; Expanded expression: "(@-8) 5 =(4) "
; Fused expression:    "=(204) *(@-8) 5 "
	mov	eax, 5
	mov	[bp-8], eax
; break
	jmp	L174
; case
; RPN'ized expression: "_VGACOLOR "
; Expanded expression: "7 "
; Expression value: 7
L177:
; RPN'ized expression: "res _VGAMONO = "
; Expanded expression: "(@-8) 8 =(4) "
; Fused expression:    "=(204) *(@-8) 8 "
	mov	eax, 8
	mov	[bp-8], eax
; }
	jmp	L174
L175:
	cmp	eax, 4
	je	L176
	cmp	eax, 7
	je	L177
L174:
; }
L171:
L165:
; RPN'ized expression: "enColor segMemVideo 47104 == = "
; Expanded expression: "enColor segMemVideo *(2) 47104 == =(4) "
; Fused expression:    "enColor push-ax segMemVideo == *ax 47104 =(204) **sp ax "
section .relod
	dd	L178
section .text
	db	0x66, 0xB8
L178:
	dd	_enColor
	push	eax
section .relod
	dd	L179
section .text
	db	0x66, 0xB8
L179:
	dd	_segMemVideo
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	cmp	eax, 47104
	sete	al
	movzx	eax, al
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; return
; loc     <something> : int
; RPN'ized expression: "( res (something180) comprobarAdaptador ) "
; Expanded expression: " (@-8) *(4)  comprobarAdaptador ()4 "
; Fused expression:    "( *(4) (@-8) , comprobarAdaptador )4  "
	push	dword [bp-8]
	db	0x9A
section .relot
	dd	L181
section .text
L181:
	dd	_comprobarAdaptador
	sub	sp, -4
L128:
	db	0x66
	leave
	retf
L182:

section .fxnsz
	dd	L182 - _tipoDeAdaptador

; glb setCursorVisibilidad : (
; prm     valorDeVisibilidad : int
;     ) unsigned char
section .text
	global	_setCursorVisibilidad
_setCursorVisibilidad:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         12
; loc     valorDeVisibilidad : (@8): int
; loc     res : (@-4): int
; RPN'ized expression: "res visibilidad = "
; Expanded expression: "(@-4) visibilidad *(1) =(4) "
; Fused expression:    "visibilidad =(201) *(@-4) *ax "
section .relod
	dd	L185
section .text
	db	0x66, 0xB8
L185:
	dd	_visibilidad
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	mov	[bp-4], eax
; loc     start : (@-8): unsigned char
; loc     end : (@-12): unsigned char
; RPN'ized expression: "visibilidad valorDeVisibilidad = "
; Expanded expression: "visibilidad (@8) *(4) =(1) "
; Fused expression:    "visibilidad =(156) *ax *(@8) "
section .relod
	dd	L186
section .text
	db	0x66, 0xB8
L186:
	dd	_visibilidad
	mov	ebx, eax
	mov	eax, [bp+8]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; switch
; RPN'ized expression: "visibilidad "
; Expanded expression: "visibilidad *(1) "
; Fused expression:    "visibilidad *(1) ax  "
section .relod
	dd	L189
section .text
	db	0x66, 0xB8
L189:
	dd	_visibilidad
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	jmp	L188
; {
; case
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
L190:
; RPN'ized expression: "start 32 = "
; Expanded expression: "(@-8) 32 =(1) "
; Fused expression:    "=(156) *(@-8) 32 "
	mov	eax, 32
	mov	[bp-8], al
	movzx	eax, al
; RPN'ized expression: "end 0 = "
; Expanded expression: "(@-12) 0 =(1) "
; Fused expression:    "=(156) *(@-12) 0 "
	mov	eax, 0
	mov	[bp-12], al
	movzx	eax, al
; break
	jmp	L187
; case
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
L191:
; RPN'ized expression: "start 0 = "
; Expanded expression: "(@-8) 0 =(1) "
; Fused expression:    "=(156) *(@-8) 0 "
	mov	eax, 0
	mov	[bp-8], al
	movzx	eax, al
; RPN'ized expression: "end 7 = "
; Expanded expression: "(@-12) 7 =(1) "
; Fused expression:    "=(156) *(@-12) 7 "
	mov	eax, 7
	mov	[bp-12], al
	movzx	eax, al
; break
	jmp	L187
; default
L192:
; RPN'ized expression: "start lineaOriginal1 = "
; Expanded expression: "(@-8) lineaOriginal1 *(1) =(1) "
; Fused expression:    "lineaOriginal1 =(153) *(@-8) *ax "
section .relod
	dd	L193
section .text
	db	0x66, 0xB8
L193:
	dd	_lineaOriginal1
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	mov	[bp-8], al
	movzx	eax, al
; RPN'ized expression: "end lineaOriginal2 = "
; Expanded expression: "(@-12) lineaOriginal2 *(1) =(1) "
; Fused expression:    "lineaOriginal2 =(153) *(@-12) *ax "
section .relod
	dd	L194
section .text
	db	0x66, 0xB8
L194:
	dd	_lineaOriginal2
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	mov	[bp-12], al
	movzx	eax, al
; }
	jmp	L187
L188:
	cmp	eax, 0
	je	L190
	cmp	eax, 2
	je	L191
	jmp	L192
L187:
   mov ah,01h     
   mov ch,[bp-8]  
   mov cl,[bp-12] 
   int 10h        

; return
; RPN'ized expression: "res "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4) unsigned char  "
	mov	eax, [bp-4]
	and	eax, 255
L183:
	db	0x66
	leave
	retf
L195:

section .fxnsz
	dd	L195 - _setCursorVisibilidad

; glb setFontSize : (
; prm     size : int
;     ) void
section .text
	global	_setFontSize
_setFontSize:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     size : (@8): int
; if
; RPN'ized expression: "adaptadorNoFiable "
; Expanded expression: "adaptadorNoFiable *(4) "
; Fused expression:    "adaptadorNoFiable *(4) ax  "
section .relod
	dd	L200
section .text
	db	0x66, 0xB8
L200:
	dd	_adaptadorNoFiable
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
; JumpIfZero
	test	eax, eax
	je	L198
; return
	jmp	L196
L198:
; switch
; RPN'ized expression: "tipoAdaptador "
; Expanded expression: "tipoAdaptador *(4) "
; Fused expression:    "tipoAdaptador *(4) ax  "
section .relod
	dd	L203
section .text
	db	0x66, 0xB8
L203:
	dd	_tipoAdaptador
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	jmp	L202
; {
; case
; RPN'ized expression: "_CGA "
; Expanded expression: "2 "
; Expression value: 2
L204:
; case
; RPN'ized expression: "_MDA "
; Expanded expression: "1 "
; Expression value: 1
L205:
; case
; RPN'ized expression: "_MCGACOLOR "
; Expanded expression: "10 "
; Expression value: 10
L206:
; case
; RPN'ized expression: "_MCGAMONO "
; Expanded expression: "11 "
; Expression value: 11
L207:
; case
; RPN'ized expression: "_MDS_GENIUS "
; Expanded expression: "48 "
; Expression value: 48
L208:
; break
	jmp	L201
; case
; RPN'ized expression: "_EGACOLOR "
; Expanded expression: "4 "
; Expression value: 4
L209:
; case
; RPN'ized expression: "_EGAMONO "
; Expanded expression: "5 "
; Expression value: 5
L210:
; if
; RPN'ized expression: "redimensionable fontSize size != && "
; Expanded expression: "redimensionable *(4) _Bool [sh&&->213] fontSize *(1) (@8) *(4) != &&[213] "
; Fused expression:    "redimensionable *(4) ax _Bool [sh&&->213] fontSize != *ax *(@8) &&[213]  "
section .relod
	dd	L214
section .text
	db	0x66, 0xB8
L214:
	dd	_redimensionable
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	test	eax, eax
	setne	al
	movsx	eax, al
; JumpIfZero
	test	eax, eax
	je	L213
section .relod
	dd	L215
section .text
	db	0x66, 0xB8
L215:
	dd	_fontSize
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, [bp+8]
	setne	al
	movzx	eax, al
L213:
; JumpIfZero
	test	eax, eax
	je	L211
; {
; switch
; RPN'ized expression: "size "
; Expanded expression: "(@8) *(4) "
; Fused expression:    "*(4) (@8)  "
	mov	eax, [bp+8]
	jmp	L217
; {
; case
; RPN'ized expression: "_FONT08 "
; Expanded expression: "8 "
; Expression value: 8
L218:
   mov ax,1112h  
   mov bl,00h    
   int 10h       

; break
	jmp	L216
; case
; RPN'ized expression: "_FONT14 "
; Expanded expression: "14 "
; Expression value: 14
L219:
   mov ax,1111h  
   mov bl,00h    
   int 10h       

; }
	jmp	L216
L217:
	cmp	eax, 8
	je	L218
	cmp	eax, 14
	je	L219
L216:
; }
L211:
; break
	jmp	L201
; case
; RPN'ized expression: "_VGACOLOR "
; Expanded expression: "7 "
; Expression value: 7
L220:
; case
; RPN'ized expression: "_VGAMONO "
; Expanded expression: "8 "
; Expression value: 8
L221:
; if
; RPN'ized expression: "redimensionable fontSize size != && "
; Expanded expression: "redimensionable *(4) _Bool [sh&&->224] fontSize *(1) (@8) *(4) != &&[224] "
; Fused expression:    "redimensionable *(4) ax _Bool [sh&&->224] fontSize != *ax *(@8) &&[224]  "
section .relod
	dd	L225
section .text
	db	0x66, 0xB8
L225:
	dd	_redimensionable
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	test	eax, eax
	setne	al
	movsx	eax, al
; JumpIfZero
	test	eax, eax
	je	L224
section .relod
	dd	L226
section .text
	db	0x66, 0xB8
L226:
	dd	_fontSize
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, [bp+8]
	setne	al
	movzx	eax, al
L224:
; JumpIfZero
	test	eax, eax
	je	L222
; {
; switch
; RPN'ized expression: "size "
; Expanded expression: "(@8) *(4) "
; Fused expression:    "*(4) (@8)  "
	mov	eax, [bp+8]
	jmp	L228
; {
; case
; RPN'ized expression: "_FONT08 "
; Expanded expression: "8 "
; Expression value: 8
L229:
   mov ax,1112h  
   mov bl,00h    
   int 10h       

; break
	jmp	L227
; case
; RPN'ized expression: "_FONT14 "
; Expanded expression: "14 "
; Expression value: 14
L230:
   mov ax,1111h  
   mov bl,00h    
   int 10h       

; break
	jmp	L227
; case
; RPN'ized expression: "_FONT16 "
; Expanded expression: "16 "
; Expression value: 16
L231:
   mov ax,1114h  
   mov bl,00h    
   int 10h       

; }
	jmp	L227
L228:
	cmp	eax, 8
	je	L229
	cmp	eax, 14
	je	L230
	cmp	eax, 16
	je	L231
L227:
; }
L222:
; }
	jmp	L201
L202:
	cmp	eax, 2
	je	L204
	cmp	eax, 1
	je	L205
	cmp	eax, 10
	je	L206
	cmp	eax, 11
	je	L207
	cmp	eax, 48
	je	L208
	cmp	eax, 4
	je	L209
	cmp	eax, 5
	je	L210
	cmp	eax, 7
	je	L220
	cmp	eax, 8
	je	L221
L201:
; RPN'ized expression: "( visibilidad setCursorVisibilidad ) "
; Expanded expression: " visibilidad *(1)  setCursorVisibilidad ()4 "
; Fused expression:    "( visibilidad *(1) ax , setCursorVisibilidad )4 "
section .relod
	dd	L232
section .text
	db	0x66, 0xB8
L232:
	dd	_visibilidad
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
	dd	L233
section .text
L233:
	dd	_setCursorVisibilidad
	sub	sp, -4
; RPN'ized expression: "fontSize ( getFontSize ) = "
; Expanded expression: "fontSize  getFontSize ()0 =(1) "
; Fused expression:    "fontSize push-ax ( getFontSize )0 =(156) **sp ax "
section .relod
	dd	L234
section .text
	db	0x66, 0xB8
L234:
	dd	_fontSize
	push	eax
	db	0x9A
section .relot
	dd	L235
section .text
L235:
	dd	_getFontSize
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
L196:
	db	0x66
	leave
	retf
L236:

section .fxnsz
	dd	L236 - _setFontSize

; glb set25x80 : (void) void
section .text
	global	_set25x80
_set25x80:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; switch
; RPN'ized expression: "tipoAdaptador "
; Expanded expression: "tipoAdaptador *(4) "
; Fused expression:    "tipoAdaptador *(4) ax  "
section .relod
	dd	L241
section .text
	db	0x66, 0xB8
L241:
	dd	_tipoAdaptador
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	jmp	L240
; {
; case
; RPN'ized expression: "_CGA "
; Expanded expression: "2 "
; Expression value: 2
L242:
; case
; RPN'ized expression: "_EGACOLOR "
; Expanded expression: "4 "
; Expression value: 4
L243:
; case
; RPN'ized expression: "_EGAMONO "
; Expanded expression: "5 "
; Expression value: 5
L244:
; case
; RPN'ized expression: "_VGACOLOR "
; Expanded expression: "7 "
; Expression value: 7
L245:
; case
; RPN'ized expression: "_VGAMONO "
; Expanded expression: "8 "
; Expression value: 8
L246:
; case
; RPN'ized expression: "_MCGACOLOR "
; Expanded expression: "10 "
; Expression value: 10
L247:
; case
; RPN'ized expression: "_MCGAMONO "
; Expanded expression: "11 "
; Expression value: 11
L248:
; RPN'ized expression: "( 3 establecerModoDeVideo ) "
; Expanded expression: " 3  establecerModoDeVideo ()4 "
; Fused expression:    "( 3 , establecerModoDeVideo )4 "
	push	dword 3
	db	0x9A
section .relot
	dd	L249
section .text
L249:
	dd	_establecerModoDeVideo
	sub	sp, -4
; break
	jmp	L239
; case
; RPN'ized expression: "_MDA "
; Expanded expression: "1 "
; Expression value: 1
L250:
; RPN'ized expression: "( 7 establecerModoDeVideo ) "
; Expanded expression: " 7  establecerModoDeVideo ()4 "
; Fused expression:    "( 7 , establecerModoDeVideo )4 "
	push	dword 7
	db	0x9A
section .relot
	dd	L251
section .text
L251:
	dd	_establecerModoDeVideo
	sub	sp, -4
; break
	jmp	L239
; }
	jmp	L239
L240:
	cmp	eax, 2
	je	L242
	cmp	eax, 4
	je	L243
	cmp	eax, 5
	je	L244
	cmp	eax, 7
	je	L245
	cmp	eax, 8
	je	L246
	cmp	eax, 10
	je	L247
	cmp	eax, 11
	je	L248
	cmp	eax, 1
	je	L250
L239:
L237:
	db	0x66
	leave
	retf
L252:

section .fxnsz
	dd	L252 - _set25x80

; glb redimensionar : (
; prm     nFilas : unsigned char
; prm     nCols : unsigned char
;     ) void
section .text
	global	_redimensionar
_redimensionar:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     nFilas : (@8): unsigned char
; loc     nCols : (@12): unsigned char
; switch
; RPN'ized expression: "tipoAdaptador "
; Expanded expression: "tipoAdaptador *(4) "
; Fused expression:    "tipoAdaptador *(4) ax  "
section .relod
	dd	L257
section .text
	db	0x66, 0xB8
L257:
	dd	_tipoAdaptador
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	jmp	L256
; {
; case
; RPN'ized expression: "_EGACOLOR "
; Expanded expression: "4 "
; Expression value: 4
L258:
; if
; RPN'ized expression: "nFilas 43 >= "
; Expanded expression: "(@8) *(1) 43 >= "
; Fused expression:    ">= *(@8) 43 IF! "
	mov	al, [bp+8]
	movzx	eax, al
	cmp	eax, 43
	jl	L259
; RPN'ized expression: "( _FONT08 setFontSize ) "
; Expanded expression: " 8  setFontSize ()4 "
; Fused expression:    "( 8 , setFontSize )4 "
	push	dword 8
	db	0x9A
section .relot
	dd	L261
section .text
L261:
	dd	_setFontSize
	sub	sp, -4
	jmp	L260
L259:
; else
; RPN'ized expression: "( set25x80 ) "
; Expanded expression: " set25x80 ()0 "
; Fused expression:    "( set25x80 )0 "
	db	0x9A
section .relot
	dd	L262
section .text
L262:
	dd	_set25x80
L260:
; break
	jmp	L255
; case
; RPN'ized expression: "_VGACOLOR "
; Expanded expression: "7 "
; Expression value: 7
L263:
; if
; RPN'ized expression: "nFilas 28 > "
; Expanded expression: "(@8) *(1) 28 > "
; Fused expression:    "> *(@8) 28 IF! "
	mov	al, [bp+8]
	movzx	eax, al
	cmp	eax, 28
	jle	L264
; RPN'ized expression: "( _FONT08 setFontSize ) "
; Expanded expression: " 8  setFontSize ()4 "
; Fused expression:    "( 8 , setFontSize )4 "
	push	dword 8
	db	0x9A
section .relot
	dd	L266
section .text
L266:
	dd	_setFontSize
	sub	sp, -4
	jmp	L265
L264:
; else
; if
; RPN'ized expression: "nFilas 25 > "
; Expanded expression: "(@8) *(1) 25 > "
; Fused expression:    "> *(@8) 25 IF! "
	mov	al, [bp+8]
	movzx	eax, al
	cmp	eax, 25
	jle	L267
; RPN'ized expression: "( _FONT14 setFontSize ) "
; Expanded expression: " 14  setFontSize ()4 "
; Fused expression:    "( 14 , setFontSize )4 "
	push	dword 14
	db	0x9A
section .relot
	dd	L269
section .text
L269:
	dd	_setFontSize
	sub	sp, -4
	jmp	L268
L267:
; else
; RPN'ized expression: "( set25x80 ) "
; Expanded expression: " set25x80 ()0 "
; Fused expression:    "( set25x80 )0 "
	db	0x9A
section .relot
	dd	L270
section .text
L270:
	dd	_set25x80
L268:
L265:
; }
	jmp	L255
L256:
	cmp	eax, 4
	je	L258
	cmp	eax, 7
	je	L263
L255:
L253:
	db	0x66
	leave
	retf
L271:

section .fxnsz
	dd	L271 - _redimensionar


	extern	_ptrBiosArea
	extern	_readXYBIOS
	extern	_establecerModoDeVideo

; Syntax/declaration table/stack:
; Bytes used: 6100/40960


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
; Ident enColor
; Ident videoDirecto
; Ident adaptadorNoFiable
; Ident cursorOriginalF
; Ident cursorOriginalC
; Ident lineaOriginal1
; Ident lineaOriginal2
; Ident numFilasOriginal
; Ident numColumnasOriginal
; Ident fontSizeOriginal
; Ident segMemVideo
; Bytes used: 3489/16384

; Next label number: 272
; Compilation succeeded.
