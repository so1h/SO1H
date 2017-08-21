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
; glb modoAp_t : unsigned short
; glb tramaDWords_t : struct <something>
; glb tramaWords_t : struct <something>
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; glb tramaBytes_t : struct <something>
; glb trama_t : union <something>
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
; glb bloque_t : struct <something>
; glb ptrBloque_t : * struct <something>
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
; glb estado_t : int
; glb dfa_t : struct <something>
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
; RPN'ized expression: "80 "
; Expanded expression: "80 "
; Expression value: 80
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
; glb descProceso_t : struct <something>
; glb descThread_t : struct <something>
; glb tipoFichero_t : int
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
; glb descFichero_t : struct <something>
; glb tipoRecurso_t : int
; glb open_t : * (
; prm     dfs : int
; prm     modo : unsigned short
;     ) int
; glb release_t : * (
; prm     dfs : int
;     ) int
; glb read_t : * (
; prm     dfs : int
; prm     dir : * unsigned char
; prm     nbytes : unsigned short
;     ) int
; glb aio_read_t : * (
; prm     dfs : int
; prm     dir : * unsigned char
; prm     nbytes : unsigned short
;     ) int
; glb write_t : * (
; prm     dfs : int
; prm     dir : * unsigned char
; prm     nbytes : unsigned short
;     ) int
; glb aio_write_t : * (
; prm     dfs : int
; prm     dir : * unsigned char
; prm     nbytes : unsigned short
;     ) int
; glb lseek_t : * (
; prm     dfs : int
; prm     pos : int
; prm     whence : unsigned short
;     ) int
; glb fcntl_t : * (
; prm     dfs : int
; prm     cmd : unsigned short
; prm     arg : unsigned short
;     ) int
; glb ioctl_t : * (
; prm     dfs : int
; prm     request : unsigned short
; prm     arg : unsigned short
;     ) int
; glb eliminar_t : * (
; prm     pindx : int
;     ) int
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; glb descRecurso_t : struct <something>
; glb info_t : struct <something>
; glb cabecera_t : struct <something>
; RPN'ized expression: "16 1 + "
; Expanded expression: "17 "
; Expression value: 17
; RPN'ized expression: "16 2 + "
; Expanded expression: "18 "
; Expression value: 18
; RPN'ized expression: "2010 1 + "
; Expanded expression: "2011 "
; Expression value: 2011
; RPN'ized expression: "2010 2 + "
; Expanded expression: "2012 "
; Expression value: 2012
; RPN'ized expression: "20 1 + "
; Expanded expression: "21 "
; Expression value: 21
; RPN'ized expression: "20 2 + "
; Expanded expression: "22 "
; Expression value: 22
; RPN'ized expression: "14 1 + "
; Expanded expression: "15 "
; Expression value: 15
; RPN'ized expression: "14 2 + "
; Expanded expression: "16 "
; Expression value: 16
; RPN'ized expression: "16 16 + "
; Expanded expression: "32 "
; Expression value: 32
; RPN'ized expression: "2010 16 + "
; Expanded expression: "2026 "
; Expression value: 2026
; RPN'ized expression: "2010 1 + "
; Expanded expression: "2011 "
; Expression value: 2011
; RPN'ized expression: "2010 1 + "
; Expanded expression: "2011 "
; Expression value: 2011
; RPN'ized expression: "16 1 + "
; Expanded expression: "17 "
; Expression value: 17
; RPN'ized expression: "2010 1 + "
; Expanded expression: "2011 "
; Expression value: 2011
; RPN'ized expression: "20 14 + "
; Expanded expression: "34 "
; Expression value: 34
; glb e2PFR_t : struct <something>
; glb cPFR_t : int
; glb sigThread_t : * () int
; glb activarThread_t : * (
; prm     tindx : int
;     ) void
; glb buscarNuevoThreadActual_t : * (void) void
; glb bloquearThreadActual_t : * (
; prm     rindx : int
;     ) void
; glb descSO1H_t : struct <something>
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
; glb nombreDF_t : [16u] char
; RPN'ized expression: "40 "
; Expanded expression: "40 "
; Expression value: 40
; glb comandoDF_t : [40u] char
; glb tipoDF_t : int
; glb entradaDF_t : struct <something>
; glb dirInicial : unsigned
; glb dirCargaFichero : unsigned
; glb dirFinal : unsigned
; glb reubicacion_t : struct <something>
; glb reubicacion : * struct <something>
; glb numER : unsigned
; glb ptrIndProcesoActual : * int
; glb ptrIndThreadActual : * int
; glb ptrTramaThread : * * union <something>
; glb ptrActivarAlEpilogo : * int
; glb ptrDescProceso : * struct <something>
; glb tamDescProceso : unsigned short
; glb ptrDescThread : * struct <something>
; glb tamDescThread : unsigned short
; glb ptrDescFichero : * struct <something>
; glb ptrDescRecurso : * struct <something>
; glb ptrC2cPFR : * struct <something>
; glb ptrE2PFR : * struct <something>
; glb ptrNivelActivacionSO1H : * int
; glb ptrEnHalt : * int
; glb ptrHayTic : * int
; glb ptrCcbAlEpilogo : * * struct <something>
; glb ptrSS_Thread : * unsigned short
; glb ptrSP_Thread : * unsigned short
; glb ptrSS_Kernel : * unsigned short
; glb ptrSP0_Kernel : * unsigned short
; glb SP0_SO1H : unsigned short
; glb ptrContRodajas : * unsigned
; glb ptrContTicsRodaja : * int
; glb ptrVIOrg : * * (void) void
; glb sigThread : * () int
; glb activarThread : * (
; prm     tindx : int
;     ) void
; glb buscarNuevoThreadActual : * (void) void
; glb bloquearThreadActual : * (
; prm     rindx : int
;     ) void
; glb ptrListaLibres : * * struct <something>
; glb ptrTamBloqueMax : * unsigned short
; glb inicProcesos_x : (void) void
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
; glb isalnum : (
; prm     <something> : int
;     ) int
; glb isalpha : (
; prm     <something> : int
;     ) int
; glb isblank : (
; prm     <something> : int
;     ) int
; glb iscntrl : (
; prm     <something> : int
;     ) int
; glb isdigit : (
; prm     <something> : int
;     ) int
; glb isgraph : (
; prm     <something> : int
;     ) int
; glb islower : (
; prm     <something> : int
;     ) int
; glb isprint : (
; prm     <something> : int
;     ) int
; glb ispunct : (
; prm     <something> : int
;     ) int
; glb isspace : (
; prm     <something> : int
;     ) int
; glb isupper : (
; prm     <something> : int
;     ) int
; glb isxdigit : (
; prm     <something> : int
;     ) int
; glb tolower : (
; prm     <something> : int
;     ) int
; glb toupper : (
; prm     <something> : int
;     ) int
; glb inicKernel : (void) void
section .text
	global	_inicKernel
