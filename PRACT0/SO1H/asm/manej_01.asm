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
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
; RPN'ized expression: "80 "
; Expanded expression: "80 "
; Expression value: 80
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
; glb descProcesoExt_t : struct <something>
; glb descThreadExt_t : struct <something>
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
; glb descProceso : [16u] struct <something>
; RPN'ized expression: "2010 "
; Expanded expression: "2010 "
; Expression value: 2010
; glb descThread : [2010u] struct <something>
; RPN'ized expression: "20 "
; Expanded expression: "20 "
; Expression value: 20
; glb descFichero : [20u] struct <something>
; RPN'ized expression: "14 "
; Expanded expression: "14 "
; Expression value: 14
; glb descRecurso : [14u] struct <something>
; RPN'ized expression: "numColasPFR "
; Expanded expression: "12 "
; Expression value: 12
; glb c2cPFR : [12u] struct <something>
; glb e2PFR : struct <something>
; glb descCcbAlEpilogo : struct <something>
; glb ccbAlEpilogo : * struct <something>
; glb tramaThread : * union <something>
; glb tramaTarea : * union <something>
; glb indThreadActual : int
; glb indProcesoActual : int
; glb indThreadDeSuperficie : int
; glb contRodajas : unsigned
; glb contTicsRodaja : int
; glb contadorTimer00 : unsigned short
; glb contOcioso : int
; glb nuevoPid : (void) int
; glb nuevoTid : (void) int
; glb indice : (
; prm     tid : int
;     ) int
; glb sigThread : (void) int
; glb activarThread : (
; prm     tindx : int
;     ) int
; glb registrarEnPOrdenados : (
; prm     pindx : int
;     ) void
; glb crearThread : (
; prm     funcion : * (
; prm         <something> : * void
;         ) * void
; prm     SP0 : unsigned short
; prm     arg : * void
; prm     pindx : int
;     ) int
; glb crearProceso : (
; prm     segmento : unsigned short
; prm     tam : unsigned short
; prm     tamFich : unsigned
; prm     programa : * char
; prm     comando : * char
; prm     pindx : int
;     ) int
; glb inicProcesos : (void) void
; glb resetPids : (void) void
; glb resetTids : (void) void
; glb terminarThreadIndx : (
; prm     tindx : int
;     ) int
; glb eliminarThreadIndx : (
; prm     tindx : int
;     ) int
; glb terminarProcIndx : (
; prm     pindx : int
;     ) int
; glb eliminarProcIndx : (
; prm     pindx : int
;     ) int
; glb matarThreadIndx : (
; prm     tindx : int
;     ) int
; glb matarProcIndx : (
; prm     pindx : int
;     ) int
; glb link_procs : (void) void
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
; glb SS_Thread : unsigned short
; glb SP_Thread : unsigned short
; glb SS_Tarea : unsigned short
; glb SP_Tarea : unsigned short
; glb nivelActivacionSO1H : int
; glb nVIntActual : int
; glb enHalt : int
; glb activarAlEpilogo1 : int
; glb hayTic : int
; glb setKernelStack : (void) void
; glb setThreadStack : (
; prm     SS_Thread : unsigned short
; prm     SP_Thread : unsigned short
;     ) void
; glb reg_DL : (void) unsigned
; glb prepararDesbloqueadosUrgentes : (void) void
; glb buscarNuevoThreadActual : (void) void
; glb bloquearThreadActual : (
; prm     rindx : int
;     ) void
; glb thread_attribs_t : struct <something>
; glb thread_create : (
; prm     tid : * int
; prm     attribs : * struct <something>
; prm     funcionInicial : * * void
; prm     arg : * void
;     ) int
; glb thread_join : (
; prm     tid : int
; prm     res : * * void
;     ) int
; glb thread_exit : (
; prm     res : * void
;     ) void
; glb thread_yield : (void) int
; glb thread_self : (void) int
; glb doKill : (
; prm     pindx : int
;     ) void
; glb kk_fork : (void) int
; glb preEjecutar : (
; prm     nombre : * char
; prm     comando : * char
; prm     pindx : int
;     ) int
; glb bloquearEsperandoHijo : (
; prm     hpindx : int
;     ) void
section .text
	global	_bloquearEsperandoHijo
_bloquearEsperandoHijo:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     hpindx : (@8): int
; RPN'ized expression: "descProceso indProcesoActual + *u &u hpindx -> *u hpindx = "
; Expanded expression: "descProceso indProcesoActual *(4) 292 * + 16 + (@8) *(4) =(4) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 16 =(204) *ax *(@8) "
section .relod
	dd	L3
section .text
	db	0x66, 0xB8
L3:
	dd	_descProceso
	push	eax
section .relod
	dd	L4
section .text
	db	0x66, 0xB8
L4:
	dd	_indProcesoActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 16
	mov	ebx, eax
	mov	eax, [bp+8]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : int
; RPN'ized expression: "( 1 -u (something5) bloquearThreadActual ) "
; Expanded expression: " -1  bloquearThreadActual ()4 "
; Fused expression:    "( -1 , bloquearThreadActual )4 "
	push	dword -1
	db	0x9A
section .relot
	dd	L6
section .text
L6:
	dd	_bloquearThreadActual
	sub	sp, -4
L1:
	db	0x66
	leave
	retf
L7:

section .fxnsz noalloc
	dd	L7 - _bloquearEsperandoHijo

; glb so1_manejador_01 : (void) void
section .text
	global	_so1_manejador_01
_so1_manejador_01:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     10 : int

section .bss
	alignb 4
L10:
	resb	4

section .text
; loc     11 : int

section .bss
	alignb 4
L11:
	resb	4

section .text
; loc     12 : int

section .bss
	alignb 4
L12:
	resb	4

section .text
; loc     13 : int

section .bss
	alignb 4
L13:
	resb	4

section .text
; loc     14 : int

section .bss
	alignb 4
L14:
	resb	4

section .text
; loc     15 : int

section .bss
	alignb 4
L15:
	resb	4

section .text
; switch
; RPN'ized expression: "tramaThread tb -> *u &u AL -> *u "
; Expanded expression: "tramaThread *(4) 0 + 32 + *(1) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 *(1) ax  "
section .relod
	dd	L18
section .text
	db	0x66, 0xB8
