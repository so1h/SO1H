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
; glb size_t : unsigned
; glb memset : (
; prm     <something> : * void
; prm     <something> : int
; prm     <something> : unsigned
;     ) * void
; glb memcpy : (
; prm     <something> : * void
; prm     <something> : * void
; prm     <something> : unsigned
;     ) * void
; glb memmove : (
; prm     <something> : * void
; prm     <something> : * void
; prm     <something> : unsigned
;     ) * void
; glb memchr : (
; prm     <something> : * char
; prm     <something> : int
; prm     <something> : unsigned
;     ) * char
; glb memcmp : (
; prm     <something> : * void
; prm     <something> : * void
; prm     <something> : unsigned
;     ) int
; glb strcpy : (
; prm     <something> : * char
; prm     <something> : * char
;     ) * char
; glb strncpy : (
; prm     <something> : * char
; prm     <something> : * char
; prm     <something> : unsigned
;     ) * char
; glb strxfrm : (
; prm     <something> : * char
; prm     <something> : * char
; prm     <something> : unsigned
;     ) unsigned
; glb strcat : (
; prm     <something> : * char
; prm     <something> : * char
;     ) * char
; glb strncat : (
; prm     <something> : * char
; prm     <something> : * char
; prm     <something> : unsigned
;     ) * char
; glb strlen : (
; prm     <something> : * char
;     ) unsigned
; glb strchr : (
; prm     <something> : * char
; prm     <something> : int
;     ) * char
; glb strrchr : (
; prm     <something> : * char
; prm     <something> : int
;     ) * char
; glb strstr : (
; prm     <something> : * char
; prm     <something> : * char
;     ) * char
; glb strspn : (
; prm     <something> : * char
; prm     <something> : * char
;     ) unsigned
; glb strcspn : (
; prm     <something> : * char
; prm     <something> : * char
;     ) unsigned
; glb strpbrk : (
; prm     <something> : * char
; prm     <something> : * char
;     ) * char
; glb strtok : (
; prm     <something> : * char
; prm     <something> : * char
;     ) * char
; glb strcmp : (
; prm     <something> : * char
; prm     <something> : * char
;     ) int
; glb strncmp : (
; prm     <something> : * char
; prm     <something> : * char
; prm     <something> : unsigned
;     ) int
; glb strcoll : (
; prm     <something> : * char
; prm     <something> : * char
;     ) int
; glb strerror : (
; prm     <something> : int
;     ) * char
; glb finProgDOS : (
; prm     exitCode : int
;     ) void
section .text
	global	_finProgDOS
_finProgDOS:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     exitCode : (@8): int
   mov al,[bp+8] 
   mov ah,4ch    
   int 21h       

L1:
	db	0x66
	leave
	retf
L3:

section .fxnsz noalloc
	dd	L3 - _finProgDOS

; glb hayMSDOS : (void) int
section .text
	global	_hayMSDOS
_hayMSDOS:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          8
; loc     ptrVIDos : (@-4): * struct <something>
; loc     <something> : * struct <something>
; RPN'ized expression: "ptrVIDos 33 4 * (something6) = "
; Expanded expression: "(@-4) 132 =(4) "
; Fused expression:    "=(204) *(@-4) 132 "
	mov	eax, 132
	mov	[bp-4], eax
; loc     VIDos : (@-8): * unsigned char
; loc     <something> : unsigned
; RPN'ized expression: "VIDos ptrVIDos segment -> *u (something7) 4 << ptrVIDos offset -> *u + = "
; Expanded expression: "(@-8) (@-4) *(4) 2 + *(2) 4 << (@-4) *(4) 0 + *(2) + =(4) "
; Fused expression:    "+ *(@-4) 2 << *ax 4 push-ax + *(@-4) 0 + *sp *ax =(204) *(@-8) ax "
	mov	eax, [bp-4]
	add	eax, 2
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	shl	eax, 4
	push	eax
	mov	eax, [bp-4]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	movzx	ecx, word [si]
	pop	eax
	add	eax, ecx
	mov	[bp-8], eax
; if
; RPN'ized expression: "VIDos *u 207 == "
; Expanded expression: "(@-8) *(4) *(1) 207 == "
; Fused expression:    "*(4) (@-8) == *ax 207 IF! "
	mov	eax, [bp-8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 207
	jne	L8
; return
; RPN'ized expression: "FALSE "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L4
L8:
; if
; loc     <something> : unsigned
; RPN'ized expression: "VIDos (something12) 16 >> 15 == "
; Expanded expression: "(@-8) *(4) 16 >>u 15 == "
; Fused expression:    ">>u *(@-8) 16 == ax 15 IF! "
	mov	eax, [bp-8]
	shr	eax, 16
	cmp	eax, 15
	jne	L10
; if
; loc     <something> : unsigned
; RPN'ized expression: "VIDos (something15) 988320 != "
; Expanded expression: "(@-8) *(4) 988320 != "
; Fused expression:    "!= *(@-8) 988320 IF! "
	mov	eax, [bp-8]
	cmp	eax, 988320
	je	L13
; return
; RPN'ized expression: "FALSE "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L4
L13:
L10:
; return
; RPN'ized expression: "TRUE "
; Expanded expression: "1 "
; Expression value: 1
; Fused expression:    "1  "
	mov	eax, 1
L4:
	db	0x66
	leave
	retf
L16:

section .fxnsz
	dd	L16 - _hayMSDOS

; glb versionMSDOS : (void) unsigned short
section .text
	global	_versionMSDOS
_versionMSDOS:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     version : (@-4): unsigned short
   mov ah,30h    
   int 21h       
   mov [bp-4],ax 

; return
; RPN'ized expression: "version "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4)  "
	mov	ax, [bp-4]
	movzx	eax, ax
L17:
	db	0x66
	leave
	retf
L19:

section .fxnsz
	dd	L19 - _versionMSDOS

; glb segPSP : (void) unsigned short
section .text
	global	_segPSP
_segPSP:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     PSP : (@-4): unsigned short
   mov ah,51h    
   int 21h       
   mov [bp-4],bx 

; return
; RPN'ized expression: "PSP "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4)  "
	mov	ax, [bp-4]
	movzx	eax, ax
L20:
	db	0x66
	leave
	retf
L22:

section .fxnsz
	dd	L22 - _segPSP

; glb entornoMSDOS : (void) * unsigned char
section .text
	global	_entornoMSDOS
_entornoMSDOS:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          8
; loc     segEntorno : (@-4): unsigned short
; loc     ptrEntorno : (@-8): * unsigned char
; loc     <something> : * unsigned short
; RPN'ized expression: "segEntorno ( segPSP ) 4 << 44 + (something25) *u = "
; Expanded expression: "(@-4)  segPSP ()0 4 << 44 + *(2) =(2) "
; Fused expression:    "( segPSP )0 << ax 4 + ax 44 =(170) *(@-4) *ax "
	db	0x9A
section .relot
	dd	L26
section .text
L26:
	dd	_segPSP
	shl	eax, 4
	add	eax, 44
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-4], ax
	movzx	eax, ax
