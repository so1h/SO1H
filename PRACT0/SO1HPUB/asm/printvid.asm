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
; RPN'ized expression: "17 "
; Expanded expression: "17 "
; Expression value: 17
; glb dig : [17u] char
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
; glb cursorF : unsigned char
; glb cursorC : unsigned char
; glb lineaOriginal1 : unsigned char
; glb lineaOriginal2 : unsigned char
; glb inicMemVideo : (void) void
; glb finMemVideo : (void) int
; glb goToXYVideo : (
; prm     F : unsigned char
; prm     C : unsigned char
;     ) void
; glb printCarVideo : (
; prm     car : char
;     ) int
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
; glb printLnVideo : () int
section .text
	global	_printLnVideo
_printLnVideo:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; return
; RPN'ized expression: "( printCarVideo printGenLn ) "
; Expanded expression: " printCarVideo  printGenLn ()4 "
; Fused expression:    "( printCarVideo , printGenLn )4  "
section .relod
	dd	L3
section .text
	db	0x66, 0x68
L3:
	dd	_printCarVideo
	db	0x9A
section .relot
	dd	L4
section .text
L4:
	dd	_printGenLn
	sub	sp, -4
L1:
	db	0x66
	leave
	retf
L5:

section .fxnsz noalloc
	dd	L5 - _printLnVideo

; glb printStrVideo : (
; prm     str : * char
;     ) int
section .text
	global	_printStrVideo
_printStrVideo:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     str : (@8): * char
; return
; RPN'ized expression: "( printCarVideo , str printGenStr ) "
; Expanded expression: " printCarVideo  (@8) *(4)  printGenStr ()8 "
; Fused expression:    "( printCarVideo , *(4) (@8) , printGenStr )8  "
section .relod
	dd	L8
section .text
	db	0x66, 0x68
L8:
	dd	_printCarVideo
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L9
section .text
L9:
	dd	_printGenStr
	sub	sp, -8
L6:
	db	0x66
	leave
	retf
L10:

section .fxnsz
	dd	L10 - _printStrVideo

; glb printStrHastaVideo : (
; prm     str : * char
; prm     n : unsigned short
; prm     lleno : int
;     ) int
section .text
	global	_printStrHastaVideo
_printStrHastaVideo:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     str : (@8): * char
; loc     n : (@12): unsigned short
; loc     lleno : (@16): int
; return
; RPN'ized expression: "( printCarVideo , lleno , n , str printGenStrHasta ) "
; Expanded expression: " printCarVideo  (@16) *(4)  (@12) *(2)  (@8) *(4)  printGenStrHasta ()16 "
; Fused expression:    "( printCarVideo , *(4) (@16) , *(2) (@12) , *(4) (@8) , printGenStrHasta )16  "
section .relod
	dd	L13
section .text
	db	0x66, 0x68
L13:
	dd	_printCarVideo
	push	dword [bp+16]
	mov	ax, [bp+12]
	movzx	eax, ax
	push	eax
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L14
section .text
L14:
	dd	_printGenStrHasta
	sub	sp, -16
L11:
	db	0x66
	leave
	retf
L15:

section .fxnsz
	dd	L15 - _printStrHastaVideo

; glb printDecVideo : (
; prm     num : unsigned short
; prm     l : unsigned short
;     ) int
section .text
	global	_printDecVideo
_printDecVideo:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     num : (@8): unsigned short
; loc     l : (@12): unsigned short
; return
; RPN'ized expression: "( printCarVideo , l , num printGenDec ) "
; Expanded expression: " printCarVideo  (@12) *(2)  (@8) *(2)  printGenDec ()12 "
; Fused expression:    "( printCarVideo , *(2) (@12) , *(2) (@8) , printGenDec )12  "
section .relod
	dd	L18
section .text
	db	0x66, 0x68
L18:
	dd	_printCarVideo
	mov	ax, [bp+12]
	movzx	eax, ax
	push	eax
	mov	ax, [bp+8]
	movzx	eax, ax
	push	eax
	db	0x9A
section .relot
	dd	L19
section .text
L19:
	dd	_printGenDec
	sub	sp, -12
L16:
	db	0x66
	leave
	retf
L20:

section .fxnsz
	dd	L20 - _printDecVideo

; glb printIntVideo : (
; prm     num : int
; prm     l : unsigned short
;     ) int
section .text
	global	_printIntVideo
_printIntVideo:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     num : (@8): int
; loc     l : (@12): unsigned short
; return
; RPN'ized expression: "( printCarVideo , l , num printGenInt ) "
; Expanded expression: " printCarVideo  (@12) *(2)  (@8) *(4)  printGenInt ()12 "
; Fused expression:    "( printCarVideo , *(2) (@12) , *(4) (@8) , printGenInt )12  "
section .relod
	dd	L23