L18:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 32
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	jmp	L17
; {
; case
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
L19:
; case
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
L20:
; if
; RPN'ized expression: "c2cPFR DPOcupados + *u &u numElem -> *u 16 1 - >= "
; Expanded expression: "c2cPFR 16 + 0 + *(4) 15 >= "
; Fused expression:    "c2cPFR + ax 16 + ax 0 >= *ax 15 IF! "
section .relod
	dd	L23
section .text
	db	0x66, 0xB8
L23:
	dd	_c2cPFR
	add	eax, 16
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 15
	jl	L21
; {
; RPN'ized expression: "tramaThread tw -> *u &u DX -> *u 10 -u = "
; Expanded expression: "tramaThread *(4) 0 + 24 + -10 =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 24 =(172) *ax -10 "
section .relod
	dd	L24
section .text
	db	0x66, 0xB8
L24:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 24
	mov	ebx, eax
	mov	eax, -10
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L16
; }
L21:
; RPN'ized expression: "descThread indThreadActual + *u &u trama -> *u tramaThread = "
; Expanded expression: "descThread indThreadActual *(4) 40 * + 12 + tramaThread *(4) =(4) "
; Fused expression:    "descThread push-ax indThreadActual * *ax 40 + *sp ax + ax 12 push-ax tramaThread =(204) **sp *ax "
section .relod
	dd	L25
section .text
	db	0x66, 0xB8
L25:
	dd	_descThread
	push	eax
section .relod
	dd	L26
section .text
	db	0x66, 0xB8
L26:
	dd	_indThreadActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 40
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 12
	push	eax
section .relod
	dd	L27
section .text
	db	0x66, 0xB8
L27:
	dd	_tramaThread
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
; if
; RPN'ized expression: "tramaThread tb -> *u &u AL -> *u 1 == "
; Expanded expression: "tramaThread *(4) 0 + 32 + *(1) 1 == "
; Fused expression:    "tramaThread + *ax 0 + ax 32 == *ax 1 IF! "
section .relod
	dd	L30
section .text
	db	0x66, 0xB8
L30:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 32
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 1
	jne	L28
; RPN'ized expression: "pindx ( kk_fork ) = "
; Expanded expression: "L13  kk_fork ()0 =(4) "
; Fused expression:    "L13 push-ax ( kk_fork )0 =(204) **sp ax "
section .relod
	dd	L31
section .text
	db	0x66, 0xB8
L31:
	dd	L13
	push	eax
	db	0x9A
section .relot
	dd	L32
section .text
L32:
	dd	_kk_fork
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
	jmp	L29
L28:
; else
; {
; loc             <something> : * char
; loc             <something> : unsigned
; loc             <something> : unsigned short
; loc             <something> : * char
; loc             <something> : unsigned
; loc             <something> : unsigned short
; RPN'ized expression: "pindx ( 1 -u , tramaThread tw -> *u &u ES -> *u (something37) 16 << tramaThread tw -> *u &u DX -> *u (something38) | (something36) , tramaThread tw -> *u &u CX -> *u (something34) 16 << tramaThread tw -> *u &u BX -> *u (something35) | (something33) preEjecutar ) = "
; Expanded expression: "L13  -1  tramaThread *(4) 0 + 2 + *(2) 16 << tramaThread *(4) 0 + 24 + *(2) unsigned short |  tramaThread *(4) 0 + 28 + *(2) 16 << tramaThread *(4) 0 + 20 + *(2) unsigned short |  preEjecutar ()12 =(4) "
; Fused expression:    "L13 push-ax ( -1 , tramaThread + *ax 0 + ax 2 << *ax 16 push-ax tramaThread + *ax 0 + ax 24 *(2) ax unsigned short | *sp ax , tramaThread + *ax 0 + ax 28 << *ax 16 push-ax tramaThread + *ax 0 + ax 20 *(2) ax unsigned short | *sp ax , preEjecutar )12 =(204) **sp ax "
section .relod
	dd	L39
section .text
	db	0x66, 0xB8
L39:
	dd	L13
	push	eax
	push	dword -1
section .relod
	dd	L40
section .text
	db	0x66, 0xB8
L40:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 2
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	shl	eax, 16
	push	eax
section .relod
	dd	L41
section .text
	db	0x66, 0xB8
L41:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 24
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	movzx	eax, ax
	mov	ecx, eax
	pop	eax
	or	eax, ecx
	push	eax
section .relod
	dd	L42
section .text
	db	0x66, 0xB8
L42:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 28
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	shl	eax, 16
	push	eax
section .relod
	dd	L43
section .text
	db	0x66, 0xB8
L43:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 20
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	movzx	eax, ax
	mov	ecx, eax
	pop	eax
	or	eax, ecx
	push	eax
	db	0x9A
section .relot
	dd	L44
section .text
L44:
	dd	_preEjecutar
	sub	sp, -12
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; }
L29:
; if
; RPN'ized expression: "pindx 0 >= "
; Expanded expression: "L13 *(4) 0 >= "
; Fused expression:    "L13 >= *ax 0 IF! "
section .relod
	dd	L47
section .text
	db	0x66, 0xB8
L47:
	dd	L13
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 0
	jl	L45
; {
; if
; RPN'ized expression: "c2cPFR DPOcupados + *u &u numElem -> *u 16 2 - == "
; Expanded expression: "c2cPFR 16 + 0 + *(4) 14 == "
; Fused expression:    "c2cPFR + ax 16 + ax 0 == *ax 14 IF! "
section .relod
	dd	L50
section .text
	db	0x66, 0xB8
L50:
	dd	_c2cPFR
	add	eax, 16
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 14
	jne	L48
; {

section .rodata
L51:
	db	10," solo queda un descriptor de proceso libre "
	times	1 db 0

section .text
; RPN'ized expression: "( L51 printStrBIOS ) "
; Expanded expression: " L51  printStrBIOS ()4 "
; Fused expression:    "( L51 , printStrBIOS )4 "
section .relod
	dd	L52
section .text
	db	0x66, 0x68
L52:
	dd	L51
	db	0x9A
section .relot
	dd	L53
section .text
L53:
	dd	_printStrBIOS
	sub	sp, -4
; }
L48:
; RPN'ized expression: "descThread pindx + *u &u estado -> *u preparado = "
; Expanded expression: "descThread L13 *(4) 40 * + 4 + 1 =(4) "
; Fused expression:    "descThread push-ax L13 * *ax 40 + *sp ax + ax 4 =(204) *ax 1 "
section .relod
	dd	L54
section .text
	db	0x66, 0xB8
L54:
	dd	_descThread
	push	eax
section .relod
	dd	L55
section .text
	db	0x66, 0xB8
L55:
	dd	L13
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 40
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	eax, 1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc             <something> : * struct <something>
; RPN'ized expression: "( c2cPFR TUrgentes + *u &u (something56) , pindx apilarPC2c ) "
; Expanded expression: " c2cPFR 80 +  L13 *(4)  apilarPC2c ()8 "
; Fused expression:    "( c2cPFR + ax 80 , L13 *(4) ax , apilarPC2c )8 "
section .relod
	dd	L57
section .text
	db	0x66, 0xB8
L57:
	dd	_c2cPFR
	add	eax, 80
	push	eax
section .relod
	dd	L58
section .text
	db	0x66, 0xB8
L58:
	dd	L13
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L59
section .text
L59:
	dd	_apilarPC2c
	sub	sp, -8
; RPN'ized expression: "descThread indThreadActual + *u &u estado -> *u preparado = "
; Expanded expression: "descThread indThreadActual *(4) 40 * + 4 + 1 =(4) "
; Fused expression:    "descThread push-ax indThreadActual * *ax 40 + *sp ax + ax 4 =(204) *ax 1 "
section .relod
	dd	L60
section .text
	db	0x66, 0xB8
L60:
	dd	_descThread
	push	eax
section .relod
	dd	L61
section .text
	db	0x66, 0xB8
L61:
	dd	_indThreadActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 40
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	eax, 1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc             <something> : * struct <something>
; RPN'ized expression: "( c2cPFR TUrgentes + *u &u (something62) , indThreadActual apilarPC2c ) "
; Expanded expression: " c2cPFR 80 +  indThreadActual *(4)  apilarPC2c ()8 "
; Fused expression:    "( c2cPFR + ax 80 , indThreadActual *(4) ax , apilarPC2c )8 "
section .relod
	dd	L63
section .text
	db	0x66, 0xB8
L63:
	dd	_c2cPFR
	add	eax, 80
	push	eax
section .relod
	dd	L64
section .text
	db	0x66, 0xB8
L64:
	dd	_indThreadActual
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
	dd	_apilarPC2c
	sub	sp, -8
; if
; RPN'ized expression: "tramaThread tb -> *u &u AL -> *u 1 == "
; Expanded expression: "tramaThread *(4) 0 + 32 + *(1) 1 == "
; Fused expression:    "tramaThread + *ax 0 + ax 32 == *ax 1 IF! "
section .relod
	dd	L68
section .text
	db	0x66, 0xB8
L68:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 32
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 1
	jne	L66
; RPN'ized expression: "descThread pindx + *u &u trama -> *u tw -> *u &u DX -> *u 0 = "
; Expanded expression: "descThread L13 *(4) 40 * + 12 + *(4) 0 + 24 + 0 =(2) "
; Fused expression:    "descThread push-ax L13 * *ax 40 + *sp ax + ax 12 + *ax 0 + ax 24 =(172) *ax 0 "
section .relod
	dd	L69
section .text
	db	0x66, 0xB8
L69:
	dd	_descThread
	push	eax
section .relod
	dd	L70
section .text
	db	0x66, 0xB8
L70:
	dd	L13
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 40
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 12
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 24
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
L66:
; RPN'ized expression: "tramaThread tw -> *u &u DX -> *u descProceso pindx + *u &u pid -> *u = "
; Expanded expression: "tramaThread *(4) 0 + 24 + descProceso L13 *(4) 292 * + 0 + *(4) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 24 push-ax descProceso push-ax L13 * *ax 292 + *sp ax + ax 0 =(172) **sp *ax "
section .relod
	dd	L71
section .text
	db	0x66, 0xB8
L71:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 24
	push	eax
section .relod
	dd	L72
section .text
	db	0x66, 0xB8
L72:
	dd	_descProceso
	push	eax
section .relod
	dd	L73
section .text
	db	0x66, 0xB8
L73:
	dd	L13
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
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
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "( buscarNuevoThreadActual ) "
; Expanded expression: " buscarNuevoThreadActual ()0 "
; Fused expression:    "( buscarNuevoThreadActual )0 "
	db	0x9A
section .relot
	dd	L74
section .text
L74:
	dd	_buscarNuevoThreadActual
; }
	jmp	L46
L45:
; else
; RPN'ized expression: "tramaThread tw -> *u &u DX -> *u pindx = "
; Expanded expression: "tramaThread *(4) 0 + 24 + L13 *(4) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 24 push-ax L13 =(172) **sp *ax "
section .relod
	dd	L75
section .text
	db	0x66, 0xB8
L75:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 24
	push	eax
section .relod
	dd	L76
section .text
	db	0x66, 0xB8
L76:
	dd	L13
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
	mov	[si], ax
	movzx	eax, ax
L46:
; break
	jmp	L16
; case
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
L77:
; loc         <something> : * char
; loc         <something> : unsigned
; loc         <something> : unsigned short
; loc         <something> : * char
; loc         <something> : unsigned
; loc         <something> : unsigned short
; RPN'ized expression: "pindx ( indProcesoActual , tramaThread tw -> *u &u ES -> *u (something82) 16 << tramaThread tw -> *u &u DX -> *u (something83) | (something81) , tramaThread tw -> *u &u CX -> *u (something79) 16 << tramaThread tw -> *u &u BX -> *u (something80) | (something78) preEjecutar ) = "
; Expanded expression: "L13  indProcesoActual *(4)  tramaThread *(4) 0 + 2 + *(2) 16 << tramaThread *(4) 0 + 24 + *(2) unsigned short |  tramaThread *(4) 0 + 28 + *(2) 16 << tramaThread *(4) 0 + 20 + *(2) unsigned short |  preEjecutar ()12 =(4) "
; Fused expression:    "L13 push-ax ( indProcesoActual *(4) ax , tramaThread + *ax 0 + ax 2 << *ax 16 push-ax tramaThread + *ax 0 + ax 24 *(2) ax unsigned short | *sp ax , tramaThread + *ax 0 + ax 28 << *ax 16 push-ax tramaThread + *ax 0 + ax 20 *(2) ax unsigned short | *sp ax , preEjecutar )12 =(204) **sp ax "
section .relod
	dd	L84
section .text
	db	0x66, 0xB8
L84:
	dd	L13
	push	eax
section .relod
	dd	L85
section .text
	db	0x66, 0xB8
L85:
	dd	_indProcesoActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
section .relod
	dd	L86
section .text
	db	0x66, 0xB8
L86:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 2
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	shl	eax, 16
	push	eax
section .relod
	dd	L87
section .text
	db	0x66, 0xB8
L87:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 24
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	movzx	eax, ax
	mov	ecx, eax
	pop	eax
	or	eax, ecx
	push	eax
section .relod
	dd	L88
section .text
	db	0x66, 0xB8
L88:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 28
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	shl	eax, 16
	push	eax
section .relod
	dd	L89
section .text
	db	0x66, 0xB8
L89:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 20
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	movzx	eax, ax
	mov	ecx, eax
	pop	eax
	or	eax, ecx
	push	eax
	db	0x9A
section .relot
	dd	L90
section .text
L90:
	dd	_preEjecutar
	sub	sp, -12
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; if
; RPN'ized expression: "pindx 5 -u < "
; Expanded expression: "L13 *(4) -5 < "
; Fused expression:    "L13 < *ax -5 IF! "
section .relod
	dd	L93
section .text
	db	0x66, 0xB8
L93:
	dd	L13
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, -5
	jge	L91
; {
; RPN'ized expression: "descThread indThreadActual + *u &u estado -> *u bloqueado = "
; Expanded expression: "descThread indThreadActual *(4) 40 * + 4 + 3 =(4) "
; Fused expression:    "descThread push-ax indThreadActual * *ax 40 + *sp ax + ax 4 =(204) *ax 3 "
section .relod
	dd	L94
section .text
	db	0x66, 0xB8
L94:
	dd	_descThread
	push	eax
section .relod
	dd	L95
section .text
	db	0x66, 0xB8
L95:
	dd	_indThreadActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 40
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	eax, 3
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc             <something> : int
; RPN'ized expression: "descThread indThreadActual + *u &u esperandoPor -> *u 2 -u (something96) = "
; Expanded expression: "descThread indThreadActual *(4) 40 * + 8 + -2 =(4) "
; Fused expression:    "descThread push-ax indThreadActual * *ax 40 + *sp ax + ax 8 =(204) *ax -2 "
section .relod
	dd	L97
section .text
	db	0x66, 0xB8
L97:
	dd	_descThread
	push	eax
section .relod
	dd	L98
section .text
	db	0x66, 0xB8
L98:
	dd	_indThreadActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 40
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 8
	mov	ebx, eax
	mov	eax, -2
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "( indProcesoActual eliminarProcIndx ) "
; Expanded expression: " indProcesoActual *(4)  eliminarProcIndx ()4 "
; Fused expression:    "( indProcesoActual *(4) ax , eliminarProcIndx )4 "
section .relod
	dd	L99
section .text
	db	0x66, 0xB8
L99:
	dd	_indProcesoActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L100
section .text
L100:
	dd	_eliminarProcIndx
	sub	sp, -4
; loc             <something> : * struct <something>
; RPN'ized expression: "( descProceso indProcesoActual + *u &u c2cHijos -> *u &u (something101) , descProceso indProcesoActual + *u &u ppindx -> *u eliminarPC2c ) "
; Expanded expression: " descProceso indProcesoActual *(4) 292 * + 20 +  descProceso indProcesoActual *(4) 292 * + 12 + *(4)  eliminarPC2c ()8 "
; Fused expression:    "( descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 20 , descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 12 *(4) ax , eliminarPC2c )8 "
section .relod
	dd	L102
section .text
	db	0x66, 0xB8
L102:
	dd	_descProceso
	push	eax
section .relod
	dd	L103
section .text
	db	0x66, 0xB8
L103:
	dd	_indProcesoActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 20
	push	eax
section .relod
	dd	L104
section .text
	db	0x66, 0xB8
L104:
	dd	_descProceso
	push	eax
section .relod
	dd	L105
section .text
	db	0x66, 0xB8
L105:
	dd	_indProcesoActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 12
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L106
section .text
L106:
	dd	_eliminarPC2c
	sub	sp, -8
; RPN'ized expression: "( buscarNuevoThreadActual ) "
; Expanded expression: " buscarNuevoThreadActual ()0 "
; Fused expression:    "( buscarNuevoThreadActual )0 "
	db	0x9A
section .relot
	dd	L107
section .text
L107:
	dd	_buscarNuevoThreadActual
; }
	jmp	L92
L91:
; else
; if
; RPN'ized expression: "pindx 0 < "
; Expanded expression: "L13 *(4) 0 < "
; Fused expression:    "L13 < *ax 0 IF! "
section .relod
	dd	L110
section .text
	db	0x66, 0xB8
L110:
	dd	L13
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 0
	jge	L108
; break
	jmp	L16
	jmp	L109
L108:
; else
; RPN'ized expression: "( pindx activarThread ) "
; Expanded expression: " L13 *(4)  activarThread ()4 "
; Fused expression:    "( L13 *(4) ax , activarThread )4 "
section .relod
	dd	L111
section .text
	db	0x66, 0xB8
L111:
	dd	L13
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L112
section .text
L112:
	dd	_activarThread
	sub	sp, -4
L109:
L92:
; case
; RPN'ized expression: "3 "
; Expanded expression: "3 "
; Expression value: 3
L113:
; RPN'ized expression: "hpid tramaThread tw -> *u &u BX -> *u = "
; Expanded expression: "L12 tramaThread *(4) 0 + 20 + *(2) =(4) "
; Fused expression:    "L12 push-ax tramaThread + *ax 0 + ax 20 =(202) **sp *ax "
section .relod
	dd	L114
section .text
	db	0x66, 0xB8
L114:
	dd	L12
	push	eax
section .relod
	dd	L115
section .text
	db	0x66, 0xB8
L115:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 20
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
	mov	[si], eax
; RPN'ized expression: "hpindx ( hpid indice ) = "
; Expanded expression: "L14  L12 *(4)  indice ()4 =(4) "
; Fused expression:    "L14 push-ax ( L12 *(4) ax , indice )4 =(204) **sp ax "
section .relod
	dd	L116
section .text
	db	0x66, 0xB8
L116:
	dd	L14
	push	eax
section .relod
	dd	L117
section .text
	db	0x66, 0xB8
L117:
	dd	L12
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L118
section .text
L118:
	dd	_indice
	sub	sp, -4
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; if
; RPN'ized expression: "hpid 0 >= hpindx 1 -u == && "
; Expanded expression: "L12 *(4) 0 >= [sh&&->121] L14 *(4) -1 == &&[121] "
; Fused expression:    "L12 >= *ax 0 [sh&&->121] L14 == *ax -1 &&[121]  "
section .relod
	dd	L122
section .text
	db	0x66, 0xB8
L122:
	dd	L12
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 0
	setge	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L121
section .relod
	dd	L123
section .text
	db	0x66, 0xB8
L123:
	dd	L14
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, -1
	sete	al
	movzx	eax, al
L121:
; JumpIfZero
	test	eax, eax
	je	L119
; RPN'ized expression: "tramaThread tw -> *u &u BX -> *u 1 -u = "
; Expanded expression: "tramaThread *(4) 0 + 20 + -1 =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 20 =(172) *ax -1 "
section .relod
	dd	L124
section .text
	db	0x66, 0xB8
L124:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 20
	mov	ebx, eax
	mov	eax, -1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
	jmp	L120
L119:
; else
; {
; if
; RPN'ized expression: "hpid 1 -u == "
; Expanded expression: "L12 *(4) -1 == "
; Fused expression:    "L12 == *ax -1 IF! "
section .relod
	dd	L127
section .text
	db	0x66, 0xB8
L127:
	dd	L12
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, -1
	jne	L125
; {
; RPN'ized expression: "i 0 = "
; Expanded expression: "L10 0 =(4) "
; Fused expression:    "L10 =(204) *ax 0 "
section .relod
	dd	L128
section .text
	db	0x66, 0xB8
L128:
	dd	L10
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; while
; loc                 <something> : int
; RPN'ized expression: "i 16 < descProceso i + *u &u ppindx -> *u indProcesoActual != descThread i + *u &u estado -> *u bloqueado != || descThread i + *u &u esperandoPor -> *u 2 -u (something131) != || && "
; Expanded expression: "L10 *(4) 16 < [sh&&->132] descProceso L10 *(4) 292 * + 12 + *(4) indProcesoActual *(4) != [sh||->134] descThread L10 *(4) 40 * + 4 + *(4) 3 != ||[134] _Bool [sh||->133] descThread L10 *(4) 40 * + 8 + *(4) -2 != ||[133] _Bool &&[132] "
L129:
; Fused expression:    "L10 < *ax 16 [sh&&->132] descProceso push-ax L10 * *ax 292 + *sp ax + ax 12 push-ax indProcesoActual != **sp *ax [sh||->134] descThread push-ax L10 * *ax 40 + *sp ax + ax 4 != *ax 3 ||[134] _Bool [sh||->133] descThread push-ax L10 * *ax 40 + *sp ax + ax 8 != *ax -2 ||[133] _Bool &&[132]  "
section .relod
	dd	L135
section .text
	db	0x66, 0xB8
L135:
	dd	L10
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 16
	setl	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L132
section .relod
	dd	L136
section .text
	db	0x66, 0xB8
L136:
	dd	_descProceso
	push	eax
section .relod
	dd	L137
section .text
	db	0x66, 0xB8
L137:
	dd	L10
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 12
	push	eax
section .relod
	dd	L138
section .text
	db	0x66, 0xB8
L138:
	dd	_indProcesoActual
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
	cmp	eax, ecx
	setne	al
	movzx	eax, al
; JumpIfNotZero
	test	eax, eax
	jne	L134
section .relod
	dd	L139
section .text
	db	0x66, 0xB8
L139:
	dd	_descThread
	push	eax
section .relod
	dd	L140
section .text
	db	0x66, 0xB8
L140:
	dd	L10
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 40
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 3
	setne	al
	movzx	eax, al
L134:
	test	eax, eax
	setne	al
	movsx	eax, al
; JumpIfNotZero
	test	eax, eax
	jne	L133
section .relod
	dd	L141
section .text
	db	0x66, 0xB8
L141:
	dd	_descThread
	push	eax
section .relod
	dd	L142
section .text
	db	0x66, 0xB8
L142:
	dd	L10
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 40
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 8
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, -2
	setne	al
	movzx	eax, al
L133:
	test	eax, eax
	setne	al
	movsx	eax, al
L132:
; JumpIfZero
	test	eax, eax
	je	L130
; RPN'ized expression: "i ++p "
; Expanded expression: "L10 ++p(4) "
; Fused expression:    "L10 ++p(4) *ax "
section .relod
	dd	L143
section .text
	db	0x66, 0xB8
L143:
	dd	L10
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	inc	dword [si]
	jmp	L129
L130:
; if
; RPN'ized expression: "i 16 < "
; Expanded expression: "L10 *(4) 16 < "
; Fused expression:    "L10 < *ax 16 IF! "
section .relod
	dd	L146
section .text
	db	0x66, 0xB8
L146:
	dd	L10
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 16
	jge	L144
; RPN'ized expression: "hpindx i = "
; Expanded expression: "L14 L10 *(4) =(4) "
; Fused expression:    "L14 push-ax L10 =(204) **sp *ax "
section .relod
	dd	L147
section .text
	db	0x66, 0xB8
L147:
	dd	L14
	push	eax
section .relod
	dd	L148
section .text
	db	0x66, 0xB8
L148:
	dd	L10
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
	jmp	L145
L144:
; else
; RPN'ized expression: "hpindx 1 -u = "
; Expanded expression: "L14 -1 =(4) "
; Fused expression:    "L14 =(204) *ax -1 "
section .relod
	dd	L149
section .text
	db	0x66, 0xB8
L149:
	dd	L14
	mov	ebx, eax
	mov	eax, -1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
L145:
; }
L125:
; if
; loc             <something> : int
; RPN'ized expression: "hpindx 1 -u != descProceso hpindx + *u &u ppindx -> *u indProcesoActual == && descThread hpindx + *u &u estado -> *u bloqueado == && descThread hpindx + *u &u esperandoPor -> *u 2 -u (something152) == && "
; Expanded expression: "L14 *(4) -1 != [sh&&->155] descProceso L14 *(4) 292 * + 12 + *(4) indProcesoActual *(4) == &&[155] _Bool [sh&&->154] descThread L14 *(4) 40 * + 4 + *(4) 3 == &&[154] _Bool [sh&&->153] descThread L14 *(4) 40 * + 8 + *(4) -2 == &&[153] "
; Fused expression:    "L14 != *ax -1 [sh&&->155] descProceso push-ax L14 * *ax 292 + *sp ax + ax 12 push-ax indProcesoActual == **sp *ax &&[155] _Bool [sh&&->154] descThread push-ax L14 * *ax 40 + *sp ax + ax 4 == *ax 3 &&[154] _Bool [sh&&->153] descThread push-ax L14 * *ax 40 + *sp ax + ax 8 == *ax -2 &&[153]  "
section .relod
	dd	L156
section .text
	db	0x66, 0xB8
L156:
	dd	L14
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, -1
	setne	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L155
section .relod
	dd	L157
section .text
	db	0x66, 0xB8
L157:
	dd	_descProceso
	push	eax
section .relod
	dd	L158
section .text
	db	0x66, 0xB8
L158:
	dd	L14
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 12
	push	eax
section .relod
	dd	L159
section .text
	db	0x66, 0xB8
L159:
	dd	_indProcesoActual
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
	cmp	eax, ecx
	sete	al
	movzx	eax, al
L155:
	test	eax, eax
	setne	al
	movsx	eax, al
; JumpIfZero
	test	eax, eax
	je	L154
section .relod
	dd	L160
section .text
	db	0x66, 0xB8
L160:
	dd	_descThread
	push	eax
section .relod
	dd	L161
section .text
	db	0x66, 0xB8
L161:
	dd	L14
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 40
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 3
	sete	al
	movzx	eax, al
L154:
	test	eax, eax
	setne	al
	movsx	eax, al
; JumpIfZero
	test	eax, eax
	je	L153
section .relod
	dd	L162
section .text
	db	0x66, 0xB8
L162:
	dd	_descThread
	push	eax
section .relod
	dd	L163
section .text
	db	0x66, 0xB8
L163:
	dd	L14
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 40
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 8
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, -2
	sete	al
	movzx	eax, al
L153:
; JumpIfZero
	test	eax, eax
	je	L150
; {
; RPN'ized expression: "tramaThread tw -> *u &u AX -> *u descProceso hpindx + *u &u status -> *u = "
; Expanded expression: "tramaThread *(4) 0 + 32 + descProceso L14 *(4) 292 * + 8 + *(4) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 push-ax descProceso push-ax L14 * *ax 292 + *sp ax + ax 8 =(172) **sp *ax "
section .relod
	dd	L164
section .text
	db	0x66, 0xB8
L164:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 32
	push	eax
section .relod
	dd	L165
section .text
	db	0x66, 0xB8
L165:
	dd	_descProceso
	push	eax
section .relod
	dd	L166
section .text
	db	0x66, 0xB8
L166:
	dd	L14
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 8
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
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "tramaThread tw -> *u &u BX -> *u descProceso hpindx + *u &u pid -> *u = "
; Expanded expression: "tramaThread *(4) 0 + 20 + descProceso L14 *(4) 292 * + 0 + *(4) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 20 push-ax descProceso push-ax L14 * *ax 292 + *sp ax + ax 0 =(172) **sp *ax "
section .relod
	dd	L167
section .text
	db	0x66, 0xB8
L167:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 20
	push	eax
section .relod
	dd	L168
section .text
	db	0x66, 0xB8
L168:
	dd	_descProceso
	push	eax
section .relod
	dd	L169
section .text
	db	0x66, 0xB8
L169:
	dd	L14
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
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
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "( hpindx eliminarProcIndx ) "
; Expanded expression: " L14 *(4)  eliminarProcIndx ()4 "
; Fused expression:    "( L14 *(4) ax , eliminarProcIndx )4 "
section .relod
	dd	L170
section .text
	db	0x66, 0xB8
L170:
	dd	L14
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L171
section .text
L171:
	dd	_eliminarProcIndx
	sub	sp, -4
; loc                 <something> : * struct <something>
; RPN'ized expression: "( descProceso indProcesoActual + *u &u c2cHijos -> *u &u (something172) , hpindx eliminarPC2c ) "
; Expanded expression: " descProceso indProcesoActual *(4) 292 * + 20 +  L14 *(4)  eliminarPC2c ()8 "
; Fused expression:    "( descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 20 , L14 *(4) ax , eliminarPC2c )8 "
section .relod
	dd	L173
section .text
	db	0x66, 0xB8
L173:
	dd	_descProceso
	push	eax
section .relod
	dd	L174
section .text
	db	0x66, 0xB8
L174:
	dd	_indProcesoActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 20
	push	eax
section .relod
	dd	L175
section .text
	db	0x66, 0xB8
L175:
	dd	L14
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L176
section .text
L176:
	dd	_eliminarPC2c
	sub	sp, -8
; }
	jmp	L151
L150:
; else
; {
; RPN'ized expression: "noStatus tramaThread tw -> *u &u DX -> *u = "
; Expanded expression: "L15 tramaThread *(4) 0 + 24 + *(2) =(4) "
; Fused expression:    "L15 push-ax tramaThread + *ax 0 + ax 24 =(202) **sp *ax "
section .relod
	dd	L177
section .text
	db	0x66, 0xB8
L177:
	dd	L15
	push	eax
section .relod
	dd	L178
section .text
	db	0x66, 0xB8
L178:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 24
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
	mov	[si], eax
; if
; RPN'ized expression: "hpid 1 -u != "
; Expanded expression: "L12 *(4) -1 != "
; Fused expression:    "L12 != *ax -1 IF! "
section .relod
	dd	L181
section .text
	db	0x66, 0xB8
L181:
	dd	L12
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, -1
	je	L179
; {
; if
; RPN'ized expression: "noStatus "
; Expanded expression: "L15 *(4) "
; Fused expression:    "L15 *(4) ax  "
section .relod
	dd	L184
section .text
	db	0x66, 0xB8
L184:
	dd	L15
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
; JumpIfZero
	test	eax, eax
	je	L182
; {
; RPN'ized expression: "descProceso hpindx + *u &u noStatus -> *u TRUE = "
; Expanded expression: "descProceso L14 *(4) 292 * + 4 + 1 =(4) "
; Fused expression:    "descProceso push-ax L14 * *ax 292 + *sp ax + ax 4 =(204) *ax 1 "
section .relod
	dd	L185
section .text
	db	0x66, 0xB8
L185:
	dd	_descProceso
	push	eax
section .relod
	dd	L186
section .text
	db	0x66, 0xB8
L186:
	dd	L14
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	eax, 1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "tramaThread tw -> *u &u BX -> *u 0 = "
; Expanded expression: "tramaThread *(4) 0 + 20 + 0 =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 20 =(172) *ax 0 "
section .relod
	dd	L187
section .text
	db	0x66, 0xB8
L187:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 20
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; }
	jmp	L183
L182:
; else
; RPN'ized expression: "( hpindx bloquearEsperandoHijo ) "
; Expanded expression: " L14 *(4)  bloquearEsperandoHijo ()4 "
; Fused expression:    "( L14 *(4) ax , bloquearEsperandoHijo )4 "
section .relod
	dd	L188
section .text
	db	0x66, 0xB8
L188:
	dd	L14
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L189
section .text
L189:
	dd	_bloquearEsperandoHijo
	sub	sp, -4
L183:
; }
	jmp	L180
L179:
; else
; if
; RPN'ized expression: "noStatus "
; Expanded expression: "L15 *(4) "
; Fused expression:    "L15 *(4) ax  "
section .relod
	dd	L192
section .text
	db	0x66, 0xB8
L192:
	dd	L15
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
; JumpIfZero
	test	eax, eax
	je	L190
; {
; RPN'ized expression: "i 0 = "
; Expanded expression: "L10 0 =(4) "
; Fused expression:    "L10 =(204) *ax 0 "
section .relod
	dd	L193
section .text
	db	0x66, 0xB8
L193:
	dd	L10
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; while
; RPN'ized expression: "i 16 < "
; Expanded expression: "L10 *(4) 16 < "
L194:
; Fused expression:    "L10 < *ax 16 IF! "
section .relod
	dd	L196
section .text
	db	0x66, 0xB8
L196:
	dd	L10
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 16
	jge	L195
; {
; if
; RPN'ized expression: "descProceso i + *u &u ppindx -> *u indProcesoActual == "
; Expanded expression: "descProceso L10 *(4) 292 * + 12 + *(4) indProcesoActual *(4) == "
; Fused expression:    "descProceso push-ax L10 * *ax 292 + *sp ax + ax 12 push-ax indProcesoActual == **sp *ax IF! "
section .relod
	dd	L199
section .text
	db	0x66, 0xB8
L199:
	dd	_descProceso
	push	eax
section .relod
	dd	L200
section .text
	db	0x66, 0xB8
L200:
	dd	L10
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 12
	push	eax
section .relod
	dd	L201
section .text
	db	0x66, 0xB8
L201:
	dd	_indProcesoActual
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
	cmp	eax, ecx
	jne	L197
; RPN'ized expression: "descProceso i + *u &u noStatus -> *u TRUE = "
; Expanded expression: "descProceso L10 *(4) 292 * + 4 + 1 =(4) "
; Fused expression:    "descProceso push-ax L10 * *ax 292 + *sp ax + ax 4 =(204) *ax 1 "
section .relod
	dd	L202
section .text
	db	0x66, 0xB8
L202:
	dd	_descProceso
	push	eax
section .relod
	dd	L203
section .text
	db	0x66, 0xB8
L203:
	dd	L10
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	eax, 1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
L197:
; RPN'ized expression: "i ++p "
; Expanded expression: "L10 ++p(4) "
; Fused expression:    "L10 ++p(4) *ax "
section .relod
	dd	L204
section .text
	db	0x66, 0xB8
L204:
	dd	L10
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	inc	dword [si]
; }
	jmp	L194
L195:
; RPN'ized expression: "tramaThread tw -> *u &u BX -> *u 0 = "
; Expanded expression: "tramaThread *(4) 0 + 20 + 0 =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 20 =(172) *ax 0 "
section .relod
	dd	L205
section .text
	db	0x66, 0xB8
L205:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 20
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; }
	jmp	L191
L190:
; else
; {
; RPN'ized expression: "i 0 = "
; Expanded expression: "L10 0 =(4) "
; Fused expression:    "L10 =(204) *ax 0 "
section .relod
	dd	L206
section .text
	db	0x66, 0xB8
L206:
	dd	L10
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; while
; RPN'ized expression: "i 16 < descProceso i + *u &u ppindx -> *u indProcesoActual != && "
; Expanded expression: "L10 *(4) 16 < [sh&&->209] descProceso L10 *(4) 292 * + 12 + *(4) indProcesoActual *(4) != &&[209] "
L207:
; Fused expression:    "L10 < *ax 16 [sh&&->209] descProceso push-ax L10 * *ax 292 + *sp ax + ax 12 push-ax indProcesoActual != **sp *ax &&[209]  "
section .relod
	dd	L210
section .text
	db	0x66, 0xB8
L210:
	dd	L10
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 16
	setl	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L209
section .relod
	dd	L211
section .text
	db	0x66, 0xB8
L211:
	dd	_descProceso
	push	eax
section .relod
	dd	L212
section .text
	db	0x66, 0xB8
L212:
	dd	L10
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 12
	push	eax
section .relod
	dd	L213
section .text
	db	0x66, 0xB8
L213:
	dd	_indProcesoActual
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
	cmp	eax, ecx
	setne	al
	movzx	eax, al
L209:
; JumpIfZero
	test	eax, eax
	je	L208
; RPN'ized expression: "i ++p "
; Expanded expression: "L10 ++p(4) "
; Fused expression:    "L10 ++p(4) *ax "
section .relod
	dd	L214
section .text
	db	0x66, 0xB8
L214:
	dd	L10
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	inc	dword [si]
	jmp	L207
L208:
; if
; RPN'ized expression: "i 16 < "
; Expanded expression: "L10 *(4) 16 < "
; Fused expression:    "L10 < *ax 16 IF! "
section .relod
	dd	L217
section .text
	db	0x66, 0xB8
L217:
	dd	L10
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 16
	jge	L215
; {
; RPN'ized expression: "descProceso indProcesoActual + *u &u hpindx -> *u 1 -u = "
; Expanded expression: "descProceso indProcesoActual *(4) 292 * + 16 + -1 =(4) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 16 =(204) *ax -1 "
section .relod
	dd	L218
section .text
	db	0x66, 0xB8
L218:
	dd	_descProceso
	push	eax
section .relod
	dd	L219
section .text
	db	0x66, 0xB8
L219:
	dd	_indProcesoActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 16
	mov	ebx, eax
	mov	eax, -1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc                         <something> : int
; RPN'ized expression: "( 1 -u (something220) bloquearThreadActual ) "
; Expanded expression: " -1  bloquearThreadActual ()4 "
; Fused expression:    "( -1 , bloquearThreadActual )4 "
	push	dword -1
	db	0x9A
section .relot
	dd	L221
section .text
L221:
	dd	_bloquearThreadActual
	sub	sp, -4
; }
	jmp	L216
L215:
; else
; RPN'ized expression: "tramaThread tw -> *u &u BX -> *u 1 -u = "
; Expanded expression: "tramaThread *(4) 0 + 20 + -1 =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 20 =(172) *ax -1 "
section .relod
	dd	L222
section .text
	db	0x66, 0xB8
L222:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 20
	mov	ebx, eax
	mov	eax, -1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
L216:
; }
L191:
L180:
; }
L151:
; }
L120:
; break
	jmp	L16
; case
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
L223:
; RPN'ized expression: "( indProcesoActual doKill ) "
; Expanded expression: " indProcesoActual *(4)  doKill ()4 "
; Fused expression:    "( indProcesoActual *(4) ax , doKill )4 "
section .relod
	dd	L224
section .text
	db	0x66, 0xB8
L224:
	dd	_indProcesoActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L225
section .text
L225:
	dd	_doKill
	sub	sp, -4
; break
	jmp	L16
; case
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
L226:
; RPN'ized expression: "tramaThread tw -> *u &u BX -> *u descProceso indProcesoActual + *u &u pid -> *u = "
; Expanded expression: "tramaThread *(4) 0 + 20 + descProceso indProcesoActual *(4) 292 * + 0 + *(4) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 20 push-ax descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 0 =(172) **sp *ax "
section .relod
	dd	L227
section .text
	db	0x66, 0xB8
L227:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 20
	push	eax
section .relod
	dd	L228
section .text
	db	0x66, 0xB8
L228:
	dd	_descProceso
	push	eax
section .relod
	dd	L229
section .text
	db	0x66, 0xB8
L229:
	dd	_indProcesoActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
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
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L16
; case
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
L230:
; RPN'ized expression: "tramaThread tw -> *u &u BX -> *u indProcesoActual = "
; Expanded expression: "tramaThread *(4) 0 + 20 + indProcesoActual *(4) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 20 push-ax indProcesoActual =(172) **sp *ax "
section .relod
	dd	L231
section .text
	db	0x66, 0xB8
L231:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 20
	push	eax
section .relod
	dd	L232
section .text
	db	0x66, 0xB8
L232:
	dd	_indProcesoActual
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
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L16
; case
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
L233:
; RPN'ized expression: "tramaThread tw -> *u &u BX -> *u descProceso descProceso indProcesoActual + *u &u ppindx -> *u + *u &u pid -> *u = "
; Expanded expression: "tramaThread *(4) 0 + 20 + descProceso descProceso indProcesoActual *(4) 292 * + 12 + *(4) 292 * + 0 + *(4) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 20 push-ax descProceso push-ax descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 12 * *ax 292 + *sp ax + ax 0 =(172) **sp *ax "
section .relod
	dd	L234
section .text
	db	0x66, 0xB8
L234:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 20
	push	eax
section .relod
	dd	L235
section .text
	db	0x66, 0xB8
L235:
	dd	_descProceso
	push	eax
section .relod
	dd	L236
section .text
	db	0x66, 0xB8
L236:
	dd	_descProceso
	push	eax
section .relod
	dd	L237
section .text
	db	0x66, 0xB8
L237:
	dd	_indProcesoActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 12
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
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
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L16
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
L238:
; RPN'ized expression: "tramaThread tw -> *u &u BX -> *u descProceso indProcesoActual + *u &u uid -> *u = "
; Expanded expression: "tramaThread *(4) 0 + 20 + descProceso indProcesoActual *(4) 292 * + 284 + *(4) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 20 push-ax descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 284 =(172) **sp *ax "
section .relod
	dd	L239
section .text
	db	0x66, 0xB8
L239:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 20
	push	eax
section .relod
	dd	L240
section .text
	db	0x66, 0xB8
L240:
	dd	_descProceso
	push	eax
section .relod
	dd	L241
section .text
	db	0x66, 0xB8
L241:
	dd	_indProcesoActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 284
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
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L16
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
L242:
; RPN'ized expression: "descProceso indProcesoActual + *u &u uid -> *u tramaThread tw -> *u &u BX -> *u = "
; Expanded expression: "descProceso indProcesoActual *(4) 292 * + 284 + tramaThread *(4) 0 + 20 + *(2) =(4) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 284 push-ax tramaThread + *ax 0 + ax 20 =(202) **sp *ax "
section .relod
	dd	L243
section .text
	db	0x66, 0xB8
L243:
	dd	_descProceso
	push	eax
section .relod
	dd	L244
section .text
	db	0x66, 0xB8
L244:
	dd	_indProcesoActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 284
	push	eax
section .relod
	dd	L245
section .text
	db	0x66, 0xB8
L245:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 20
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
	mov	[si], eax
; break
	jmp	L16
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
L246:
; RPN'ized expression: "tramaThread tw -> *u &u BX -> *u descProceso indProcesoActual + *u &u gid -> *u = "
; Expanded expression: "tramaThread *(4) 0 + 20 + descProceso indProcesoActual *(4) 292 * + 288 + *(4) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 20 push-ax descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 288 =(172) **sp *ax "
section .relod
	dd	L247
section .text
	db	0x66, 0xB8
L247:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 20
	push	eax
section .relod
	dd	L248
section .text
	db	0x66, 0xB8
L248:
	dd	_descProceso
	push	eax
section .relod
	dd	L249
section .text
	db	0x66, 0xB8
L249:
	dd	_indProcesoActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 288
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
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L16
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
L250:
; RPN'ized expression: "descProceso indProcesoActual + *u &u gid -> *u tramaThread tw -> *u &u BX -> *u = "
; Expanded expression: "descProceso indProcesoActual *(4) 292 * + 288 + tramaThread *(4) 0 + 20 + *(2) =(4) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 288 push-ax tramaThread + *ax 0 + ax 20 =(202) **sp *ax "
section .relod
	dd	L251
section .text
	db	0x66, 0xB8
L251:
	dd	_descProceso
	push	eax
section .relod
	dd	L252
section .text
	db	0x66, 0xB8
L252:
	dd	_indProcesoActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 288
	push	eax
section .relod
	dd	L253
section .text
	db	0x66, 0xB8
L253:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 20
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
	mov	[si], eax
; break
	jmp	L16
; case
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
L254:
; loc         <something> : int
; RPN'ized expression: "pid tramaThread tw -> *u &u DX -> *u (something255) = "
; Expanded expression: "L11 tramaThread *(4) 0 + 24 + *(2) =(4) "
; Fused expression:    "L11 push-ax tramaThread + *ax 0 + ax 24 =(202) **sp *ax "
section .relod
	dd	L256
section .text
	db	0x66, 0xB8
L256:
	dd	L11
	push	eax
section .relod
	dd	L257
section .text
	db	0x66, 0xB8
L257:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 24
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
	mov	[si], eax
; if
; RPN'ized expression: "pid 0 >= "
; Expanded expression: "L11 *(4) 0 >= "
; Fused expression:    "L11 >= *ax 0 IF! "
section .relod
	dd	L260
section .text
	db	0x66, 0xB8
L260:
	dd	L11
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 0
	jl	L258
; {
; RPN'ized expression: "i ( pid indice ) = "
; Expanded expression: "L10  L11 *(4)  indice ()4 =(4) "
; Fused expression:    "L10 push-ax ( L11 *(4) ax , indice )4 =(204) **sp ax "
section .relod
	dd	L261
section .text
	db	0x66, 0xB8
L261:
	dd	L10
	push	eax
section .relod
	dd	L262
section .text
	db	0x66, 0xB8
L262:
	dd	L11
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L263
section .text
L263:
	dd	_indice
	sub	sp, -4
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc             <something> : unsigned short
; RPN'ized expression: "tramaThread tw -> *u &u BX -> *u i 1 -u != 2 -u ( i matarProcIndx ) ? (something264) = "
; Expanded expression: "tramaThread *(4) 0 + 20 + L10 *(4) -1 != [sh||->265] -2 goto &&[265]  L10 *(4)  matarProcIndx ()4 &&[266] unsigned short =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 20 push-ax L10 != *ax -1 [sh||->265] -2 [goto->266] &&[265] ( L10 *(4) ax , matarProcIndx )4 &&[266] unsigned short =(172) **sp ax "
section .relod
	dd	L267
section .text
	db	0x66, 0xB8
L267:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 20
	push	eax
section .relod
	dd	L268
section .text
	db	0x66, 0xB8
L268:
	dd	L10
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, -1
	setne	al
	movzx	eax, al
; JumpIfNotZero
	test	eax, eax
	jne	L265
	mov	eax, -2
	jmp	L266
L265:
section .relod
	dd	L269
section .text
	db	0x66, 0xB8
L269:
	dd	L10
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L270
section .text
L270:
	dd	_matarProcIndx
	sub	sp, -4
L266:
	movzx	eax, ax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; }
	jmp	L259
L258:
; else
; {
; for
; RPN'ized expression: "i 1 = "
; Expanded expression: "L10 1 =(4) "
; Fused expression:    "L10 =(204) *ax 1 "
section .relod
	dd	L275
section .text
	db	0x66, 0xB8
L275:
	dd	L10
	mov	ebx, eax
	mov	eax, 1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
L271:
; RPN'ized expression: "i 16 < "
; Expanded expression: "L10 *(4) 16 < "
; Fused expression:    "L10 < *ax 16 IF! "
section .relod
	dd	L276
section .text
	db	0x66, 0xB8
L276:
	dd	L10
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 16
	jge	L274
; RPN'ized expression: "i ++p "
; Expanded expression: "L10 ++p(4) "
; RPN'ized expression: "( i matarProcIndx ) "
; Expanded expression: " L10 *(4)  matarProcIndx ()4 "
; Fused expression:    "( L10 *(4) ax , matarProcIndx )4 "
section .relod
	dd	L277
section .text
	db	0x66, 0xB8
L277:
	dd	L10
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L278
section .text
L278:
	dd	_matarProcIndx
	sub	sp, -4
L272:
; Fused expression:    "L10 ++p(4) *ax "
section .relod
	dd	L279
section .text
	db	0x66, 0xB8
L279:
	dd	L10
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	inc	dword [si]
	jmp	L271
L274:
; RPN'ized expression: "tramaThread tw -> *u &u BX -> *u 0 = "
; Expanded expression: "tramaThread *(4) 0 + 20 + 0 =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 20 =(172) *ax 0 "
section .relod
	dd	L280
section .text
	db	0x66, 0xB8
L280:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 20
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; if
; RPN'ized expression: "indProcesoActual 0 > "
; Expanded expression: "indProcesoActual *(4) 0 > "
; Fused expression:    "indProcesoActual > *ax 0 IF! "
section .relod
	dd	L283
section .text
	db	0x66, 0xB8
L283:
	dd	_indProcesoActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 0
	jle	L281
; RPN'ized expression: "( buscarNuevoThreadActual ) "
; Expanded expression: " buscarNuevoThreadActual ()0 "
; Fused expression:    "( buscarNuevoThreadActual )0 "
	db	0x9A
section .relot
	dd	L284
section .text
L284:
	dd	_buscarNuevoThreadActual
L281:
; }
L259:
; break
	jmp	L16
; default
L285:
; }
	jmp	L16