; loc     <something> : * unsigned char
; RPN'ized expression: "ptrEntorno segEntorno 4 << 0 + (something27) = "
; Expanded expression: "(@-8) (@-4) *(2) 4 << 0 + =(4) "
; Fused expression:    "<< *(@-4) 4 + ax 0 =(204) *(@-8) ax "
	mov	ax, [bp-4]
	movzx	eax, ax
	shl	eax, 4
	mov	[bp-8], eax
; return
; RPN'ized expression: "ptrEntorno "
; Expanded expression: "(@-8) *(4) "
; Fused expression:    "*(4) (@-8)  "
	mov	eax, [bp-8]
L23:
	db	0x66
	leave
	retf
L28:

section .fxnsz
	dd	L28 - _entornoMSDOS

; glb valorMSDOS : (
; prm     str : * char
;     ) * unsigned char
section .text
	global	_valorMSDOS
_valorMSDOS:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         16
; loc     str : (@8): * char
; loc     ptrEntorno : (@-4): * unsigned char
; loc     i : (@-8): int
; loc     j : (@-12): int
; loc     car : (@-16): char
; RPN'ized expression: "ptrEntorno ( entornoMSDOS ) = "
; Expanded expression: "(@-4)  entornoMSDOS ()0 =(4) "
; Fused expression:    "( entornoMSDOS )0 =(204) *(@-4) ax "
	db	0x9A
section .relot
	dd	L31
section .text
L31:
	dd	_entornoMSDOS
	mov	[bp-4], eax
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-8) 0 =(4) "
; Fused expression:    "=(204) *(@-8) 0 "
	mov	eax, 0
	mov	[bp-8], eax
; do
L32:
; {
; RPN'ized expression: "j 0 = "
; Expanded expression: "(@-12) 0 =(4) "
; Fused expression:    "=(204) *(@-12) 0 "
	mov	eax, 0
	mov	[bp-12], eax
; RPN'ized expression: "car ptrEntorno i + *u = "
; Expanded expression: "(@-16) (@-4) *(4) (@-8) *(4) + *(1) =(-1) "
; Fused expression:    "+ *(@-4) *(@-8) =(121) *(@-16) *ax "
	mov	eax, [bp-4]
	add	eax, [bp-8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	mov	[bp-16], al
	movsx	eax, al
; while
; loc         <something> : char
; RPN'ized expression: "car 0 (something37) != car 61 != && car str j + *u == && "
; Expanded expression: "(@-16) *(-1) 0 != [sh&&->39] (@-16) *(-1) 61 != &&[39] _Bool [sh&&->38] (@-16) *(-1) (@8) *(4) (@-12) *(4) + *(-1) == &&[38] "
L35:
; Fused expression:    "!= *(@-16) 0 [sh&&->39] != *(@-16) 61 &&[39] _Bool [sh&&->38] + *(@8) *(@-12) == *(@-16) *ax &&[38]  "
	mov	al, [bp-16]
	movsx	eax, al
	cmp	eax, 0
	setne	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L39
	mov	al, [bp-16]
	movsx	eax, al
	cmp	eax, 61
	setne	al
	movzx	eax, al
L39:
	test	eax, eax
	setne	al
	movsx	eax, al
; JumpIfZero
	test	eax, eax
	je	L38
	mov	eax, [bp+8]
	add	eax, [bp-12]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	movsx	ecx, byte [si]
	mov	al, [bp-16]
	movsx	eax, al
	cmp	eax, ecx
	sete	al
	movzx	eax, al
L38:
; JumpIfZero
	test	eax, eax
	je	L36
; {
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-8) ++p(4) "
; Fused expression:    "++p(4) *(@-8) "
	mov	eax, [bp-8]
	inc	dword [bp-8]
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-12) ++p(4) "
; Fused expression:    "++p(4) *(@-12) "
	mov	eax, [bp-12]
	inc	dword [bp-12]
; RPN'ized expression: "car ptrEntorno i + *u = "
; Expanded expression: "(@-16) (@-4) *(4) (@-8) *(4) + *(1) =(-1) "
; Fused expression:    "+ *(@-4) *(@-8) =(121) *(@-16) *ax "
	mov	eax, [bp-4]
	add	eax, [bp-8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	mov	[bp-16], al
	movsx	eax, al
; }
	jmp	L35
L36:
; if
; loc         <something> : char
; RPN'ized expression: "ptrEntorno i ++p + *u 61 == str j + *u 0 (something42) == && "
; Expanded expression: "(@-4) *(4) (@-8) ++p(4) + *(1) 61 == [sh&&->43] (@8) *(4) (@-12) *(4) + *(-1) 0 == &&[43] "
; Fused expression:    "++p(4) *(@-8) + *(@-4) ax == *ax 61 [sh&&->43] + *(@8) *(@-12) == *ax 0 &&[43]  "
	mov	eax, [bp-8]
	inc	dword [bp-8]
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 61
	sete	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L43
	mov	eax, [bp+8]
	add	eax, [bp-12]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movsx	eax, al
	cmp	eax, 0
	sete	al
	movzx	eax, al
L43:
; JumpIfZero
	test	eax, eax
	je	L40
; break
	jmp	L34
	jmp	L41
L40:
; else
; {
; while
; loc             <something> : char
; RPN'ized expression: "ptrEntorno i + *u 0 (something46) != "
; Expanded expression: "(@-4) *(4) (@-8) *(4) + *(1) 0 != "
L44:
; Fused expression:    "+ *(@-4) *(@-8) != *ax 0 IF! "
	mov	eax, [bp-4]
	add	eax, [bp-8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 0
	je	L45
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-8) ++p(4) "
; Fused expression:    "++p(4) *(@-8) "
	mov	eax, [bp-8]
	inc	dword [bp-8]
	jmp	L44
L45:
; }
L41:
; }
; while
; loc     <something> : char
; RPN'ized expression: "ptrEntorno i ++ + *u 0 (something47) != "
; Expanded expression: "(@-4) *(4) (@-8) ++(4) + *(1) 0 != "
L33:
; Fused expression:    "++(4) *(@-8) + *(@-4) ax != *ax 0 IF "
	inc	dword [bp-8]
	mov	eax, [bp-8]
	mov	ecx, eax
	mov	eax, [bp-4]
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 0
	jne	L32
L34:
; return
; loc     <something> : * unsigned char
; RPN'ized expression: "ptrEntorno i + *u &u (something48) "
; Expanded expression: "(@-4) *(4) (@-8) *(4) + "
; Fused expression:    "+ *(@-4) *(@-8)  "
	mov	eax, [bp-4]
	add	eax, [bp-8]
L29:
	db	0x66
	leave
	retf
L49:

section .fxnsz
	dd	L49 - _valorMSDOS

; glb hayDOSBox : (void) int
section .text
	global	_hayDOSBox
_hayDOSBox:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          8
; loc     ptrVIDos : (@-4): * struct <something>
; loc     <something> : * struct <something>
; RPN'ized expression: "ptrVIDos 33 4 * (something52) = "
; Expanded expression: "(@-4) 132 =(4) "
; Fused expression:    "=(204) *(@-4) 132 "
	mov	eax, 132
	mov	[bp-4], eax
