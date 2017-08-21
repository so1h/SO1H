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
; glb startBin : (void) void
; glb modoSO1 : (void) int
; glb unidadBIOS : (void) unsigned char
; glb CS_SO1H : unsigned short
; glb RO_SO1H : unsigned short
; glb DS_SO1H : unsigned short
; glb BSS_SO1H : unsigned short
; glb SS_SO1H : unsigned short
; glb SS_Kernel : unsigned short
; glb IMRInicial : unsigned short
; glb obtenerMapa : (void) void
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
; glb salvarPantallaInicial : (void) void
; glb restaurarPantallaInicial : (void) void
; glb finProgDOS : (
; prm     error : int
;     ) void
; RPN'ized expression: "21 "
; Expanded expression: "21 "
; Expression value: 21
; RPN'ized expression: "13 "
; Expanded expression: "13 "
; Expression value: 13
; glb hayMSDOS : (void) int
; glb hayDOSBox : (void) int
; glb hayWindowsNT : (void) int
; glb segPSP : (void) unsigned short
; glb versionMSDOS : (void) unsigned short
; glb entornoMSDOS : (void) * unsigned char
; glb valorMSDOS : (
; prm     str : * char
;     ) * unsigned char
; glb argcMSDOS : (void) int
; glb getArgvMSDOS : (
; prm     n : unsigned short
; prm     str : * char
;     ) int
; glb openDOS : (
; prm     nombre : * unsigned char
; prm     modo : unsigned char
;     ) int
; glb extendedOpenDOS : (
; prm     nombre : * unsigned char
; prm     modo : unsigned short
; prm     atr : unsigned short
; prm     accion : * unsigned short
; prm     error : * unsigned short
;     ) int
; glb closeDOS : (
; prm     df : int
;     ) int
; glb commitFileDOS : (
; prm     df : int
;     ) int
; glb createDOS : (
; prm     nombre : * unsigned char
; prm     atributo : unsigned short
;     ) int
; glb readDOS : (
; prm     df : int
; prm     buf : * char
; prm     n : int
;     ) int
; glb writeDOS : (
; prm     df : int
; prm     buf : * char
; prm     n : int
;     ) int
; glb lseekDOS : (
; prm     df : int
; prm     pos : * unsigned
; prm     whence : int
;     ) int
; glb getdiskDOS : (void) int
; glb setdiskDOS : (
; prm     drive : int
;     ) int
; glb getcurdirDOS : (
; prm     drive : int
; prm     direc : * char
;     ) int
; glb chdirDOS : (
; prm     path : * char
;     ) int
; glb findfirstDOS : (
; prm     pathname : * char
; prm     ffblk : * struct ffblk
; prm     attrib : int
;     ) int
; glb findnextDOS : (
; prm     ffblk : * struct ffblk
;     ) int
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
; glb printCarVideo : (
; prm     car : char
;     ) int
; glb printLnVideo : (void) int
; glb printStrVideo : (
; prm     str : * char
;     ) int
; glb printStrHastaVideo : (
; prm     str : * char
; prm     n : unsigned short
; prm     lleno : int
;     ) int
; glb printDecVideo : (
; prm     num : unsigned short
; prm     l : unsigned short
;     ) int
; glb printLDecVideo : (
; prm     num : unsigned
; prm     l : unsigned short
;     ) int
; glb printIntVideo : (
; prm     num : int
; prm     l : unsigned short
;     ) int
; glb printLIntVideo : (
; prm     num : int
; prm     l : unsigned short
;     ) int
; glb printHexVideo : (
; prm     num : unsigned short
; prm     l : unsigned short
;     ) int
; glb printLHexVideo : (
; prm     num : unsigned
; prm     l : unsigned short
;     ) int
; glb printBinVideo : (
; prm     num : unsigned short
; prm     l : unsigned short
;     ) int
; glb printLBinVideo : (
; prm     num : unsigned
; prm     l : unsigned short
;     ) int
; glb printPtrVideo : (
; prm     ptr : * unsigned char
;     ) int
; glb printByteVideo : (
; prm     b : unsigned char
;     ) int
; glb printWordVideo : (
; prm     w : unsigned short
;     ) int
; glb printCadVideo : (
; prm     cad : * char
;     ) int
; glb puntoDeParadaSO1 : (void) void
; glb leerScancodeListo : (void) unsigned char
; glb leerScancode : (void) unsigned char
; glb mirarLoQueHay : (
; prm     loQueHay : * unsigned short
;     ) void
; glb mostrarLoQueHay : (
; prm     loQueHay : unsigned short
;     ) void
; glb tirarS0 : (
; prm     loQueHay : unsigned short
;     ) void
; glb fechaCompactada : (
; prm     ptrFecha : * char
;     ) unsigned short
section .text
	global	_fechaCompactada
_fechaCompactada:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         12
; loc     ptrFecha : (@8): * char
; loc     mes : (@-4): unsigned short
; loc     dia : (@-8): unsigned short
; loc     anio : (@-12): unsigned short
; if
; RPN'ized expression: "ptrFecha 2 + *u 47 != ptrFecha 5 + *u 47 != || "
; Expanded expression: "(@8) *(4) 2 + *(-1) 47 != [sh||->5] (@8) *(4) 5 + *(-1) 47 != ||[5] "
; Fused expression:    "+ *(@8) 2 != *ax 47 [sh||->5] + *(@8) 5 != *ax 47 ||[5]  "
	mov	eax, [bp+8]
	add	eax, 2
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	cmp	eax, 47
	setne	al
	movzx	eax, al