section .text
	db	0x66, 0x68
L23:
	dd	_printCarVideo
	mov	ax, [bp+12]
	movzx	eax, ax
	push	eax
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L24
section .text
L24:
	dd	_printGenInt
	sub	sp, -12
L21:
	db	0x66
	leave
	retf
L25:

section .fxnsz
	dd	L25 - _printIntVideo

; glb printLIntVideo : (
; prm     num : int
; prm     l : unsigned short
;     ) int
section .text
	global	_printLIntVideo
_printLIntVideo:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     num : (@8): int
; loc     l : (@12): unsigned short
; return
; RPN'ized expression: "( printCarVideo , l , num printGenLInt ) "
; Expanded expression: " printCarVideo  (@12) *(2)  (@8) *(4)  printGenLInt ()12 "
; Fused expression:    "( printCarVideo , *(2) (@12) , *(4) (@8) , printGenLInt )12  "
section .relod
	dd	L28
section .text
	db	0x66, 0x68
L28:
	dd	_printCarVideo
	mov	ax, [bp+12]
	movzx	eax, ax
	push	eax
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L29
section .text
L29:
	dd	_printGenLInt
	sub	sp, -12
L26:
	db	0x66
	leave
	retf
L30:

section .fxnsz
	dd	L30 - _printLIntVideo

; glb printLDecVideo : (
; prm     num : unsigned
; prm     l : unsigned short
;     ) int
section .text
	global	_printLDecVideo
_printLDecVideo:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     num : (@8): unsigned
; loc     l : (@12): unsigned short
; return
; RPN'ized expression: "( printCarVideo , l , num printGenLDec ) "
; Expanded expression: " printCarVideo  (@12) *(2)  (@8) *(4)  printGenLDec ()12 "
; Fused expression:    "( printCarVideo , *(2) (@12) , *(4) (@8) , printGenLDec )12  "
section .relod
	dd	L33
section .text
	db	0x66, 0x68
L33:
	dd	_printCarVideo
	mov	ax, [bp+12]
	movzx	eax, ax
	push	eax
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L34
section .text
L34:
	dd	_printGenLDec
	sub	sp, -12
L31:
	db	0x66
	leave
	retf
L35:

section .fxnsz
	dd	L35 - _printLDecVideo

; glb printHexVideo : (
; prm     num : unsigned short
; prm     l : unsigned short
;     ) int
section .text
	global	_printHexVideo
_printHexVideo:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     num : (@8): unsigned short
; loc     l : (@12): unsigned short
; return
; RPN'ized expression: "( printCarVideo , l , num printGenHex ) "
; Expanded expression: " printCarVideo  (@12) *(2)  (@8) *(2)  printGenHex ()12 "
; Fused expression:    "( printCarVideo , *(2) (@12) , *(2) (@8) , printGenHex )12  "
section .relod
	dd	L38
section .text
	db	0x66, 0x68
L38:
	dd	_printCarVideo
	mov	ax, [bp+12]
	movzx	eax, ax
	push	eax
	mov	ax, [bp+8]
	movzx	eax, ax
	push	eax
	db	0x9A
section .relot
	dd	L39
section .text
L39:
	dd	_printGenHex
	sub	sp, -12
L36:
	db	0x66
	leave
	retf
L40:

section .fxnsz
	dd	L40 - _printHexVideo

; glb printLHexVideo : (
; prm     num : unsigned
; prm     l : unsigned short
;     ) int
section .text
	global	_printLHexVideo
_printLHexVideo:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     num : (@8): unsigned
; loc     l : (@12): unsigned short
; return
; RPN'ized expression: "( printCarVideo , l , num printGenLHex ) "
; Expanded expression: " printCarVideo  (@12) *(2)  (@8) *(4)  printGenLHex ()12 "
; Fused expression:    "( printCarVideo , *(2) (@12) , *(4) (@8) , printGenLHex )12  "
section .relod
	dd	L43
section .text
	db	0x66, 0x68
L43:
	dd	_printCarVideo
	mov	ax, [bp+12]
	movzx	eax, ax
	push	eax
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L44
section .text
L44:
	dd	_printGenLHex
	sub	sp, -12
L41:
	db	0x66
	leave
	retf
L45:

section .fxnsz
	dd	L45 - _printLHexVideo

; glb printBinVideo : (
; prm     num : unsigned short
; prm     l : unsigned short
;     ) int
section .text
	global	_printBinVideo