; loc     VIDos : (@-8): * unsigned char
; loc     <something> : unsigned
; RPN'ized expression: "VIDos ptrVIDos segment -> *u (something53) 4 << ptrVIDos offset -> *u + = "
; Expanded expression: "(@-8) (@-4) *(4) 2 + *(2) 4 << (@-4) *(4) 0 + *(2) + =(4) "
; Fused expression:    "+ *(@-4) 2 << *ax 4 push-ax + *(@-4) 0 + *sp *ax =(204) *(@-8) ax "
	mov	eax, [bp-4]
	add	eax, 2
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	shl	eax, 4
	push	eax
	mov	eax, [bp-4]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	movzx	ecx, word [si]
	pop	eax
	add	eax, ecx
	mov	[bp-8], eax
; if
; loc     <something> : unsigned
; loc     <something> : unsigned
; RPN'ized expression: "VIDos (something56) 988320 == VIDos (something57) 987232 == || "
; Expanded expression: "(@-8) *(4) 988320 == [sh||->58] (@-8) *(4) 987232 == ||[58] "
; Fused expression:    "== *(@-8) 988320 [sh||->58] == *(@-8) 987232 ||[58]  "
	mov	eax, [bp-8]
	cmp	eax, 988320
	sete	al
	movzx	eax, al
; JumpIfNotZero
	test	eax, eax
	jne	L58
	mov	eax, [bp-8]
	cmp	eax, 987232
	sete	al
	movzx	eax, al
L58:
; JumpIfZero
	test	eax, eax
	je	L54
; return
; RPN'ized expression: "TRUE "
; Expanded expression: "1 "
; Expression value: 1
; Fused expression:    "1  "
	mov	eax, 1
	jmp	L50
L54:
; if
; RPN'ized expression: "( hayMSDOS ) 0 == "
; Expanded expression: " hayMSDOS ()0 0 == "
; Fused expression:    "( hayMSDOS )0 == ax 0 IF! "
	db	0x9A
section .relot
	dd	L61
section .text
L61:
	dd	_hayMSDOS
	cmp	eax, 0
	jne	L59
; return
; RPN'ized expression: "FALSE "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L50
L59:
; return
; loc     <something> : * char

section .rodata
L63:
	db	"DOSBOX"
	times	1 db 0

section .text

section .rodata
L64:
	db	"DOSBOX"
	times	1 db 0

section .text
; RPN'ized expression: "( L64 , ( L63 valorMSDOS ) (something62) strcmp ) 0 == "
; Expanded expression: " L64   L63  valorMSDOS ()4  strcmp ()8 0 == "
; Fused expression:    "( L64 , ( L63 , valorMSDOS )4 , strcmp )8 == ax 0  "
section .relod
	dd	L65
section .text
	db	0x66, 0x68
L65:
	dd	L64
section .relod
	dd	L66
section .text
	db	0x66, 0x68
L66:
	dd	L63
	db	0x9A
section .relot
	dd	L67
section .text
L67:
	dd	_valorMSDOS
	sub	sp, -4
	push	eax
	db	0x9A
section .relot
	dd	L68
section .text
L68:
	dd	_strcmp
	sub	sp, -8
	cmp	eax, 0
	sete	al
	movzx	eax, al
L50:
	db	0x66
	leave
	retf
L69:

section .fxnsz
	dd	L69 - _hayDOSBox

; glb argcMSDOS : (void) int
section .text
	global	_argcMSDOS
_argcMSDOS:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         16
; loc     tamCmdLine : (@-4): unsigned short
; loc     ptrCmdLine : (@-8): * unsigned char
; loc     argc : (@-12): int
; RPN'ized expression: "argc 1 = "
; Expanded expression: "(@-12) 1 =(4) "
; Fused expression:    "=(204) *(@-12) 1 "
	mov	eax, 1
	mov	[bp-12], eax
; loc     i : (@-16): int
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-16) 0 =(4) "
; Fused expression:    "=(204) *(@-16) 0 "
	mov	eax, 0
	mov	[bp-16], eax
; loc     <something> : unsigned short
; loc     <something> : * unsigned char
; RPN'ized expression: "tamCmdLine ( segPSP ) 4 << 128 + (something73) *u (something72) = "
; Expanded expression: "(@-4)  segPSP ()0 4 << 128 + *(1) unsigned short =(2) "
; Fused expression:    "( segPSP )0 << ax 4 + ax 128 *(1) ax unsigned short =(172) *(@-4) ax "
	db	0x9A
section .relot
	dd	L74
section .text
L74:
	dd	_segPSP
	shl	eax, 4
	add	eax, 128
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	movzx	eax, ax
	mov	[bp-4], ax
	movzx	eax, ax
; loc     <something> : * unsigned char
; RPN'ized expression: "ptrCmdLine ( segPSP ) 4 << 129 + (something75) = "
; Expanded expression: "(@-8)  segPSP ()0 4 << 129 + =(4) "
; Fused expression:    "( segPSP )0 << ax 4 + ax 129 =(204) *(@-8) ax "
	db	0x9A
section .relot
	dd	L76
section .text
L76:
	dd	_segPSP
	shl	eax, 4
	add	eax, 129
	mov	[bp-8], eax
; while
; RPN'ized expression: "i tamCmdLine < "
; Expanded expression: "(@-16) *(4) (@-4) *(2) < "
L77:
; Fused expression:    "< *(@-16) *(@-4) IF! "
	mov	eax, [bp-16]
	movzx	ecx, word [bp-4]
	cmp	eax, ecx
	jge	L78
; {
; while
; RPN'ized expression: "i tamCmdLine < ptrCmdLine i + *u 32 == && "
; Expanded expression: "(@-16) *(4) (@-4) *(2) < [sh&&->81] (@-8) *(4) (@-16) *(4) + *(1) 32 == &&[81] "
L79:
; Fused expression:    "< *(@-16) *(@-4) [sh&&->81] + *(@-8) *(@-16) == *ax 32 &&[81]  "
	mov	eax, [bp-16]
	movzx	ecx, word [bp-4]
	cmp	eax, ecx
	setl	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L81
	mov	eax, [bp-8]
	add	eax, [bp-16]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 32
	sete	al
	movzx	eax, al
L81:
; JumpIfZero
	test	eax, eax
	je	L80
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-16) ++p(4) "
; Fused expression:    "++p(4) *(@-16) "
	mov	eax, [bp-16]
	inc	dword [bp-16]
	jmp	L79
L80:
; if
; RPN'ized expression: "i tamCmdLine < ptrCmdLine i + *u 32 != && "
; Expanded expression: "(@-16) *(4) (@-4) *(2) < [sh&&->84] (@-8) *(4) (@-16) *(4) + *(1) 32 != &&[84] "
; Fused expression:    "< *(@-16) *(@-4) [sh&&->84] + *(@-8) *(@-16) != *ax 32 &&[84]  "
	mov	eax, [bp-16]
	movzx	ecx, word [bp-4]
	cmp	eax, ecx
	setl	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L84
	mov	eax, [bp-8]
	add	eax, [bp-16]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 32
	setne	al
	movzx	eax, al