L17:
	cmp	eax, 0
	je	L19
	cmp	eax, 1
	je	L20
	cmp	eax, 2
	je	L77
	cmp	eax, 3
	je	L113
	cmp	eax, 4
	je	L223
	cmp	eax, 5
	je	L226
	cmp	eax, 6
	je	L230
	cmp	eax, 7
	je	L233
	cmp	eax, 8
	je	L238
	cmp	eax, 9
	je	L242
	cmp	eax, 10
	je	L246
	cmp	eax, 11
	je	L250
	cmp	eax, 12
	je	L254
	jmp	L285
L16:
L8:
	db	0x66
	leave
	retf
L286:

section .fxnsz
	dd	L286 - _so1_manejador_01


	extern	_descProceso
	extern	_indProcesoActual
	extern	_bloquearThreadActual
	extern	_tramaThread
	extern	_c2cPFR
	extern	_descThread
	extern	_indThreadActual
	extern	_kk_fork
	extern	_preEjecutar
	extern	_printStrBIOS
	extern	_apilarPC2c
	extern	_buscarNuevoThreadActual
	extern	_eliminarProcIndx
	extern	_eliminarPC2c
	extern	_activarThread
	extern	_indice
	extern	_doKill
	extern	_matarProcIndx

; Syntax/declaration table/stack:
; Bytes used: 11215/40960


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
; Ident printCarVideo
; Ident car
; Ident printLnVideo
; Ident printStrVideo
; Ident str
; Ident printStrHastaVideo
; Ident n
; Ident lleno
; Ident printDecVideo
; Ident num
; Ident l
; Ident printLDecVideo
; Ident printIntVideo
; Ident printLIntVideo
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
; Ident descProcesoExt_t
; Ident descThreadExt_t
; Ident descProceso
; Ident descThread
; Ident descFichero
; Ident descRecurso
; Ident c2cPFR
; Ident e2PFR
; Ident descCcbAlEpilogo
; Ident ccbAlEpilogo
; Ident tramaThread
; Ident tramaTarea
; Ident indThreadActual
; Ident indProcesoActual
; Ident indThreadDeSuperficie
; Ident contRodajas
; Ident contTicsRodaja
; Ident contadorTimer00
; Ident contOcioso
; Ident nuevoPid
; Ident nuevoTid
; Ident indice
; Ident registrarEnPOrdenados
; Ident crearThread
; Ident funcion
; Ident crearProceso
; Ident tamFich
; Ident inicProcesos
; Ident resetPids
; Ident resetTids
; Ident terminarThreadIndx
; Ident eliminarThreadIndx
; Ident terminarProcIndx
; Ident eliminarProcIndx
; Ident matarThreadIndx
; Ident matarProcIndx
; Ident link_procs
; Ident startBin
; Ident unidadBIOS
; Ident CS_SO1H
; Ident RO_SO1H
; Ident DS_SO1H
; Ident BSS_SO1H
; Ident SS_SO1H
; Ident SS_Kernel
; Ident IMRInicial
; Ident obtenerMapa
; Ident SS_Thread
; Ident SP_Thread
; Ident SS_Tarea
; Ident SP_Tarea
; Ident nivelActivacionSO1H
; Ident nVIntActual
; Ident enHalt
; Ident activarAlEpilogo1
; Ident hayTic
; Ident setKernelStack
; Ident setThreadStack
; Ident reg_DL
; Ident prepararDesbloqueadosUrgentes
; Ident opciones
; Ident thread_attribs_t
; Ident thread_create
; Ident attribs
; Ident funcionInicial
; Ident thread_join
; Ident res
; Ident thread_exit
; Ident thread_yield
; Ident thread_self
; Ident doKill
; Ident kk_fork
; Ident preEjecutar
; Ident bloquearEsperandoHijo
; Ident so1_manejador_01
; Bytes used: 4672/16384

; Next label number: 287
; Compilation succeeded.