_inicKernel:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          8
; loc     dirStartKernel : (@-4): unsigned
; RPN'ized expression: "dirStartKernel dirInicial reubicacion 0 + *u &u entradaDF -> *u &u start -> *u + = "
; Expanded expression: "(@-4) dirInicial *(4) reubicacion *(4) 0 + 0 + 64 + *(4) + =(4) "
; Fused expression:    "dirInicial push-ax reubicacion + *ax 0 + ax 0 + ax 64 + **sp *ax =(204) *(@-4) ax "
section .relod
	dd	L3
section .text
	db	0x66, 0xB8
L3:
	dd	_dirInicial
	push	eax
section .relod
	dd	L4
section .text
	db	0x66, 0xB8
L4:
	dd	_reubicacion
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 64
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	mov	[bp-4], eax
; loc     main_t : * (void) int
; loc     cargarDescSO1H_t : * (
; prm         descSO1H : * struct <something>
;         ) void
; loc     dirCargarDescSO1H : (@-8): unsigned
; loc     <something> : * (void) int
; RPN'ized expression: "dirCargarDescSO1H ( dirStartKernel (something5) ) = "
; Expanded expression: "(@-8)  (@-4) *(4) ()0 =(4) "
; Fused expression:    "( *(4) (@-4) )0 =(204) *(@-8) ax "
	mov	eax, [bp-4]
	db	0x9A
section .relot
	dd	L6
section .text
L6:
	dd	L7
L7:
	mov	si, sp
	add	word [ss:si], L8 - L7
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L8:
	mov	[bp-8], eax

section .rodata
L9:
	db	10,10," dirCargarDescSO1H = "
	times	1 db 0