L84:
; JumpIfZero
	test	eax, eax
	je	L82
; RPN'ized expression: "argc ++p "
; Expanded expression: "(@-12) ++p(4) "
; Fused expression:    "++p(4) *(@-12) "
	mov	eax, [bp-12]
	inc	dword [bp-12]
L82:
; while
; RPN'ized expression: "i tamCmdLine < ptrCmdLine i + *u 32 != && "
; Expanded expression: "(@-16) *(4) (@-4) *(2) < [sh&&->87] (@-8) *(4) (@-16) *(4) + *(1) 32 != &&[87] "
L85:
; Fused expression:    "< *(@-16) *(@-4) [sh&&->87] + *(@-8) *(@-16) != *ax 32 &&[87]  "
	mov	eax, [bp-16]
	movzx	ecx, word [bp-4]
	cmp	eax, ecx
	setl	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L87
	mov	eax, [bp-8]
	add	eax, [bp-16]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 32
	setne	al
	movzx	eax, al
L87:
; JumpIfZero
	test	eax, eax
	je	L86
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-16) ++p(4) "
; Fused expression:    "++p(4) *(@-16) "
	mov	eax, [bp-16]
	inc	dword [bp-16]
	jmp	L85
L86:
; }
	jmp	L77
L78:
; return
; RPN'ized expression: "argc "
; Expanded expression: "(@-12) *(4) "
; Fused expression:    "*(4) (@-12)  "
	mov	eax, [bp-12]
L70:
	db	0x66
	leave
	retf
L88:

section .fxnsz
	dd	L88 - _argcMSDOS

; glb getArgvMSDOS : (
; prm     n : unsigned short
; prm     str : * char
;     ) int
section .text
	global	_getArgvMSDOS
_getArgvMSDOS:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         28
; loc     n : (@8): unsigned short
; loc     str : (@12): * char
; loc     segEntorno : (@-4): unsigned short
; loc     ptrEntorno : (@-8): * unsigned char
; loc     tamCmdLine : (@-12): unsigned short
; loc     ptrCmdLine : (@-16): * unsigned char
; loc     i : (@-20): int
; loc     j : (@-24): int
; loc     k : (@-28): int
; loc     <something> : * unsigned short
; RPN'ized expression: "segEntorno ( segPSP ) 4 << 44 + (something91) *u = "
; Expanded expression: "(@-4)  segPSP ()0 4 << 44 + *(2) =(2) "
; Fused expression:    "( segPSP )0 << ax 4 + ax 44 =(170) *(@-4) *ax "
	db	0x9A
section .relot
	dd	L92
section .text
L92:
	dd	_segPSP
	shl	eax, 4
	add	eax, 44
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-4], ax
	movzx	eax, ax
; loc     <something> : * unsigned char
; RPN'ized expression: "ptrEntorno segEntorno 4 << 0 + (something93) = "
; Expanded expression: "(@-8) (@-4) *(2) 4 << 0 + =(4) "
; Fused expression:    "<< *(@-4) 4 + ax 0 =(204) *(@-8) ax "
	mov	ax, [bp-4]
	movzx	eax, ax
	shl	eax, 4
	mov	[bp-8], eax
; loc     <something> : unsigned short
; loc     <something> : * unsigned char
; RPN'ized expression: "tamCmdLine ( segPSP ) 4 << 128 + (something95) *u (something94) = "
; Expanded expression: "(@-12)  segPSP ()0 4 << 128 + *(1) unsigned short =(2) "
; Fused expression:    "( segPSP )0 << ax 4 + ax 128 *(1) ax unsigned short =(172) *(@-12) ax "
	db	0x9A
section .relot
	dd	L96
section .text
L96:
	dd	_segPSP
	shl	eax, 4
	add	eax, 128
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	movzx	eax, ax
	mov	[bp-12], ax
	movzx	eax, ax
; loc     <something> : * unsigned char
; RPN'ized expression: "ptrCmdLine ( segPSP ) 4 << 129 + (something97) = "
; Expanded expression: "(@-16)  segPSP ()0 4 << 129 + =(4) "
; Fused expression:    "( segPSP )0 << ax 4 + ax 129 =(204) *(@-16) ax "
	db	0x9A
section .relot
	dd	L98
section .text
L98:
	dd	_segPSP
	shl	eax, 4
	add	eax, 129
	mov	[bp-16], eax
; if
; RPN'ized expression: "n 0 == "
; Expanded expression: "(@8) *(2) 0 == "
; Fused expression:    "== *(@8) 0 IF! "
	mov	ax, [bp+8]
	movzx	eax, ax
	cmp	eax, 0
	jne	L99
; {
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-20) 0 =(4) "
; Fused expression:    "=(204) *(@-20) 0 "
	mov	eax, 0
	mov	[bp-20], eax
; do
L101:
; {
; while
; loc             <something> : char
; RPN'ized expression: "ptrEntorno i + *u 0 (something106) != "
; Expanded expression: "(@-8) *(4) (@-20) *(4) + *(1) 0 != "
L104:
; Fused expression:    "+ *(@-8) *(@-20) != *ax 0 IF! "
	mov	eax, [bp-8]
	add	eax, [bp-20]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 0
	je	L105
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-20) ++p(4) "
; Fused expression:    "++p(4) *(@-20) "
	mov	eax, [bp-20]
	inc	dword [bp-20]
	jmp	L104
L105:
; }
; while
; loc         <something> : char
; RPN'ized expression: "ptrEntorno i ++ + *u 0 (something107) != "
; Expanded expression: "(@-8) *(4) (@-20) ++(4) + *(1) 0 != "
L102:
; Fused expression:    "++(4) *(@-20) + *(@-8) ax != *ax 0 IF "
	inc	dword [bp-20]
	mov	eax, [bp-20]
	mov	ecx, eax
	mov	eax, [bp-8]
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 0
	jne	L101
L103:
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-20) ++p(4) "
; Fused expression:    "++p(4) *(@-20) "
	mov	eax, [bp-20]
	inc	dword [bp-20]
; RPN'ized expression: "i i 2 + = "
; Expanded expression: "(@-20) (@-20) *(4) 2 + =(4) "
; Fused expression:    "+ *(@-20) 2 =(204) *(@-20) ax "
	mov	eax, [bp-20]
	add	eax, 2
	mov	[bp-20], eax
; RPN'ized expression: "j 0 = "
; Expanded expression: "(@-24) 0 =(4) "
; Fused expression:    "=(204) *(@-24) 0 "
	mov	eax, 0
	mov	[bp-24], eax
; while
; loc         <something> : char
; RPN'ized expression: "str j ++p + *u ptrEntorno i ++p + *u = 0 (something110) != "
; Expanded expression: "(@12) *(4) (@-24) ++p(4) + (@-8) *(4) (@-20) ++p(4) + *(1) =(-1) 0 != "
L108:
; Fused expression:    "++p(4) *(@-24) + *(@12) ax push-ax ++p(4) *(@-20) + *(@-8) ax =(121) **sp *ax != ax 0 IF! "
	mov	eax, [bp-24]
	inc	dword [bp-24]
	mov	ecx, eax
	mov	eax, [bp+12]
	add	eax, ecx
	push	eax
	mov	eax, [bp-20]
	inc	dword [bp-20]
	mov	ecx, eax
	mov	eax, [bp-8]
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
	movsx	eax, al
	cmp	eax, 0
	je	L109
	jmp	L108