_printBinVideo:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     num : (@8): unsigned short
; loc     l : (@12): unsigned short
; RPN'ized expression: "( printCarVideo , l , num printGenBin ) "
; Expanded expression: " printCarVideo  (@12) *(2)  (@8) *(2)  printGenBin ()12 "
; Fused expression:    "( printCarVideo , *(2) (@12) , *(2) (@8) , printGenBin )12 "
section .relod
	dd	L48
section .text
	db	0x66, 0x68
L48:
	dd	_printCarVideo
	mov	ax, [bp+12]
	movzx	eax, ax
	push	eax
	mov	ax, [bp+8]
	movzx	eax, ax
	push	eax
	db	0x9A
section .relot
	dd	L49
section .text
L49:
	dd	_printGenBin
	sub	sp, -12
L46:
	db	0x66
	leave
	retf
L50:

section .fxnsz
	dd	L50 - _printBinVideo

; glb printLBinVideo : (
; prm     num : unsigned
; prm     l : unsigned short
;     ) int
section .text
	global	_printLBinVideo
_printLBinVideo:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     num : (@8): unsigned
; loc     l : (@12): unsigned short
; RPN'ized expression: "( printCarVideo , l , num printGenLBin ) "
; Expanded expression: " printCarVideo  (@12) *(2)  (@8) *(4)  printGenLBin ()12 "
; Fused expression:    "( printCarVideo , *(2) (@12) , *(4) (@8) , printGenLBin )12 "
section .relod
	dd	L53
section .text
	db	0x66, 0x68
L53:
	dd	_printCarVideo
	mov	ax, [bp+12]
	movzx	eax, ax
	push	eax
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L54
section .text
L54:
	dd	_printGenLBin
	sub	sp, -12
L51:
	db	0x66
	leave
	retf
L55:

section .fxnsz
	dd	L55 - _printLBinVideo

; glb printPtrVideo : (
; prm     ptr : * unsigned char
;     ) int
section .text
	global	_printPtrVideo
_printPtrVideo:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     ptr : (@8): * unsigned char
; return
; RPN'ized expression: "( printCarVideo , ptr printGenPtr ) "
; Expanded expression: " printCarVideo  (@8) *(4)  printGenPtr ()8 "
; Fused expression:    "( printCarVideo , *(4) (@8) , printGenPtr )8  "
section .relod
	dd	L58
section .text
	db	0x66, 0x68
L58:
	dd	_printCarVideo
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L59
section .text
L59:
	dd	_printGenPtr
	sub	sp, -8
L56:
	db	0x66
	leave
	retf
L60:

section .fxnsz
	dd	L60 - _printPtrVideo

; glb printByteVideo : (
; prm     b : unsigned char
;     ) int
section .text
	global	_printByteVideo
_printByteVideo:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     b : (@8): unsigned char
; RPN'ized expression: "( dig b 4 >> + *u printCarVideo ) "
; Expanded expression: " dig (@8) *(1) 4 >> + *(-1)  printCarVideo ()4 "
; Fused expression:    "( dig push-ax >> *(@8) 4 + *sp ax *(-1) ax , printCarVideo )4 "
section .relod
	dd	L63
section .text
	db	0x66, 0xB8
L63:
	dd	_dig
	push	eax
	mov	al, [bp+8]
	movzx	eax, al
	sar	eax, 4
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
	push	eax
	db	0x9A
section .relot
	dd	L64
section .text
L64:
	dd	_printCarVideo
	sub	sp, -4
; RPN'ized expression: "( dig b 15 & + *u printCarVideo ) "
; Expanded expression: " dig (@8) *(1) 15 & + *(-1)  printCarVideo ()4 "
; Fused expression:    "( dig push-ax & *(@8) 15 + *sp ax *(-1) ax , printCarVideo )4 "
section .relod
	dd	L65
section .text
	db	0x66, 0xB8
L65:
	dd	_dig
	push	eax
	mov	al, [bp+8]
	movzx	eax, al
	and	eax, 15
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
	push	eax
	db	0x9A
section .relot
	dd	L66
section .text
L66:
	dd	_printCarVideo
	sub	sp, -4
L61:
	db	0x66
	leave
	retf
L67:

section .fxnsz
	dd	L67 - _printByteVideo

; glb printWordVideo : (
; prm     w : unsigned short
;     ) int
section .text
	global	_printWordVideo