section .text
; RPN'ized expression: "( L9 printStrVideo ) "
; Expanded expression: " L9  printStrVideo ()4 "
; Fused expression:    "( L9 , printStrVideo )4 "
section .relod
	dd	L10
section .text
	db	0x66, 0x68
L10:
	dd	L9
	db	0x9A
section .relot
	dd	L11
section .text
L11:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 8 , dirCargarDescSO1H printLHexVideo ) "
; Expanded expression: " 8  (@-8) *(4)  printLHexVideo ()8 "
; Fused expression:    "( 8 , *(4) (@-8) , printLHexVideo )8 "
	push	dword 8
	push	dword [bp-8]
	db	0x9A
section .relot
	dd	L12
section .text
L12:
	dd	_printLHexVideo
	sub	sp, -8
; loc     <something> : * (
; prm         descSO1H : * struct <something>
;         ) void
; loc     <something> : * struct <something>
; RPN'ized expression: "( ptrIndProcesoActual &u (something14) dirCargarDescSO1H (something13) ) "
; Expanded expression: " ptrIndProcesoActual  (@-8) *(4) ()4 "
; Fused expression:    "( ptrIndProcesoActual , *(4) (@-8) )4 "
section .relod
	dd	L15
section .text
	db	0x66, 0x68
L15:
	dd	_ptrIndProcesoActual
	mov	eax, [bp-8]
	db	0x9A
section .relot
	dd	L16
section .text
L16:
	dd	L17
L17:
	mov	si, sp
	add	word [ss:si], L18 - L17
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L18:
	sub	sp, -4

section .rodata
L19:
	db	10," dirDescSO1H = "
	times	1 db 0

section .text
; RPN'ized expression: "( L19 printStrVideo ) "
; Expanded expression: " L19  printStrVideo ()4 "
; Fused expression:    "( L19 , printStrVideo )4 "
section .relod
	dd	L20
section .text
	db	0x66, 0x68
L20:
	dd	L19
	db	0x9A
section .relot
	dd	L21
section .text
L21:
	dd	_printStrVideo
	sub	sp, -4
; loc     <something> : * struct <something>
; RPN'ized expression: "( 8 , ptrIndProcesoActual &u (something22) printLHexVideo ) "
; Expanded expression: " 8  ptrIndProcesoActual  printLHexVideo ()8 "
; Fused expression:    "( 8 , ptrIndProcesoActual , printLHexVideo )8 "
	push	dword 8
section .relod
	dd	L23
section .text
	db	0x66, 0x68
L23:
	dd	_ptrIndProcesoActual
	db	0x9A
section .relot
	dd	L24
section .text
L24:
	dd	_printLHexVideo
	sub	sp, -8

section .rodata
L25:
	db	10," ptrIndProcesoActual = "
	times	1 db 0

section .text
; RPN'ized expression: "( L25 printStrVideo ) "
; Expanded expression: " L25  printStrVideo ()4 "
; Fused expression:    "( L25 , printStrVideo )4 "
section .relod
	dd	L26
section .text
	db	0x66, 0x68
L26:
	dd	L25
	db	0x9A
section .relot
	dd	L27
section .text
L27:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 8 , ptrIndProcesoActual printLHexVideo ) "
; Expanded expression: " 8  ptrIndProcesoActual *(4)  printLHexVideo ()8 "
; Fused expression:    "( 8 , ptrIndProcesoActual *(4) ax , printLHexVideo )8 "
	push	dword 8
section .relod
	dd	L28
section .text
	db	0x66, 0xB8
L28:
	dd	_ptrIndProcesoActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L29
section .text
L29:
	dd	_printLHexVideo
	sub	sp, -8

section .rodata
L30:
	db	10," *ptrIndProcesoActual = "
	times	1 db 0

section .text
; RPN'ized expression: "( L30 printStrVideo ) "
; Expanded expression: " L30  printStrVideo ()4 "
; Fused expression:    "( L30 , printStrVideo )4 "
section .relod
	dd	L31
section .text
	db	0x66, 0x68
L31:
	dd	L30
	db	0x9A
section .relot
	dd	L32
section .text
L32:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 1 , ptrIndProcesoActual *u printIntVideo ) "
; Expanded expression: " 1  ptrIndProcesoActual *(4) *(4)  printIntVideo ()8 "
; Fused expression:    "( 1 , ptrIndProcesoActual *(4) ax *(4) ax , printIntVideo )8 "
	push	dword 1