L109:
; return
; RPN'ized expression: "TRUE "
; Expanded expression: "1 "
; Expression value: 1
; Fused expression:    "1  "
	mov	eax, 1
	jmp	L89
; }
	jmp	L100
L99:
; else
; {
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-20) 0 =(4) "
; Fused expression:    "=(204) *(@-20) 0 "
	mov	eax, 0
	mov	[bp-20], eax
; RPN'ized expression: "j 0 = "
; Expanded expression: "(@-24) 0 =(4) "
; Fused expression:    "=(204) *(@-24) 0 "
	mov	eax, 0
	mov	[bp-24], eax
; while
; RPN'ized expression: "i tamCmdLine < j n < && "
; Expanded expression: "(@-20) *(4) (@-12) *(2) < [sh&&->113] (@-24) *(4) (@8) *(2) < &&[113] "
L111:
; Fused expression:    "< *(@-20) *(@-12) [sh&&->113] < *(@-24) *(@8) &&[113]  "
	mov	eax, [bp-20]
	movzx	ecx, word [bp-12]
	cmp	eax, ecx
	setl	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L113
	mov	eax, [bp-24]
	movzx	ecx, word [bp+8]
	cmp	eax, ecx
	setl	al
	movzx	eax, al
L113:
; JumpIfZero
	test	eax, eax
	je	L112
; {
; while
; RPN'ized expression: "i tamCmdLine < ptrCmdLine i + *u 32 == && "
; Expanded expression: "(@-20) *(4) (@-12) *(2) < [sh&&->116] (@-16) *(4) (@-20) *(4) + *(1) 32 == &&[116] "
L114:
; Fused expression:    "< *(@-20) *(@-12) [sh&&->116] + *(@-16) *(@-20) == *ax 32 &&[116]  "
	mov	eax, [bp-20]
	movzx	ecx, word [bp-12]
	cmp	eax, ecx
	setl	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L116
	mov	eax, [bp-16]
	add	eax, [bp-20]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 32
	sete	al
	movzx	eax, al
L116:
; JumpIfZero
	test	eax, eax
	je	L115
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-20) ++p(4) "
; Fused expression:    "++p(4) *(@-20) "
	mov	eax, [bp-20]
	inc	dword [bp-20]
	jmp	L114
L115:
; if
; RPN'ized expression: "i tamCmdLine < ptrCmdLine i + *u 32 != && "
; Expanded expression: "(@-20) *(4) (@-12) *(2) < [sh&&->119] (@-16) *(4) (@-20) *(4) + *(1) 32 != &&[119] "
; Fused expression:    "< *(@-20) *(@-12) [sh&&->119] + *(@-16) *(@-20) != *ax 32 &&[119]  "
	mov	eax, [bp-20]
	movzx	ecx, word [bp-12]
	cmp	eax, ecx
	setl	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L119
	mov	eax, [bp-16]
	add	eax, [bp-20]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 32
	setne	al
	movzx	eax, al
L119:
; JumpIfZero
	test	eax, eax
	je	L117
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-24) ++p(4) "
; Fused expression:    "++p(4) *(@-24) "
	mov	eax, [bp-24]
	inc	dword [bp-24]
L117:
; if
; RPN'ized expression: "j n == "
; Expanded expression: "(@-24) *(4) (@8) *(2) == "
; Fused expression:    "== *(@-24) *(@8) IF! "
	mov	eax, [bp-24]
	movzx	ecx, word [bp+8]
	cmp	eax, ecx
	jne	L120
; {
; RPN'ized expression: "k 0 = "
; Expanded expression: "(@-28) 0 =(4) "
; Fused expression:    "=(204) *(@-28) 0 "
	mov	eax, 0
	mov	[bp-28], eax
; while
; RPN'ized expression: "i tamCmdLine < ptrCmdLine i + *u 32 != && "
; Expanded expression: "(@-20) *(4) (@-12) *(2) < [sh&&->124] (@-16) *(4) (@-20) *(4) + *(1) 32 != &&[124] "
L122:
; Fused expression:    "< *(@-20) *(@-12) [sh&&->124] + *(@-16) *(@-20) != *ax 32 &&[124]  "
	mov	eax, [bp-20]
	movzx	ecx, word [bp-12]
	cmp	eax, ecx
	setl	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L124
	mov	eax, [bp-16]
	add	eax, [bp-20]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 32
	setne	al
	movzx	eax, al
L124:
; JumpIfZero
	test	eax, eax
	je	L123
; RPN'ized expression: "str k ++p + *u ptrCmdLine i ++p + *u = "
; Expanded expression: "(@12) *(4) (@-28) ++p(4) + (@-16) *(4) (@-20) ++p(4) + *(1) =(-1) "
; Fused expression:    "++p(4) *(@-28) + *(@12) ax push-ax ++p(4) *(@-20) + *(@-16) ax =(121) **sp *ax "
	mov	eax, [bp-28]
	inc	dword [bp-28]
	mov	ecx, eax
	mov	eax, [bp+12]
	add	eax, ecx
	push	eax
	mov	eax, [bp-20]
	inc	dword [bp-20]
	mov	ecx, eax
	mov	eax, [bp-16]
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
	movsx	eax, al
	jmp	L122
L123:
; loc                 <something> : char
; RPN'ized expression: "str k + *u 0 (something125) = "
; Expanded expression: "(@12) *(4) (@-28) *(4) + 0 =(-1) "
; Fused expression:    "+ *(@12) *(@-28) =(124) *ax 0 "
	mov	eax, [bp+12]
	add	eax, [bp-28]
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movsx	eax, al
; return
; RPN'ized expression: "TRUE "
; Expanded expression: "1 "
; Expression value: 1
; Fused expression:    "1  "
	mov	eax, 1
	jmp	L89
; }
	jmp	L121
L120:
; else
; {
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-20) ++p(4) "
; Fused expression:    "++p(4) *(@-20) "
	mov	eax, [bp-20]
	inc	dword [bp-20]
; while
; RPN'ized expression: "i tamCmdLine < ptrCmdLine i + *u 32 != && "
; Expanded expression: "(@-20) *(4) (@-12) *(2) < [sh&&->128] (@-16) *(4) (@-20) *(4) + *(1) 32 != &&[128] "
L126:
; Fused expression:    "< *(@-20) *(@-12) [sh&&->128] + *(@-16) *(@-20) != *ax 32 &&[128]  "
	mov	eax, [bp-20]
	movzx	ecx, word [bp-12]
	cmp	eax, ecx
	setl	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L128
	mov	eax, [bp-16]
	add	eax, [bp-20]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 32
	setne	al
	movzx	eax, al