; JumpIfNotZero
	test	eax, eax
	jne	L5
	mov	eax, [bp+8]
	add	eax, 5
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	cmp	eax, 47
	setne	al
	movzx	eax, al
L5:
; JumpIfZero
	test	eax, eax
	je	L3
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L1
L3:
; RPN'ized expression: "mes 10 ptrFecha 0 + *u 48 - * ptrFecha 1 + *u 48 - + = "
; Expanded expression: "(@-4) 10 (@8) *(4) 0 + *(-1) 48 - * (@8) *(4) 1 + *(-1) 48 - + =(2) "
; Fused expression:    "+ *(@8) 0 - *ax 48 * 10 ax push-ax + *(@8) 1 - *ax 48 + *sp ax =(172) *(@-4) ax "
	mov	eax, [bp+8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	sub	eax, 48
	mov	ecx, eax
	mov	eax, 10
	mul	ecx
	push	eax
	mov	eax, [bp+8]
	inc	eax
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	sub	eax, 48
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	[bp-4], ax
	movzx	eax, ax
; if
; RPN'ized expression: "mes 0 == mes 12 > || "
; Expanded expression: "(@-4) *(2) 0 == [sh||->8] (@-4) *(2) 12 > ||[8] "
; Fused expression:    "== *(@-4) 0 [sh||->8] > *(@-4) 12 ||[8]  "
	mov	ax, [bp-4]
	movzx	eax, ax
	cmp	eax, 0
	sete	al
	movzx	eax, al
; JumpIfNotZero
	test	eax, eax
	jne	L8
	mov	ax, [bp-4]
	movzx	eax, ax
	cmp	eax, 12
	setg	al
	movzx	eax, al
L8:
; JumpIfZero
	test	eax, eax
	je	L6
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L1
L6:
; RPN'ized expression: "dia 10 ptrFecha 3 + *u 48 - * ptrFecha 4 + *u 48 - + = "
; Expanded expression: "(@-8) 10 (@8) *(4) 3 + *(-1) 48 - * (@8) *(4) 4 + *(-1) 48 - + =(2) "
; Fused expression:    "+ *(@8) 3 - *ax 48 * 10 ax push-ax + *(@8) 4 - *ax 48 + *sp ax =(172) *(@-8) ax "
	mov	eax, [bp+8]
	add	eax, 3
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	sub	eax, 48
	mov	ecx, eax
	mov	eax, 10
	mul	ecx
	push	eax
	mov	eax, [bp+8]
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	sub	eax, 48
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	[bp-8], ax
	movzx	eax, ax
; if
; RPN'ized expression: "dia 0 == dia 31 > || "
; Expanded expression: "(@-8) *(2) 0 == [sh||->11] (@-8) *(2) 31 > ||[11] "
; Fused expression:    "== *(@-8) 0 [sh||->11] > *(@-8) 31 ||[11]  "
	mov	ax, [bp-8]
	movzx	eax, ax
	cmp	eax, 0
	sete	al
	movzx	eax, al
; JumpIfNotZero
	test	eax, eax
	jne	L11
	mov	ax, [bp-8]
	movzx	eax, ax
	cmp	eax, 31
	setg	al
	movzx	eax, al
L11:
; JumpIfZero
	test	eax, eax
	je	L9
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L1
L9:
; RPN'ized expression: "anio 10 ptrFecha 6 + *u 48 - * ptrFecha 7 + *u 48 - + = "
; Expanded expression: "(@-12) 10 (@8) *(4) 6 + *(-1) 48 - * (@8) *(4) 7 + *(-1) 48 - + =(2) "
; Fused expression:    "+ *(@8) 6 - *ax 48 * 10 ax push-ax + *(@8) 7 - *ax 48 + *sp ax =(172) *(@-12) ax "
	mov	eax, [bp+8]
	add	eax, 6
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	sub	eax, 48
	mov	ecx, eax
	mov	eax, 10
	mul	ecx
	push	eax
	mov	eax, [bp+8]
	add	eax, 7
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	sub	eax, 48
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	[bp-12], ax
	movzx	eax, ax
; return
; RPN'ized expression: "anio 9 << mes 5 << | dia | "
; Expanded expression: "(@-12) *(2) 9 << (@-4) *(2) 5 << | (@-8) *(2) | "
; Fused expression:    "<< *(@-12) 9 push-ax << *(@-4) 5 | *sp ax | ax *(@-8) unsigned short  "
	mov	ax, [bp-12]
	movzx	eax, ax
	shl	eax, 9
	push	eax
	mov	ax, [bp-4]
	movzx	eax, ax
	shl	eax, 5
	mov	ecx, eax
	pop	eax
	or	eax, ecx
	movzx	ecx, word [bp-8]
	or	eax, ecx
	movzx	eax, ax
L1:
	db	0x66
	leave
	retf
L12:

section .fxnsz noalloc
	dd	L12 - _fechaCompactada

; glb mirarLoQueHay : (
; prm     loQueHay : * unsigned short
;     ) void
section .text
	global	_mirarLoQueHay
_mirarLoQueHay:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     loQueHay : (@8): * unsigned short
; RPN'ized expression: "loQueHay *u 0 = "
; Expanded expression: "(@8) *(4) 0 =(2) "
; Fused expression:    "*(4) (@8) =(172) *ax 0 "
	mov	eax, [bp+8]
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; switch
; RPN'ized expression: "( modoSO1 ) "
; Expanded expression: " modoSO1 ()0 "
; Fused expression:    "( modoSO1 )0  "
	db	0x9A
section .relot
	dd	L17
section .text
L17:
	dd	_modoSO1
	jmp	L16
; {
; case
; RPN'ized expression: "modoSO1_Bin "
; Expanded expression: "0 "
; Expression value: 0
L18:
; break
	jmp	L15
; case
; RPN'ized expression: "modoSO1_Exe "
; Expanded expression: "1 "
; Expression value: 1
L19:
; RPN'ized expression: "loQueHay *u 1 |= "
; Expanded expression: "(@8) *(4) 1 |=(2) "
; Fused expression:    "*(4) (@8) |=(172) *ax 1 "
	mov	eax, [bp+8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	or	eax, 1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; if
; RPN'ized expression: "( hayWindowsNT ) "
; Expanded expression: " hayWindowsNT ()0 "
; Fused expression:    "( hayWindowsNT )0  "
	db	0x9A
section .relot
	dd	L22
section .text
L22:
	dd	_hayWindowsNT
; JumpIfZero
	test	eax, eax
	je	L20
; RPN'ized expression: "loQueHay *u 2 |= "
; Expanded expression: "(@8) *(4) 2 |=(2) "
; Fused expression:    "*(4) (@8) |=(172) *ax 2 "
	mov	eax, [bp+8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	or	eax, 2
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
L20:
; break
	jmp	L15
; default
L23:

section .rodata
L24:
	db	7,10," SO1() ERROR: modoSO1() = "
	times	1 db 0

section .text
; RPN'ized expression: "( L24 , FALSE assert ) "
; Expanded expression: " L24  0  assert ()8 "
; Fused expression:    "( L24 , 0 , assert )8 "
section .relod
	dd	L25
section .text
	db	0x66, 0x68
L25:
	dd	L24
	push	dword 0
	db	0x9A
section .relot
	dd	L26
section .text
L26:
	dd	_assert
	sub	sp, -8
; RPN'ized expression: "( 2 , ( modoSO1 ) printHexVideo ) "
; Expanded expression: " 2   modoSO1 ()0  printHexVideo ()8 "
; Fused expression:    "( 2 , ( modoSO1 )0 , printHexVideo )8 "
	push	dword 2
	db	0x9A
section .relot
	dd	L27
section .text
L27:
	dd	_modoSO1
	push	eax
	db	0x9A
section .relot
	dd	L28
section .text
L28:
	dd	_printHexVideo
	sub	sp, -8
; RPN'ized expression: "( leerScancode ) "
; Expanded expression: " leerScancode ()0 "
; Fused expression:    "( leerScancode )0 "
	db	0x9A
section .relot
	dd	L29
section .text
L29:
	dd	_leerScancode
; RPN'ized expression: "( 1 finProgDOS ) "
; Expanded expression: " 1  finProgDOS ()4 "
; Fused expression:    "( 1 , finProgDOS )4 "
	push	dword 1
	db	0x9A
section .relot
	dd	L30
section .text
L30:
	dd	_finProgDOS
	sub	sp, -4
; {
int 19h
; }
; RPN'ized expression: "( rebootLegacy ) "
; Expanded expression: " rebootLegacy ()0 "
; Fused expression:    "( rebootLegacy )0 "
	db	0x9A
section .relot
	dd	L31
section .text
L31:
	dd	_rebootLegacy
; }
	jmp	L15
L16:
	cmp	eax, 0
	je	L18
	cmp	eax, 1
	je	L19
	jmp	L23
L15:
; switch
; RPN'ized expression: "( ptrFechaBios fechaCompactada ) "
; Expanded expression: " ptrFechaBios *(4)  fechaCompactada ()4 "
; Fused expression:    "( ptrFechaBios *(4) ax , fechaCompactada )4  "
section .relod
	dd	L34
section .text
	db	0x66, 0xB8
L34:
	dd	_ptrFechaBios
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L35
section .text
L35:
	dd	_fechaCompactada
	sub	sp, -4
	jmp	L33
; {
; case
; RPN'ized expression: "50903 "
; Expanded expression: "50903 "
; Expression value: 50903
L36:
; RPN'ized expression: "loQueHay *u 4 |= "
; Expanded expression: "(@8) *(4) 4 |=(2) "
; Fused expression:    "*(4) (@8) |=(172) *ax 4 "
	mov	eax, [bp+8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	or	eax, 4
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L32
; case
; RPN'ized expression: "5706 "
; Expanded expression: "5706 "
; Expression value: 5706
L37:
; case
; RPN'ized expression: "7578 "
; Expanded expression: "7578 "
; Expression value: 7578
L38:
; case
; RPN'ized expression: "8784 "
; Expanded expression: "8784 "
; Expression value: 8784
L39:
; RPN'ized expression: "loQueHay *u 8 |= "
; Expanded expression: "(@8) *(4) 8 |=(2) "
; Fused expression:    "*(4) (@8) |=(172) *ax 8 "
	mov	eax, [bp+8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	or	eax, 8
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L32
; case
; RPN'ized expression: "47137 "
; Expanded expression: "47137 "
; Expression value: 47137
L40:
; RPN'ized expression: "loQueHay *u 16 |= "
; Expanded expression: "(@8) *(4) 16 |=(2) "
; Fused expression:    "*(4) (@8) |=(172) *ax 16 "
	mov	eax, [bp+8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	or	eax, 16
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L32
; case
; RPN'ized expression: "48867 "
; Expanded expression: "48867 "
; Expression value: 48867
L41:
; RPN'ized expression: "loQueHay *u 32 |= "
; Expanded expression: "(@8) *(4) 32 |=(2) "
; Fused expression:    "*(4) (@8) |=(172) *ax 32 "
	mov	eax, [bp+8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	or	eax, 32
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L32
; case
; RPN'ized expression: "6306 "
; Expanded expression: "6306 "
; Expression value: 6306
L42:
; RPN'ized expression: "loQueHay *u 64 |= "
; Expanded expression: "(@8) *(4) 64 |=(2) "
; Fused expression:    "*(4) (@8) |=(172) *ax 64 "
	mov	eax, [bp+8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	or	eax, 64
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L32
; case
; RPN'ized expression: "50721 "
; Expanded expression: "50721 "
; Expression value: 50721
L43:
; RPN'ized expression: "loQueHay *u 128 |= "
; Expanded expression: "(@8) *(4) 128 |=(2) "
; Fused expression:    "*(4) (@8) |=(172) *ax 128 "
	mov	eax, [bp+8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	or	eax, 128
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L32
; case
; RPN'ized expression: "3158 "
; Expanded expression: "3158 "
; Expression value: 3158
L44:
; RPN'ized expression: "loQueHay *u 256 |= "
; Expanded expression: "(@8) *(4) 256 |=(2) "
; Fused expression:    "*(4) (@8) |=(172) *ax 256 "
	mov	eax, [bp+8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	or	eax, 256
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L32
; default
L45:
; if
; RPN'ized expression: "( modoSO1 ) modoSO1_Bin == ( modoSO1 ) modoSO1_Exe == || "
; Expanded expression: " modoSO1 ()0 0 == [sh||->48]  modoSO1 ()0 1 == ||[48] "
; Fused expression:    "( modoSO1 )0 == ax 0 [sh||->48] ( modoSO1 )0 == ax 1 ||[48]  "
	db	0x9A
section .relot
	dd	L49
section .text
L49:
	dd	_modoSO1
	cmp	eax, 0
	sete	al
	movzx	eax, al
; JumpIfNotZero
	test	eax, eax
	jne	L48
	db	0x9A
section .relot
	dd	L50
section .text
L50:
	dd	_modoSO1
	cmp	eax, 1
	sete	al
	movzx	eax, al
L48:
; JumpIfZero
	test	eax, eax
	je	L46
; {
; RPN'ized expression: "( printLnVideo ) "
; Expanded expression: " printLnVideo ()0 "
; Fused expression:    "( printLnVideo )0 "
	db	0x9A
section .relot
	dd	L51
section .text
L51:
	dd	_printLnVideo

section .rodata
L52:
	db	7,10," so1(): fecha del BIOS = "
	times	1 db 0

section .text
; RPN'ized expression: "( L52 printStrVideo ) "
; Expanded expression: " L52  printStrVideo ()4 "
; Fused expression:    "( L52 , printStrVideo )4 "
section .relod
	dd	L53
section .text
	db	0x66, 0x68
L53:
	dd	L52
	db	0x9A
section .relot
	dd	L54
section .text
L54:
	dd	_printStrVideo
	sub	sp, -4
; for
; loc             i : (@-4): int
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(4) "
; Fused expression:    "=(204) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], eax
L55:
; RPN'ized expression: "i 8 < "
; Expanded expression: "(@-4) *(4) 8 < "
; Fused expression:    "< *(@-4) 8 IF! "
	mov	eax, [bp-4]
	cmp	eax, 8
	jge	L58
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(4) "
; RPN'ized expression: "( ptrFechaBios i + *u printCarVideo ) "
; Expanded expression: " ptrFechaBios *(4) (@-4) *(4) + *(1)  printCarVideo ()4 "
; Fused expression:    "( ptrFechaBios + *ax *(@-4) *(1) ax , printCarVideo )4 "
section .relod
	dd	L59
section .text
	db	0x66, 0xB8
L59:
	dd	_ptrFechaBios
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, [bp-4]
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
	dd	L60
section .text
L60:
	dd	_printCarVideo
	sub	sp, -4
L56:
; Fused expression:    "++p(4) *(@-4) "
	mov	eax, [bp-4]
	inc	dword [bp-4]
	jmp	L55
L58:

section .rodata
L61:
	db	10,10," fecha compactada = "
	times	1 db 0

section .text
; RPN'ized expression: "( L61 printStrVideo ) "
; Expanded expression: " L61  printStrVideo ()4 "
; Fused expression:    "( L61 , printStrVideo )4 "
section .relod
	dd	L62
section .text
	db	0x66, 0x68
L62:
	dd	L61
	db	0x9A
section .relot
	dd	L63
section .text
L63:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 1 , ( ptrFechaBios fechaCompactada ) printLDecVideo ) "
; Expanded expression: " 1   ptrFechaBios *(4)  fechaCompactada ()4  printLDecVideo ()8 "
; Fused expression:    "( 1 , ( ptrFechaBios *(4) ax , fechaCompactada )4 , printLDecVideo )8 "
	push	dword 1
section .relod
	dd	L64
section .text
	db	0x66, 0xB8
L64:
	dd	_ptrFechaBios
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L65
section .text
L65:
	dd	_fechaCompactada
	sub	sp, -4
	push	eax
	db	0x9A
section .relot
	dd	L66
section .text
L66:
	dd	_printLDecVideo
	sub	sp, -8

section .rodata
L67:
	db	" ==> Maquina (virtual) inexplorada",10
	db	10
	db	" presione una tecla para continuar "
	times	1 db 0

section .text
; RPN'ized expression: "( L67 printStrVideo ) "
; Expanded expression: " L67  printStrVideo ()4 "
; Fused expression:    "( L67 , printStrVideo )4 "
section .relod
	dd	L68
section .text
	db	0x66, 0x68
L68:
	dd	L67
	db	0x9A
section .relot
	dd	L69
section .text
L69:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( leerScancode ) "
; Expanded expression: " leerScancode ()0 "
; Fused expression:    "( leerScancode )0 "
	db	0x9A
section .relot
	dd	L70
section .text
L70:
	dd	_leerScancode
; }
L46:
; }
	jmp	L32
L33:
	cmp	eax, 50903
	je	L36
	cmp	eax, 5706
	je	L37
	cmp	eax, 7578
	je	L38
	cmp	eax, 8784
	je	L39
	cmp	eax, 47137
	je	L40
	cmp	eax, 48867
	je	L41
	cmp	eax, 6306
	je	L42
	cmp	eax, 50721
	je	L43
	cmp	eax, 3158
	je	L44
	jmp	L45
L32:
L13:
	db	0x66
	leave
	retf
L71:

section .fxnsz
	dd	L71 - _mirarLoQueHay

; glb ponerMuescaX : (
; prm     nombreSistema : * char
; prm     hayEseSistema : int
;     ) void
section .text
	global	_ponerMuescaX
_ponerMuescaX:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     nombreSistema : (@8): * char
; loc     hayEseSistema : (@12): int
; RPN'ized expression: "( nombreSistema printStrVideo ) "
; Expanded expression: " (@8) *(4)  printStrVideo ()4 "
; Fused expression:    "( *(4) (@8) , printStrVideo )4 "
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L74
section .text
L74:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 91 printCarVideo ) "
; Expanded expression: " 91  printCarVideo ()4 "
; Fused expression:    "( 91 , printCarVideo )4 "
	push	dword 91
	db	0x9A
section .relot
	dd	L75
section .text
L75:
	dd	_printCarVideo
	sub	sp, -4
; if
; RPN'ized expression: "hayEseSistema "
; Expanded expression: "(@12) *(4) "
; Fused expression:    "*(4) (@12)  "
	mov	eax, [bp+12]
; JumpIfZero
	test	eax, eax
	je	L76
; RPN'ized expression: "( 88 printCarVideo ) "
; Expanded expression: " 88  printCarVideo ()4 "
; Fused expression:    "( 88 , printCarVideo )4 "
	push	dword 88
	db	0x9A
section .relot
	dd	L78
section .text
L78:
	dd	_printCarVideo
	sub	sp, -4
	jmp	L77
L76:
; else
; RPN'ized expression: "( 32 printCarVideo ) "
; Expanded expression: " 32  printCarVideo ()4 "
; Fused expression:    "( 32 , printCarVideo )4 "
	push	dword 32
	db	0x9A
section .relot
	dd	L79
section .text
L79:
	dd	_printCarVideo
	sub	sp, -4
L77:

section .rodata
L80:
	db	"]  "
	times	1 db 0

section .text
; RPN'ized expression: "( L80 printStrVideo ) "
; Expanded expression: " L80  printStrVideo ()4 "
; Fused expression:    "( L80 , printStrVideo )4 "
section .relod
	dd	L81
section .text
	db	0x66, 0x68
L81:
	dd	L80
	db	0x9A
section .relot
	dd	L82
section .text
L82:
	dd	_printStrVideo
	sub	sp, -4
L72:
	db	0x66
	leave
	retf
L83:

section .fxnsz
	dd	L83 - _ponerMuescaX

; glb mostrarLoQueHay : (
; prm     loQueHay : unsigned short
;     ) void
section .text
	global	_mostrarLoQueHay
_mostrarLoQueHay:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     loQueHay : (@8): unsigned short
; RPN'ized expression: "( 12 printCarVideo ) "
; Expanded expression: " 12  printCarVideo ()4 "
; Fused expression:    "( 12 , printCarVideo )4 "
	push	dword 12
	db	0x9A
section .relot
	dd	L86
section .text
L86:
	dd	_printCarVideo
	sub	sp, -4
; RPN'ized expression: "( 0 , 1 goToXYVideo ) "
; Expanded expression: " 0  1  goToXYVideo ()8 "
; Fused expression:    "( 0 , 1 , goToXYVideo )8 "
	push	dword 0
	push	dword 1
	db	0x9A
section .relot
	dd	L87
section .text
L87:
	dd	_goToXYVideo
	sub	sp, -8
; switch
; RPN'ized expression: "( modoSO1 ) "
; Expanded expression: " modoSO1 ()0 "
; Fused expression:    "( modoSO1 )0  "
	db	0x9A
section .relot
	dd	L90
section .text
L90:
	dd	_modoSO1
	jmp	L89
; {
; case
; RPN'ized expression: "modoSO1_Bin "
; Expanded expression: "0 "
; Expression value: 0
L91:

section .rodata
L92:
	db	" so1h.bin"
	times	1 db 0

section .text
; RPN'ized expression: "( L92 printStrVideo ) "
; Expanded expression: " L92  printStrVideo ()4 "
; Fused expression:    "( L92 , printStrVideo )4 "
section .relod
	dd	L93
section .text
	db	0x66, 0x68
L93:
	dd	L92
	db	0x9A
section .relot
	dd	L94
section .text
L94:
	dd	_printStrVideo
	sub	sp, -4
; break
	jmp	L88
; case
; RPN'ized expression: "modoSO1_Exe "
; Expanded expression: "1 "
; Expression value: 1
L95:

section .rodata
L96:
	db	" so1h.exe"
	times	1 db 0

section .text
; RPN'ized expression: "( L96 printStrVideo ) "
; Expanded expression: " L96  printStrVideo ()4 "
; Fused expression:    "( L96 , printStrVideo )4 "
section .relod
	dd	L97
section .text
	db	0x66, 0x68
L97:
	dd	L96
	db	0x9A
section .relot
	dd	L98
section .text
L98:
	dd	_printStrVideo
	sub	sp, -4
; break
	jmp	L88
; }
	jmp	L88
L89:
	cmp	eax, 0
	je	L91
	cmp	eax, 1
	je	L95
L88:

section .rodata
L99:
	db	"  "
	times	1 db 0

section .text
; RPN'ized expression: "( L99 printStrVideo ) "
; Expanded expression: " L99  printStrVideo ()4 "
; Fused expression:    "( L99 , printStrVideo )4 "
section .relod
	dd	L100
section .text
	db	0x66, 0x68
L100:
	dd	L99
	db	0x9A
section .relot
	dd	L101
section .text
L101:
	dd	_printStrVideo
	sub	sp, -4

section .rodata
L102:
	db	"MSDOS"
	times	1 db 0

section .text
; loc     <something> : int
; RPN'ized expression: "( loQueHay 1 & (something103) , L102 ponerMuescaX ) "
; Expanded expression: " (@8) *(2) 1 &  L102  ponerMuescaX ()8 "
; Fused expression:    "( & *(@8) 1 , L102 , ponerMuescaX )8 "
	mov	ax, [bp+8]
	movzx	eax, ax
	and	eax, 1
	push	eax
section .relod
	dd	L104
section .text
	db	0x66, 0x68
L104:
	dd	L102
	db	0x9A
section .relot
	dd	L105
section .text
L105:
	dd	_ponerMuescaX
	sub	sp, -8

section .rodata
L106:
	db	"WinNT"
	times	1 db 0

section .text
; loc     <something> : int
; RPN'ized expression: "( loQueHay 2 & (something107) , L106 ponerMuescaX ) "
; Expanded expression: " (@8) *(2) 2 &  L106  ponerMuescaX ()8 "
; Fused expression:    "( & *(@8) 2 , L106 , ponerMuescaX )8 "
	mov	ax, [bp+8]
	movzx	eax, ax
	and	eax, 2
	push	eax
section .relod
	dd	L108
section .text
	db	0x66, 0x68
L108:
	dd	L106
	db	0x9A
section .relot
	dd	L109
section .text
L109:
	dd	_ponerMuescaX
	sub	sp, -8
; switch
; RPN'ized expression: "loQueHay 65532 & "
; Expanded expression: "(@8) *(2) 65532 & "
; Fused expression:    "& *(@8) 65532  "
	mov	ax, [bp+8]
	movzx	eax, ax
	and	eax, 65532
	jmp	L111
; {
; case
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
L112:

section .rodata
L113:
	db	"Qemu"
	times	1 db 0

section .text
; RPN'ized expression: "( TRUE , L113 ponerMuescaX ) "
; Expanded expression: " 1  L113  ponerMuescaX ()8 "
; Fused expression:    "( 1 , L113 , ponerMuescaX )8 "
	push	dword 1
section .relod
	dd	L114
section .text
	db	0x66, 0x68
L114:
	dd	L113
	db	0x9A
section .relot
	dd	L115
section .text
L115:
	dd	_ponerMuescaX
	sub	sp, -8
; break
	jmp	L110
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
L116:

section .rodata
L117:
	db	"Bochs"
	times	1 db 0

section .text
; RPN'ized expression: "( TRUE , L117 ponerMuescaX ) "
; Expanded expression: " 1  L117  ponerMuescaX ()8 "
; Fused expression:    "( 1 , L117 , ponerMuescaX )8 "
	push	dword 1
section .relod
	dd	L118
section .text
	db	0x66, 0x68
L118:
	dd	L117
	db	0x9A
section .relot
	dd	L119
section .text
L119:
	dd	_ponerMuescaX
	sub	sp, -8
; break
	jmp	L110
; case
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
L120:

section .rodata
L121:
	db	"DOSBox"
	times	1 db 0

section .text
; RPN'ized expression: "( TRUE , L121 ponerMuescaX ) "
; Expanded expression: " 1  L121  ponerMuescaX ()8 "
; Fused expression:    "( 1 , L121 , ponerMuescaX )8 "
	push	dword 1
section .relod
	dd	L122
section .text
	db	0x66, 0x68
L122:
	dd	L121
	db	0x9A
section .relot
	dd	L123
section .text
L123:
	dd	_ponerMuescaX
	sub	sp, -8
; break
	jmp	L110
; case
; RPN'ized expression: "32 "
; Expanded expression: "32 "
; Expression value: 32
L124:

section .rodata
L125:
	db	"NTVDM"
	times	1 db 0

section .text
; RPN'ized expression: "( TRUE , L125 ponerMuescaX ) "
; Expanded expression: " 1  L125  ponerMuescaX ()8 "
; Fused expression:    "( 1 , L125 , ponerMuescaX )8 "
	push	dword 1
section .relod
	dd	L126
section .text
	db	0x66, 0x68
L126:
	dd	L125
	db	0x9A
section .relot
	dd	L127
section .text
L127:
	dd	_ponerMuescaX
	sub	sp, -8
; break
	jmp	L110
; case
; RPN'ized expression: "64 "
; Expanded expression: "64 "
; Expression value: 64
L128:

section .rodata
L129:
	db	"Fake86"
	times	1 db 0

section .text
; RPN'ized expression: "( TRUE , L129 ponerMuescaX ) "
; Expanded expression: " 1  L129  ponerMuescaX ()8 "
; Fused expression:    "( 1 , L129 , ponerMuescaX )8 "
	push	dword 1
section .relod
	dd	L130
section .text
	db	0x66, 0x68
L130:
	dd	L129
	db	0x9A
section .relot
	dd	L131
section .text
L131:
	dd	_ponerMuescaX
	sub	sp, -8
; break
	jmp	L110
; case
; RPN'ized expression: "128 "
; Expanded expression: "128 "
; Expression value: 128
L132:

section .rodata
L133:
	db	"VDos"
	times	1 db 0

section .text
; RPN'ized expression: "( TRUE , L133 ponerMuescaX ) "
; Expanded expression: " 1  L133  ponerMuescaX ()8 "
; Fused expression:    "( 1 , L133 , ponerMuescaX )8 "
	push	dword 1
section .relod
	dd	L134
section .text
	db	0x66, 0x68
L134:
	dd	L133
	db	0x9A
section .relot
	dd	L135
section .text
L135:
	dd	_ponerMuescaX
	sub	sp, -8
; break
	jmp	L110
; case
; RPN'ized expression: "256 "
; Expanded expression: "256 "
; Expression value: 256
L136:

section .rodata
L137:
	db	"msdos"
	times	1 db 0

section .text
; RPN'ized expression: "( TRUE , L137 ponerMuescaX ) "
; Expanded expression: " 1  L137  ponerMuescaX ()8 "
; Fused expression:    "( 1 , L137 , ponerMuescaX )8 "
	push	dword 1
section .relod
	dd	L138
section .text
	db	0x66, 0x68
L138:
	dd	L137
	db	0x9A
section .relot
	dd	L139
section .text
L139:
	dd	_ponerMuescaX
	sub	sp, -8
; break
	jmp	L110
; default
L140:

section .rodata
L141:
	db	7,"Maquina (virtual) inexplorada "
	times	1 db 0

section .text
; RPN'ized expression: "( L141 printStrVideo ) "
; Expanded expression: " L141  printStrVideo ()4 "
; Fused expression:    "( L141 , printStrVideo )4 "
section .relod
	dd	L142
section .text
	db	0x66, 0x68
L142:
	dd	L141
	db	0x9A
section .relot
	dd	L143
section .text
L143:
	dd	_printStrVideo
	sub	sp, -4
; }
	jmp	L110
L111:
	cmp	eax, 4
	je	L112
	cmp	eax, 8
	je	L116
	cmp	eax, 16
	je	L120
	cmp	eax, 32
	je	L124
	cmp	eax, 64
	je	L128
	cmp	eax, 128
	je	L132
	cmp	eax, 256
	je	L136
	jmp	L140
L110:
; RPN'ized expression: "( printLnVideo ) "
; Expanded expression: " printLnVideo ()0 "
; Fused expression:    "( printLnVideo )0 "
	db	0x9A
section .relot
	dd	L144
section .text
L144:
	dd	_printLnVideo
L84:
	db	0x66
	leave
	retf
L145:

section .fxnsz
	dd	L145 - _mostrarLoQueHay

; glb tirarS0 : (
; prm     loQueHay : unsigned short
;     ) void
section .text
	global	_tirarS0
_tirarS0:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     loQueHay : (@8): unsigned short
; if
; RPN'ized expression: "( modoSO1 ) modoSO1_Exe == "
; Expanded expression: " modoSO1 ()0 1 == "
; Fused expression:    "( modoSO1 )0 == ax 1 IF! "
	db	0x9A
section .relot
	dd	L150
section .text
L150:
	dd	_modoSO1
	cmp	eax, 1
	jne	L148
; {
; RPN'ized expression: "( restaurarPantallaInicial ) "
; Expanded expression: " restaurarPantallaInicial ()0 "
; Fused expression:    "( restaurarPantallaInicial )0 "
	db	0x9A
section .relot
	dd	L151
section .text
L151:
	dd	_restaurarPantallaInicial
; RPN'ized expression: "( 1 setCursorVisibilidad ) "
; Expanded expression: " 1  setCursorVisibilidad ()4 "
; Fused expression:    "( 1 , setCursorVisibilidad )4 "
	push	dword 1
	db	0x9A
section .relot
	dd	L152
section .text
L152:
	dd	_setCursorVisibilidad
	sub	sp, -4
; RPN'ized expression: "( 0 finProgDOS ) "
; Expanded expression: " 0  finProgDOS ()4 "
; Fused expression:    "( 0 , finProgDOS )4 "
	push	dword 0
	db	0x9A
section .relot
	dd	L153
section .text
L153:
	dd	_finProgDOS
	sub	sp, -4
; }
	jmp	L149
L148:
; else
; if
; RPN'ized expression: "loQueHay 16 128 | & "
; Expanded expression: "(@8) *(2) 144 & "
; Fused expression:    "& *(@8) 144  "
	mov	ax, [bp+8]
	movzx	eax, ax
	and	eax, 144
; JumpIfZero
	test	eax, eax
	je	L154
; {
; RPN'ized expression: "( 12 printCarVideo ) "
; Expanded expression: " 12  printCarVideo ()4 "
; Fused expression:    "( 12 , printCarVideo )4 "
	push	dword 12
	db	0x9A
section .relot
	dd	L156
section .text
L156:
	dd	_printCarVideo
	sub	sp, -4
; RPN'ized expression: "( 14 , 11 goToXYVideo ) "
; Expanded expression: " 14  11  goToXYVideo ()8 "
; Fused expression:    "( 14 , 11 , goToXYVideo )8 "
	push	dword 14
	push	dword 11
	db	0x9A
section .relot
	dd	L157
section .text
L157:
	dd	_goToXYVideo
	sub	sp, -8
; RPN'ized expression: "( ocultaCursorBIOS ) "
; Expanded expression: " ocultaCursorBIOS ()0 "
; Fused expression:    "( ocultaCursorBIOS )0 "
	db	0x9A
section .relot
	dd	L158
section .text
L158:
	dd	_ocultaCursorBIOS

section .rodata
L159:
	db	" puede apagar la maquina virtual DOSBox (Ctrl+F9) o VDos"
	times	1 db 0

section .text
; RPN'ized expression: "( L159 printStrVideo ) "
; Expanded expression: " L159  printStrVideo ()4 "
; Fused expression:    "( L159 , printStrVideo )4 "
section .relod
	dd	L160
section .text
	db	0x66, 0x68
L160:
	dd	L159
	db	0x9A
section .relot
	dd	L161
section .text
L161:
	dd	_printStrVideo
	sub	sp, -4
 cli 
 hlt 

; }
	jmp	L155
L154:
; else
; {
; RPN'ized expression: "( 0 scrollBIOS ) "
; Expanded expression: " 0  scrollBIOS ()4 "
; Fused expression:    "( 0 , scrollBIOS )4 "
	push	dword 0
	db	0x9A
section .relot
	dd	L162
section .text
L162:
	dd	_scrollBIOS
	sub	sp, -4
; RPN'ized expression: "( 1 , 1 goToXYBIOS ) "
; Expanded expression: " 1  1  goToXYBIOS ()8 "
; Fused expression:    "( 1 , 1 , goToXYBIOS )8 "
	push	dword 1
	push	dword 1
	db	0x9A
section .relot
	dd	L163
section .text
L163:
	dd	_goToXYBIOS
	sub	sp, -8
; RPN'ized expression: "( ocultaCursorBIOS ) "
; Expanded expression: " ocultaCursorBIOS ()0 "
; Fused expression:    "( ocultaCursorBIOS )0 "
	db	0x9A
section .relot
	dd	L164
section .text
L164:
	dd	_ocultaCursorBIOS
; {
int 19h
; }
; }
L155:
L149:
L146:
	db	0x66
	leave
	retf
L165:

section .fxnsz
	dd	L165 - _tirarS0


	extern	_modoSO1
	extern	_hayWindowsNT
	extern	_assert
	extern	_printHexVideo
	extern	_leerScancode
	extern	_finProgDOS
	extern	_rebootLegacy
	extern	_ptrFechaBios
	extern	_printLnVideo
	extern	_printStrVideo
	extern	_printCarVideo
	extern	_printLDecVideo
	extern	_goToXYVideo
	extern	_restaurarPantallaInicial
	extern	_setCursorVisibilidad
	extern	_ocultaCursorBIOS
	extern	_scrollBIOS
	extern	_goToXYBIOS

; Syntax/declaration table/stack:
; Bytes used: 7910/40960


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
; Ident startBin
; Ident modoSO1
; Ident unidadBIOS
; Ident CS_SO1H
; Ident RO_SO1H
; Ident DS_SO1H
; Ident BSS_SO1H
; Ident SS_SO1H
; Ident SS_Kernel
; Ident IMRInicial
; Ident obtenerMapa
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
; Ident salvarPantallaInicial
; Ident restaurarPantallaInicial
; Ident finProgDOS
; Ident error
; Ident ffblk
; Ident ff_reserved
; Ident ff_attrib
; Ident ff_ftime
; Ident ff_fdate
; Ident ff_fsize
; Ident ff_name
; Ident hayMSDOS
; Ident hayDOSBox
; Ident hayWindowsNT
; Ident segPSP
; Ident versionMSDOS
; Ident entornoMSDOS
; Ident valorMSDOS
; Ident str
; Ident argcMSDOS
; Ident getArgvMSDOS
; Ident n
; Ident openDOS
; Ident nombre
; Ident modo
; Ident extendedOpenDOS
; Ident atr
; Ident accion
; Ident closeDOS
; Ident df
; Ident commitFileDOS
; Ident createDOS
; Ident atributo
; Ident readDOS
; Ident buf
; Ident writeDOS
; Ident lseekDOS
; Ident pos
; Ident whence
; Ident getdiskDOS
; Ident setdiskDOS
; Ident drive
; Ident getcurdirDOS
; Ident direc
; Ident chdirDOS
; Ident path
; Ident findfirstDOS
; Ident pathname
; Ident attrib
; Ident findnextDOS
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
; Ident printLnBIOS
; Ident printStrBIOS
; Ident printStrHastaBIOS
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
; Ident printCarVideo
; Ident printLnVideo
; Ident printStrVideo
; Ident printStrHastaVideo
; Ident printDecVideo
; Ident printLDecVideo
; Ident printIntVideo
; Ident printLIntVideo
; Ident printHexVideo
; Ident printLHexVideo
; Ident printBinVideo
; Ident printLBinVideo
; Ident printPtrVideo
; Ident printByteVideo
; Ident printWordVideo
; Ident printCadVideo
; Ident puntoDeParadaSO1
; Ident leerScancodeListo
; Ident leerScancode
; Ident mirarLoQueHay
; Ident loQueHay
; Ident mostrarLoQueHay
; Ident tirarS0
; Ident fechaCompactada
; Ident ptrFecha
; Ident ponerMuescaX
; Ident nombreSistema
; Ident hayEseSistema
; Bytes used: 4345/16384

; Next label number: 166
; Compilation succeeded.