section .relod
	dd	L33
section .text
	db	0x66, 0xB8
L33:
	dd	_ptrIndProcesoActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L34
section .text
L34:
	dd	_printIntVideo
	sub	sp, -8
; RPN'ized expression: "( inicProcesos_x ) "
; Expanded expression: " inicProcesos_x ()0 "
; Fused expression:    "( inicProcesos_x )0 "
	db	0x9A
section .relot
	dd	L35
section .text
L35:
	dd	_inicProcesos_x
; RPN'ized expression: "( inicGM_x ) "
; Expanded expression: " inicGM_x ()0 "
; Fused expression:    "( inicGM_x )0 "
	db	0x9A
section .relot
	dd	L36
section .text
L36:
	dd	_inicGM_x

section .rodata
L37:
	db	10,10," ================"
	times	1 db 0

section .text
; RPN'ized expression: "( L37 printStrVideo ) "
; Expanded expression: " L37  printStrVideo ()4 "
; Fused expression:    "( L37 , printStrVideo )4 "
section .relod
	dd	L38
section .text
	db	0x66, 0x68
L38:
	dd	L37
	db	0x9A
section .relot
	dd	L39
section .text
L39:
	dd	_printStrVideo
	sub	sp, -4
; while
; RPN'ized expression: "TRUE "
; Expanded expression: "1 "
; Expression value: 1
L40:
	jmp	L40
L41:
nop
; return
L1:
	db	0x66
	leave
	retf
L42:

section .fxnsz noalloc
	dd	L42 - _inicKernel


	extern	_dirInicial
	extern	_reubicacion
	extern	_printStrVideo
	extern	_printLHexVideo
	extern	_ptrIndProcesoActual
	extern	_printIntVideo
	extern	_inicProcesos_x
	extern	_inicGM_x