L128:
; JumpIfZero
	test	eax, eax
	je	L127
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-20) ++p(4) "
; Fused expression:    "++p(4) *(@-20) "
	mov	eax, [bp-20]
	inc	dword [bp-20]
	jmp	L126
L127:
; }
L121:
; }
	jmp	L111
L112:
; return
; RPN'ized expression: "FALSE "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L89
; }
L100:
L89:
	db	0x66
	leave
	retf
L129:

section .fxnsz
	dd	L129 - _getArgvMSDOS

; glb hayWindowsNT : (void) int
section .text
	global	_hayWindowsNT
_hayWindowsNT:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         12
; loc     version : (@-4): unsigned short
; loc     menor : (@-8): unsigned short
; loc     mayor : (@-12): unsigned short
; if
; RPN'ized expression: "( hayMSDOS ) 0 == "
; Expanded expression: " hayMSDOS ()0 0 == "
; Fused expression:    "( hayMSDOS )0 == ax 0 IF! "
	db	0x9A
section .relot
	dd	L134
section .text
L134:
	dd	_hayMSDOS
	cmp	eax, 0
	jne	L132
; return
; RPN'ized expression: "FALSE "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L130
L132:
; RPN'ized expression: "version ( versionMSDOS ) = "
; Expanded expression: "(@-4)  versionMSDOS ()0 =(2) "
; Fused expression:    "( versionMSDOS )0 =(172) *(@-4) ax "
	db	0x9A
section .relot
	dd	L135
section .text
L135:
	dd	_versionMSDOS
	mov	[bp-4], ax
	movzx	eax, ax
; RPN'ized expression: "mayor version 255 & = "
; Expanded expression: "(@-12) (@-4) *(2) 255 & =(2) "
; Fused expression:    "& *(@-4) 255 =(172) *(@-12) ax "
	mov	ax, [bp-4]
	movzx	eax, ax
	and	eax, 255
	mov	[bp-12], ax
	movzx	eax, ax
; RPN'ized expression: "menor version 8 >> = "
; Expanded expression: "(@-8) (@-4) *(2) 8 >> =(2) "
; Fused expression:    ">> *(@-4) 8 =(172) *(@-8) ax "
	mov	ax, [bp-4]
	movzx	eax, ax
	sar	eax, 8
	mov	[bp-8], ax
	movzx	eax, ax
; if
; RPN'ized expression: "mayor 7 == menor 10 == && "
; Expanded expression: "(@-12) *(2) 7 == [sh&&->138] (@-8) *(2) 10 == &&[138] "
; Fused expression:    "== *(@-12) 7 [sh&&->138] == *(@-8) 10 &&[138]  "
	mov	ax, [bp-12]
	movzx	eax, ax
	cmp	eax, 7
	sete	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L138
	mov	ax, [bp-8]
	movzx	eax, ax
	cmp	eax, 10
	sete	al
	movzx	eax, al
L138:
; JumpIfZero
	test	eax, eax
	je	L136
; return
; RPN'ized expression: "FALSE "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
	jmp	L130
L136:
; if
; RPN'ized expression: "mayor 5 == menor 0 == && "
; Expanded expression: "(@-12) *(2) 5 == [sh&&->141] (@-8) *(2) 0 == &&[141] "
; Fused expression:    "== *(@-12) 5 [sh&&->141] == *(@-8) 0 &&[141]  "
	mov	ax, [bp-12]
	movzx	eax, ax
	cmp	eax, 5
	sete	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L141
	mov	ax, [bp-8]
	movzx	eax, ax
	cmp	eax, 0
	sete	al
	movzx	eax, al
L141:
; JumpIfZero
	test	eax, eax
	je	L139
; {
; return
; loc         <something> : * char

section .rodata
L143:
	db	"OS"
	times	1 db 0

section .text

section .rodata
L144:
	db	"Windows_NT"
	times	1 db 0

section .text
; RPN'ized expression: "( L143 valorMSDOS ) (something142) L144 ,b 0 == "
; Expanded expression: " L143  valorMSDOS ()4 void L144 ,b 0 == "
; Fused expression:    "( L143 , valorMSDOS )4 void L144 ,b == ax 0  "
section .relod
	dd	L145
section .text
	db	0x66, 0x68
L145:
	dd	L143
	db	0x9A
section .relot
	dd	L146
section .text
L146:
	dd	_valorMSDOS
	sub	sp, -4
section .relod
	dd	L147
section .text
	db	0x66, 0xB8
L147:
	dd	L144
	cmp	eax, 0
	sete	al
	movzx	eax, al
	jmp	L130
; }
L139:
; return
; RPN'ized expression: "FALSE "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
L130:
	db	0x66
	leave
	retf
L148:

section .fxnsz
	dd	L148 - _hayWindowsNT

; glb openDOS : (
; prm     nombre : * unsigned char
; prm     modo : unsigned char
;     ) int
section .text
	global	_openDOS
_openDOS:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     nombre : (@8): * unsigned char
; loc     modo : (@12): unsigned char
; loc     df : (@-4): int
   push ds              
   mov eax,[bp+8]       
   ror eax,4            
   mov ds,ax            
   shr eax,28           
   mov dx,ax            
   mov al,[bp+12]       
   mov ah,3dh           
   int 21h              
   pop ds               
   jc openFailed        
   movzx eax,ax         
   mov [bp-4],eax       
   jmp fin              
 openFailed:            
   mov [bp-4],dword(-1) 
 fin:                   

; return
; RPN'ized expression: "df "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
L149:
	db	0x66
	leave
	retf
L151:

section .fxnsz
	dd	L151 - _openDOS

; glb extendedOpenDOS : (
; prm     nombre : * unsigned char
; prm     modo : unsigned short
; prm     atr : unsigned short
; prm     accion : * unsigned short
; prm     error : * unsigned short
;     ) int
section .text
	global	_extendedOpenDOS
_extendedOpenDOS:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         16
; loc     nombre : (@8): * unsigned char
; loc     modo : (@12): unsigned short
; loc     atr : (@16): unsigned short
; loc     accion : (@20): * unsigned short
; loc     error : (@24): * unsigned short
; loc     df : (@-4): int
; loc     fci : (@-8): unsigned short
; RPN'ized expression: "fci accion *u = "
; Expanded expression: "(@-8) (@20) *(4) *(2) =(2) "
; Fused expression:    "*(4) (@20) =(202) *(@-8) *ax "
	mov	eax, [bp+20]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-8], eax
; loc     res : (@-12): unsigned short
; loc     flagC : (@-16): unsigned short
; RPN'ized expression: "flagC 0 = "
; Expanded expression: "(@-16) 0 =(2) "
; Fused expression:    "=(204) *(@-16) 0 "
	mov	eax, 0
	mov	[bp-16], eax
   push ds              
   mov eax,[bp+8]       
   ror eax,4            
   mov ds,ax            
   shr eax,28           
   mov si,ax            
   mov bx,[bp+12]       
   mov cx,[bp+16]       
   mov dx,[bp-8]        
   mov al,00h           
   mov ah,6ch           
   int 21h              
   pop ds               
   mov [bp-12],ax       
   mov [bp-8],cx        
   jnc openOk           
   mov [bp-16],word(1)  
 openOk:                