_printWordVideo:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     w : (@8): unsigned short
; loc     <something> : unsigned char
; RPN'ized expression: "( w 8 >> (something70) printByteVideo ) "
; Expanded expression: " (@8) *(2) 8 >> unsigned char  printByteVideo ()4 "
; Fused expression:    "( >> *(@8) 8 unsigned char , printByteVideo )4 "
	mov	ax, [bp+8]
	movzx	eax, ax
	sar	eax, 8
	and	eax, 255
	push	eax
	db	0x9A
section .relot
	dd	L71
section .text
L71:
	dd	_printByteVideo
	sub	sp, -4
; loc     <something> : unsigned char
; RPN'ized expression: "( w (something72) printByteVideo ) "
; Expanded expression: " (@8) *(2) unsigned char  printByteVideo ()4 "
; Fused expression:    "( *(2) (@8) unsigned char , printByteVideo )4 "
	mov	ax, [bp+8]
	movzx	eax, ax
	and	eax, 255
	push	eax
	db	0x9A
section .relot
	dd	L73
section .text
L73:
	dd	_printByteVideo
	sub	sp, -4
L68:
	db	0x66
	leave
	retf
L74:

section .fxnsz
	dd	L74 - _printWordVideo

; glb printCadVideo : (
; prm     cad : * char
;     ) int
section .text
	global	_printCadVideo
_printCadVideo:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     cad : (@8): * char
; loc     i : (@-4): unsigned short
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(2) "
; Fused expression:    "=(204) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], eax
; while
; loc     <something> : char
; RPN'ized expression: "cad i + *u 0 (something79) != "
; Expanded expression: "(@8) *(4) (@-4) *(2) + *(-1) 0 != "
L77:
; Fused expression:    "+ *(@8) *(@-4) != *ax 0 IF! "
	mov	eax, [bp+8]
	movzx	ecx, word [bp-4]
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	cmp	eax, 0
	je	L78
; {
; if
; RPN'ized expression: "cad i + *u 10 == "
; Expanded expression: "(@8) *(4) (@-4) *(2) + *(-1) 10 == "
; Fused expression:    "+ *(@8) *(@-4) == *ax 10 IF! "
	mov	eax, [bp+8]
	movzx	ecx, word [bp-4]
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	cmp	eax, 10
	jne	L80
; RPN'ized expression: "( 13 printCarVideo ) "
; Expanded expression: " 13  printCarVideo ()4 "
; Fused expression:    "( 13 , printCarVideo )4 "
	push	dword 13
	db	0x9A
section .relot
	dd	L82
section .text
L82:
	dd	_printCarVideo
	sub	sp, -4
L80:
; RPN'ized expression: "( cad i + *u printCarVideo ) "
; Expanded expression: " (@8) *(4) (@-4) *(2) + *(-1)  printCarVideo ()4 "
; Fused expression:    "( + *(@8) *(@-4) *(-1) ax , printCarVideo )4 "
	mov	eax, [bp+8]
	movzx	ecx, word [bp-4]
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	push	eax
	db	0x9A
section .relot
	dd	L83
section .text
L83:
	dd	_printCarVideo
	sub	sp, -4
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(2) "
; Fused expression:    "++p(2) *(@-4) "
	mov	ax, [bp-4]
	movzx	eax, ax
	inc	word [bp-4]
; }
	jmp	L77
L78:
L75:
	db	0x66
	leave
	retf
L84:

section .fxnsz
	dd	L84 - _printCadVideo


	extern	_printCarVideo
	extern	_printGenLn
	extern	_printGenStr
	extern	_printGenStrHasta
	extern	_printGenDec
	extern	_printGenInt
	extern	_printGenLInt
	extern	_printGenLDec
	extern	_printGenHex
	extern	_printGenLHex
	extern	_printGenBin
	extern	_printGenLBin
	extern	_printGenPtr
	extern	_dig

; Syntax/declaration table/stack:
; Bytes used: 3415/40960


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
; Ident dig
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
; Ident cursorF
; Ident cursorC
; Ident lineaOriginal1
; Ident lineaOriginal2
; Ident inicMemVideo
; Ident finMemVideo
; Ident goToXYVideo
; Ident F
; Ident C
; Ident printCarVideo
; Ident printCar_t
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
; Ident printLnVideo
; Ident printStrVideo
; Ident printStrHastaVideo
; Ident printDecVideo
; Ident printIntVideo
; Ident printLIntVideo
; Ident printLDecVideo
; Ident printHexVideo
; Ident printLHexVideo
; Ident printBinVideo
; Ident printLBinVideo
; Ident printPtrVideo
; Ident printByteVideo
; Ident b
; Ident printWordVideo
; Ident w
; Ident printCadVideo
; Ident cad
; Bytes used: 1551/16384

; Next label number: 85
; Compilation succeeded.