; Syntax/declaration table/stack:
; Bytes used: 10860/40960


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
; Ident modoAp_t
; Ident DS
; Ident ES
; Ident EDI
; Ident ESI
; Ident EBP
; Ident ESP
; Ident EBX
; Ident EDX
; Ident ECX
; Ident EAX
; Ident IP
; Ident CS
; Ident Flags
; Ident tramaDWords_t
; Ident DI
; Ident rDI
; Ident SI
; Ident rSI
; Ident BP
; Ident rBP
; Ident SP
; Ident rSP
; Ident BX
; Ident rBX
; Ident DX
; Ident rDX
; Ident CX
; Ident rCX
; Ident AX
; Ident rAX
; Ident tramaWords_t
; Ident BL
; Ident BH
; Ident rB
; Ident DL
; Ident DH
; Ident rD
; Ident CL
; Ident CH
; Ident rC
; Ident AL
; Ident AH
; Ident rA
; Ident tramaBytes_t
; Ident td
; Ident tw
; Ident tb
; Ident trama_t
; Ident tam
; Ident sig
; Ident ant
; Ident aux
; Ident relleno
; Ident bloque_t
; Ident ptrBloque_t
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
; Ident libre
; Ident preparado
; Ident ejecutandose
; Ident bloqueado
; Ident estado_t
; Ident modoAp
; Ident dfs
; Ident pos
; Ident dfa_t
; Ident pid
; Ident noStatus
; Ident status
; Ident ppindx
; Ident hpindx
; Ident c2cHijos
; Ident c2cThreads
; Ident CSProc
; Ident tamCodigo
; Ident desplBSS
; Ident desplPila
; Ident tamFichero
; Ident programa
; Ident comando
; Ident nfa
; Ident tfa
; Ident uid
; Ident gid
; Ident descProceso_t
; Ident tid
; Ident estado
; Ident esperandoPor
; Ident trama
; Ident ptindx
; Ident htindx
; Ident pindx
; Ident SSThread
; Ident SP0
; Ident descThread_t
; Ident flibre
; Ident fRegular
; Ident fedBloques
; Ident fedCaracteres
; Ident tuberia
; Ident tipoFichero_t
; Ident tipo
; Ident nombre
; Ident rindx
; Ident menor
; Ident shareMode
; Ident contAp_L
; Ident contAp_E
; Ident descFichero_t
; Ident rLibre
; Ident rDCaracteres
; Ident rDBloques
; Ident rTuberia
; Ident rGP
; Ident rGM
; Ident rSF
; Ident rOtro
; Ident tipoRecurso_t
; Ident open_t
; Ident modo
; Ident release_t
; Ident read_t
; Ident dir
; Ident nbytes
; Ident aio_read_t
; Ident write_t
; Ident aio_write_t
; Ident lseek_t
; Ident whence
; Ident fcntl_t
; Ident cmd
; Ident ioctl_t
; Ident request
; Ident eliminar_t
; Ident tindx
; Ident c2cFichRec
; Ident numVI
; Ident nVInt
; Ident irq
; Ident isr
; Ident open
; Ident release
; Ident read
; Ident aio_read
; Ident write
; Ident aio_write
; Ident lseek
; Ident fcntl
; Ident ioctl
; Ident eliminar
; Ident descRecurso_t
; Ident SP0_So1
; Ident IMR
; Ident modoSO1
; Ident ptrDebugWord
; Ident info_t
; Ident signatura
; Ident bytesUltSector
; Ident sectores
; Ident numDirReub
; Ident numParCabecera
; Ident minAlloc
; Ident maxAlloc
; Ident SS0
; Ident checkSum
; Ident IP0
; Ident CS0
; Ident offTablaReub
; Ident numOverlay
; Ident cabecera_t
; Ident Libres
; Ident Ocupados
; Ident e2DescProceso
; Ident e2DescThread
; Ident e2DescFichero
; Ident e2DescRecurso
; Ident e2Hijos
; Ident e2Threads
; Ident e2Preparados
; Ident e2Urgentes
; Ident e2POrdenados
; Ident e2TDormidos
; Ident e2FichRec
; Ident e2PFR_t
; Ident DPLibres
; Ident DPOcupados
; Ident DTLibres
; Ident DTOcupados
; Ident TPreparados
; Ident TUrgentes
; Ident POrdenados
; Ident TDormidos
; Ident DFLibres
; Ident DFOcupados
; Ident DRLibres
; Ident DROcupados
; Ident numColasPFR
; Ident cPFR_t
; Ident sigThread_t
; Ident activarThread_t
; Ident buscarNuevoThreadActual_t
; Ident bloquearThreadActual_t
; Ident ptrIndProcesoActual
; Ident ptrIndThreadActual
; Ident ptrTramaThread
; Ident ptrActivarAlEpilogo
; Ident ptrDescProceso
; Ident tamDescProceso
; Ident ptrDescThread
; Ident tamDescThread
; Ident ptrDescFichero
; Ident ptrDescRecurso
; Ident ptrC2cPFR
; Ident ptrE2PFR
; Ident ptrNivelActivacionSO1H
; Ident ptrEnHalt
; Ident ptrHayTic
; Ident ptrCcbAlEpilogo
; Ident ptrSS_Thread
; Ident ptrSP_Thread
; Ident ptrSS_Kernel
; Ident ptrSP0_Kernel
; Ident SP0_SO1H
; Ident ptrContRodajas
; Ident ptrContTicsRodaja
; Ident ptrVIOrg
; Ident sigThread
; Ident activarThread
; Ident buscarNuevoThreadActual
; Ident bloquearThreadActual
; Ident ptrListaLibres
; Ident ptrTamBloqueMax
; Ident descSO1H_t
; Ident nombreDF_t
; Ident comandoDF_t
; Ident so1h_0_DF
; Ident datos_DF
; Ident so1h_k_DF
; Ident proceso_DF
; Ident dram_DF
; Ident tipoDF_t
; Ident start
; Ident otro
; Ident SS
; Ident entradaDF_t
; Ident dirInicial
; Ident dirCargaFichero
; Ident dirFinal
; Ident entradaDF
; Ident origen
; Ident destino
; Ident reubicacion_t
; Ident reubicacion
; Ident numER
; Ident inicProcesos_x
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
; Ident isalnum
; Ident isalpha
; Ident isblank
; Ident iscntrl
; Ident isdigit
; Ident isgraph
; Ident islower
; Ident isprint
; Ident ispunct
; Ident isspace
; Ident isupper
; Ident isxdigit
; Ident tolower
; Ident toupper
; Ident inicKernel
; Bytes used: 3949/16384

; Next label number: 43
; Compilation succeeded.