; if
; RPN'ized expression: "flagC "
; Expanded expression: "(@-16) *(2) "
; Fused expression:    "*(2) (@-16)  "
	mov	ax, [bp-16]
	movzx	eax, ax
; JumpIfZero
	test	eax, eax
	je	L154
; {
; RPN'ized expression: "error *u res = "
; Expanded expression: "(@24) *(4) (@-12) *(2) =(2) "
; Fused expression:    "*(4) (@24) =(170) *ax *(@-12) "
	mov	eax, [bp+24]
	mov	ebx, eax
	mov	ax, [bp-12]
	movzx	eax, ax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1  "
	mov	eax, -1
	jmp	L152
; }
	jmp	L155
L154:
; else
; {
; RPN'ized expression: "accion *u fci = "
; Expanded expression: "(@20) *(4) (@-8) *(2) =(2) "
; Fused expression:    "*(4) (@20) =(170) *ax *(@-8) "
	mov	eax, [bp+20]
	mov	ebx, eax
	mov	ax, [bp-8]
	movzx	eax, ax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "error *u 0 = "
; Expanded expression: "(@24) *(4) 0 =(2) "
; Fused expression:    "*(4) (@24) =(172) *ax 0 "
	mov	eax, [bp+24]
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; loc         <something> : int
; RPN'ized expression: "df res (something156) = "
; Expanded expression: "(@-4) (@-12) *(2) =(4) "
; Fused expression:    "=(202) *(@-4) *(@-12) "
	mov	ax, [bp-12]
	movzx	eax, ax
	mov	[bp-4], eax
; return
; RPN'ized expression: "df "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
	jmp	L152
; }
L155:
L152:
	db	0x66
	leave
	retf
L157:

section .fxnsz
	dd	L157 - _extendedOpenDOS

; glb closeDOS : (
; prm     df : int
;     ) int
section .text
	global	_closeDOS
_closeDOS:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     df : (@8): int
; loc     err : (@-4): int
   mov ebx,[bp+8]       
   mov ah,3eh           
   int 21h              
   movzx eax,ax         
   mov [bp-4],eax       
   jnc closeOk          
   mov [bp-4],dword(-1) 
 closeOk:               

; return
; RPN'ized expression: "err "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
L158:
	db	0x66
	leave
	retf
L160:

section .fxnsz
	dd	L160 - _closeDOS

; glb commitFileDOS : (
; prm     df : int
;     ) int
section .text
	global	_commitFileDOS
_commitFileDOS:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     df : (@8): int
; loc     err : (@-4): int
   mov ebx,[bp+8]       
   mov ah,68h           
   int 21h              
   movzx eax,ax         
   mov [bp-4],eax       
   jnc commitOk         
   mov [bp-4],dword(-1) 
 commitOk:              

; return
; RPN'ized expression: "err "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
L161:
	db	0x66
	leave
	retf
L163:

section .fxnsz
	dd	L163 - _commitFileDOS

; glb createDOS : (
; prm     nombre : * unsigned char
; prm     atributo : unsigned short
;     ) int
section .text
	global	_createDOS
_createDOS:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     nombre : (@8): * unsigned char
; loc     atributo : (@12): unsigned short
; loc     df : (@-4): int
   push ds              
   mov eax,[bp+8]       
   ror eax,4            
   mov ds,ax            
   shr eax,28           
   mov dx,ax            
   mov cx,[bp+12]       
   mov ah,3ch           
   int 21h              
   pop ds               
   movzx eax,ax         
   mov [bp-4],eax       
   jnc createOk         
   mov [bp-4],dword(-1) 
 createOk:              

; return
; RPN'ized expression: "df "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
L164:
	db	0x66
	leave
	retf
L166:

section .fxnsz
	dd	L166 - _createDOS

; glb readDOS : (
; prm     df : int
; prm     buf : * char
; prm     n : int
;     ) int
section .text
	global	_readDOS
_readDOS:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     df : (@8): int
; loc     buf : (@12): * char
; loc     n : (@16): int
; {
; loc         operados : (@-4): int
   mov ebx,[bp+8]       
   mov eax,[bp+12]      
   ror eax,4            
   mov es,ax            
   shr eax,12           
   mov dx,ax            
   mov ecx,[bp+16]      
   mov ah,3fh    
   push ds              
   push es              
   pop ds               
   int 21h              
   pop ds               
   movzx eax,ax         
   mov [bp-4],eax       
   jnc .opOk            
   mov [bp-4],dword(-1) 
 .opOk:                 

; return
; RPN'ized expression: "operados "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
	jmp	L167
; }
L167:
	db	0x66
	leave
	retf
L169:

section .fxnsz
	dd	L169 - _readDOS

; glb writeDOS : (
; prm     df : int
; prm     buf : * char
; prm     n : int
;     ) int
section .text
	global	_writeDOS
_writeDOS:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     df : (@8): int
; loc     buf : (@12): * char
; loc     n : (@16): int
; {
; loc         operados : (@-4): int
   mov ebx,[bp+8]       
   mov eax,[bp+12]      
   ror eax,4            
   mov es,ax            
   shr eax,12           
   mov dx,ax            
   mov ecx,[bp+16]      
   mov ah,40h    
   push ds              
   push es              
   pop ds               
   int 21h              
   pop ds               
   movzx eax,ax         
   mov [bp-4],eax       
   jnc .opOk            
   mov [bp-4],dword(-1) 
 .opOk:                 

; return
; RPN'ized expression: "operados "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
	jmp	L170
; }
L170:
	db	0x66
	leave
	retf
L172:

section .fxnsz
	dd	L172 - _writeDOS

; glb lseekDOS : (
; prm     df : int
; prm     pos : * unsigned
; prm     whence : int
;     ) int
section .text
	global	_lseekDOS
_lseekDOS:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         12
; loc     df : (@8): int
; loc     pos : (@12): * unsigned
; loc     whence : (@16): int
; loc     posL : (@-4): unsigned short
; loc     <something> : * unsigned short
; RPN'ized expression: "posL pos (something175) *u = "
; Expanded expression: "(@-4) (@12) *(4) *(2) =(2) "
; Fused expression:    "*(4) (@12) =(202) *(@-4) *ax "
	mov	eax, [bp+12]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-4], eax
; loc     posH : (@-8): unsigned short
; loc     <something> : unsigned short
; loc     <something> : * unsigned
; RPN'ized expression: "posH pos (something177) *u 16 >> (something176) = "
; Expanded expression: "(@-8) (@12) *(4) *(4) 16 >>u unsigned short =(2) "
; Fused expression:    "*(4) (@12) >>u *ax 16 unsigned short =(204) *(@-8) ax "
	mov	eax, [bp+12]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	shr	eax, 16
	movzx	eax, ax
	mov	[bp-8], eax
; loc     whenceByte : (@-12): unsigned char
; RPN'ized expression: "whenceByte whence = "
; Expanded expression: "(@-12) (@16) *(4) =(1) "
; Fused expression:    "=(204) *(@-12) *(@16) "
	mov	eax, [bp+16]
	mov	[bp-12], eax
   mov ebx,[bp+8]       
   mov dx,[bp-4]        
   mov cx,[bp-8]        
   mov al,[bp-12]       
   mov ah,42h           
   int 21h              
   jnc lseekOk          
   mov eax,dword(-1)    
   db  0x66             
   leave                
   retf                 
 lseekOk:               
   mov [bp-4],ax        
   mov [bp-8],dx        

; loc     <something> : unsigned
; loc     <something> : unsigned
; RPN'ized expression: "pos *u posH (something178) 16 << posL (something179) + = "
; Expanded expression: "(@12) *(4) (@-8) *(2) 16 << (@-4) *(2) + =(4) "
; Fused expression:    "*(4) (@12) push-ax << *(@-8) 16 + ax *(@-4) =(204) **sp ax "
	mov	eax, [bp+12]
	push	eax
	mov	ax, [bp-8]
	movzx	eax, ax
	shl	eax, 16
	movzx	ecx, word [bp-4]
	add	eax, ecx
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
L173:
	db	0x66
	leave
	retf
L180:

section .fxnsz
	dd	L180 - _lseekDOS

; glb getdiskDOS : (void) int
section .text
	global	_getdiskDOS
_getdiskDOS:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
   mov ah, 19h          
   int 21h              
   movzx eax,al         

L181:
	db	0x66
	leave
	retf
L183:

section .fxnsz
	dd	L183 - _getdiskDOS

; glb setdiskDOS : (
; prm     drive : int
;     ) int
section .text
	global	_setdiskDOS
_setdiskDOS:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     drive : (@8): int
   mov dl,[bp+8]        
   mov ah,0eh           
   int 21h              
   movzx eax,al         

L184:
	db	0x66
	leave
	retf
L186:

section .fxnsz
	dd	L186 - _setdiskDOS

; glb getcurdirDOS : (
; prm     drive : int
; prm     directorio : * char
;     ) int
section .text
	global	_getcurdirDOS
_getcurdirDOS:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     drive : (@8): int
; loc     directorio : (@12): * char
; loc     res : (@-4): int
; RPN'ized expression: "res 0 = "
; Expanded expression: "(@-4) 0 =(4) "
; Fused expression:    "=(204) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], eax
; RPN'ized expression: "drive ++p "
; Expanded expression: "(@8) ++p(4) "
; Fused expression:    "++p(4) *(@8) "
	mov	eax, [bp+8]
	inc	dword [bp+8]
   push ds              
   mov dl,[bp+8]        
   mov eax,[bp+12]      
   ror eax,4            
   mov ds,ax            
   shr eax,28           
   mov si,ax            
   mov ah,47h           
   int 21h              
   pop ds               
   jnc getcurdirOk      
   mov [bp-4],dword(-1) 
 getcurdirOk:           

; return
; RPN'ized expression: "res "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
L187:
	db	0x66
	leave
	retf
L189:

section .fxnsz
	dd	L189 - _getcurdirDOS

; glb chdirDOS : (
; prm     path : * char
;     ) int
section .text
	global	_chdirDOS
_chdirDOS:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     path : (@8): * char
; loc     res : (@-4): int
; RPN'ized expression: "res 0 = "
; Expanded expression: "(@-4) 0 =(4) "
; Fused expression:    "=(204) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], eax
   push ds              
   mov eax,[bp+8]       
   ror eax,4            
   mov ds,ax            
   shr eax,28           
   mov dx,ax            
   mov ah,3bh           
   int 21h              
   pop ds               
   jnc chdirOk          
   mov [bp-4],dword(-1) 
 chdirOk:               

; return
; RPN'ized expression: "res "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
L190:
	db	0x66
	leave
	retf
L192:

section .fxnsz
	dd	L192 - _chdirDOS

; glb findfirstDOS : (
; prm     pathname : * char
; prm     ffblk : * struct ffblk
; prm     attrib : int
;     ) int
section .text
	global	_findfirstDOS
_findfirstDOS:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     pathname : (@8): * char
; loc     ffblk : (@12): * struct ffblk
; loc     attrib : (@16): int
; loc     res : (@-4): int
; RPN'ized expression: "res 0 = "
; Expanded expression: "(@-4) 0 =(4) "
; Fused expression:    "=(204) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], eax
   push ds              
   mov ah,2fh           
   int 21h              
   push es              
   push bx              
   mov eax,[bp+12]      
   ror eax,4            
   mov ds,ax            
   shr eax,28           
   mov dx,ax            
   mov ah,1ah           
   int 21h              
   mov cx,[bp+16]       
   mov eax,[bp+8]       
   ror eax,4            
   mov ds,ax            
   shr eax,28           
   mov dx,ax            
   mov ah,4eh           
   int 21h              
   pushf                
   pop cx               
   xchg ax,bx           
   mov ah,1ah           
   pop dx               
   pop ds               
   int 21h              
   push cx              
   popf                 
   pop ds               
   jnc findfirstOk      
   mov [bp-4],dword(-1) 
 findfirstOk:           

; return
; RPN'ized expression: "res "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
L193:
	db	0x66
	leave
	retf
L195:

section .fxnsz
	dd	L195 - _findfirstDOS

; glb findnextDOS : (
; prm     ffblk : * struct ffblk
;     ) int
section .text
	global	_findnextDOS
_findnextDOS:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     ffblk : (@8): * struct ffblk
; loc     res : (@-4): int
; RPN'ized expression: "res 0 = "
; Expanded expression: "(@-4) 0 =(4) "
; Fused expression:    "=(204) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], eax
   push ds              
   mov ah,2fh           
   int 21h              
   push es              
   push bx              
   mov eax,[bp+12]      
   ror eax,4            
   mov ds,ax            
   shr eax,28           
   mov dx,ax            
   mov ah,1ah           
   int 21h              
   mov ah,4fh           
   int 21h              
   pushf                
   pop cx               
   xchg ax,bx           
   mov ah,1ah           
   pop dx               
   pop ds               
   int 21h              
   push cx              
   popf                 
   pop ds               
   jnc findnextOk       
   mov [bp-4],dword(-1) 
 findnextOk:            

; return
; RPN'ized expression: "res "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
L196:
	db	0x66
	leave
	retf
L198:

section .fxnsz
	dd	L198 - _findnextDOS


	extern	_strcmp

; Syntax/declaration table/stack:
; Bytes used: 6110/40960


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
; Ident argcMSDOS
; Ident getArgvMSDOS
; Ident openDOS
; Ident nombre
; Ident extendedOpenDOS
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
; Ident size_t
; Ident memset
; Ident memcpy
; Ident memmove
; Ident memchr
; Ident memcmp
; Ident strcpy
; Ident strncpy
; Ident strxfrm
; Ident strcat
; Ident strncat
; Ident strlen
; Ident strchr
; Ident strrchr
; Ident strstr
; Ident strspn
; Ident strcspn
; Ident strpbrk
; Ident strtok
; Ident strcmp
; Ident strncmp
; Ident strcoll
; Ident strerror
; Ident exitCode
; Ident directorio
; Bytes used: 2228/16384

; Next label number: 199
; Compilation succeeded.
