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
; glb doKill : (
; prm     pindx : int
;     ) int
section .text
	global	_doKill
_doKill:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     pindx : (@8): int
; loc     3 : int

section .bss
	alignb 4
L3:
	resb	4

section .text
; loc     4 : int

section .data
	align 4
L4:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
	dd	0

section .text
; RPN'ized expression: "ppindx descProceso pindx + *u &u ppindx -> *u = "
; Expanded expression: "L3 descProceso (@8) *(4) 292 * + 12 + *(4) =(4) "
; Fused expression:    "L3 push-ax descProceso push-ax * *(@8) 292 + *sp ax + ax 12 =(204) **sp *ax "
section .relod
	dd	L5
section .text
	db	0x66, 0xB8
L5:
	dd	L3
	push	eax
section .relod
	dd	L6
section .text
	db	0x66, 0xB8
L6:
	dd	_descProceso
	push	eax
	mov	eax, [bp+8]
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
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; if
; RPN'ized expression: "descProceso pindx + *u &u noStatus -> *u "
; Expanded expression: "descProceso (@8) *(4) 292 * + 4 + *(4) "
; Fused expression:    "descProceso push-ax * *(@8) 292 + *sp ax + ax 4 *(4) ax  "
section .relod
	dd	L9
section .text
	db	0x66, 0xB8
L9:
	dd	_descProceso
	push	eax
	mov	eax, [bp+8]
	imul	eax, eax, 292
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
; JumpIfZero
	test	eax, eax
	je	L7
; {
; loc         <something> : * struct <something>
; RPN'ized expression: "( descProceso ppindx + *u &u c2cHijos -> *u &u (something10) , pindx eliminarPC2c ) "
; Expanded expression: " descProceso L3 *(4) 292 * + 20 +  (@8) *(4)  eliminarPC2c ()8 "
; Fused expression:    "( descProceso push-ax L3 * *ax 292 + *sp ax + ax 20 , *(4) (@8) , eliminarPC2c )8 "
section .relod
	dd	L11
section .text
	db	0x66, 0xB8
L11:
	dd	_descProceso
	push	eax
section .relod
	dd	L12
section .text
	db	0x66, 0xB8
L12:
	dd	L3
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
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L13
section .text
L13:
	dd	_eliminarPC2c
	sub	sp, -8
; RPN'ized expression: "( pindx matarProcIndx ) "
; Expanded expression: " (@8) *(4)  matarProcIndx ()4 "
; Fused expression:    "( *(4) (@8) , matarProcIndx )4 "
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L14
section .text
L14:
	dd	_matarProcIndx
	sub	sp, -4
; }
	jmp	L8
L7:
; else
; if
; loc     <something> : int
; RPN'ized expression: "descThread ppindx + *u &u estado -> *u bloqueado == descThread ppindx + *u &u esperandoPor -> *u 1 -u (something17) == && descProceso ppindx + *u &u hpindx -> *u pindx == descProceso ppindx + *u &u hpindx -> *u 1 -u == || && "
; Expanded expression: "descThread L3 *(4) 40 * + 4 + *(4) 3 == [sh&&->20] descThread L3 *(4) 40 * + 8 + *(4) -1 == &&[20] _Bool [sh&&->18] descProceso L3 *(4) 292 * + 16 + *(4) (@8) *(4) == [sh||->19] descProceso L3 *(4) 292 * + 16 + *(4) -1 == ||[19] _Bool &&[18] "
; Fused expression:    "descThread push-ax L3 * *ax 40 + *sp ax + ax 4 == *ax 3 [sh&&->20] descThread push-ax L3 * *ax 40 + *sp ax + ax 8 == *ax -1 &&[20] _Bool [sh&&->18] descProceso push-ax L3 * *ax 292 + *sp ax + ax 16 == *ax *(@8) [sh||->19] descProceso push-ax L3 * *ax 292 + *sp ax + ax 16 == *ax -1 ||[19] _Bool &&[18]  "
section .relod
	dd	L21
section .text
	db	0x66, 0xB8
L21:
	dd	_descThread
	push	eax
section .relod
	dd	L22
section .text
	db	0x66, 0xB8
L22:
	dd	L3
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
; JumpIfZero
	test	eax, eax
	je	L20
section .relod
	dd	L23
section .text
	db	0x66, 0xB8
L23:
	dd	_descThread
	push	eax
section .relod
	dd	L24
section .text
	db	0x66, 0xB8
L24:
	dd	L3
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
	cmp	eax, -1
	sete	al
	movzx	eax, al
L20:
	test	eax, eax
	setne	al
	movsx	eax, al
; JumpIfZero
	test	eax, eax
	je	L18
section .relod
	dd	L25
section .text
	db	0x66, 0xB8
L25:
	dd	_descProceso
	push	eax
section .relod
	dd	L26
section .text
	db	0x66, 0xB8
L26:
	dd	L3
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
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, [bp+8]
	sete	al
	movzx	eax, al
; JumpIfNotZero
	test	eax, eax
	jne	L19
section .relod
	dd	L27
section .text
	db	0x66, 0xB8
L27:
	dd	_descProceso
	push	eax
section .relod
	dd	L28
section .text
	db	0x66, 0xB8
L28:
	dd	L3
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
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, -1
	sete	al
	movzx	eax, al
L19:
	test	eax, eax
	setne	al
	movsx	eax, al
L18:
; JumpIfZero
	test	eax, eax
	je	L15
; {
; RPN'ized expression: "descThread ppindx + *u &u trama -> *u tw -> *u &u AX -> *u tramaThread tw -> *u &u BX -> *u = "
; Expanded expression: "descThread L3 *(4) 40 * + 12 + *(4) 0 + 32 + tramaThread *(4) 0 + 20 + *(2) =(2) "
; Fused expression:    "descThread push-ax L3 * *ax 40 + *sp ax + ax 12 + *ax 0 + ax 32 push-ax tramaThread + *ax 0 + ax 20 =(170) **sp *ax "
section .relod
	dd	L29
section .text
	db	0x66, 0xB8
L29:
	dd	_descThread
	push	eax
section .relod
	dd	L30
section .text
	db	0x66, 0xB8
L30:
	dd	L3
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
	add	eax, 32
	push	eax
section .relod
	dd	L31
section .text
	db	0x66, 0xB8
L31:
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
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "descThread ppindx + *u &u trama -> *u tw -> *u &u BX -> *u descProceso pindx + *u &u pid -> *u = "
; Expanded expression: "descThread L3 *(4) 40 * + 12 + *(4) 0 + 20 + descProceso (@8) *(4) 292 * + 0 + *(4) =(2) "
; Fused expression:    "descThread push-ax L3 * *ax 40 + *sp ax + ax 12 + *ax 0 + ax 20 push-ax descProceso push-ax * *(@8) 292 + *sp ax + ax 0 =(172) **sp *ax "
section .relod
	dd	L32
section .text
	db	0x66, 0xB8
L32:
	dd	_descThread
	push	eax
section .relod
	dd	L33
section .text
	db	0x66, 0xB8
L33:
	dd	L3
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
	add	eax, 20
	push	eax
section .relod
	dd	L34
section .text
	db	0x66, 0xB8
L34:
	dd	_descProceso
	push	eax
	mov	eax, [bp+8]
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
; RPN'ized expression: "descThread ppindx + *u &u estado -> *u preparado = "
; Expanded expression: "descThread L3 *(4) 40 * + 4 + 1 =(4) "
; Fused expression:    "descThread push-ax L3 * *ax 40 + *sp ax + ax 4 =(204) *ax 1 "
section .relod
	dd	L35
section .text
	db	0x66, 0xB8
L35:
	dd	_descThread
	push	eax
section .relod
	dd	L36
section .text
	db	0x66, 0xB8
L36:
	dd	L3
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
; loc         <something> : * struct <something>
; RPN'ized expression: "( c2cPFR TUrgentes + *u &u (something37) , ppindx encolarPC2c ) "
; Expanded expression: " c2cPFR 80 +  L3 *(4)  encolarPC2c ()8 "
; Fused expression:    "( c2cPFR + ax 80 , L3 *(4) ax , encolarPC2c )8 "
section .relod
	dd	L38
section .text
	db	0x66, 0xB8
L38:
	dd	_c2cPFR
	add	eax, 80
	push	eax
section .relod
	dd	L39
section .text
	db	0x66, 0xB8
L39:
	dd	L3
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L40
section .text
L40:
	dd	_encolarPC2c
	sub	sp, -8
; loc         <something> : * struct <something>
; RPN'ized expression: "( descProceso ppindx + *u &u c2cHijos -> *u &u (something41) , pindx eliminarPC2c ) "
; Expanded expression: " descProceso L3 *(4) 292 * + 20 +  (@8) *(4)  eliminarPC2c ()8 "
; Fused expression:    "( descProceso push-ax L3 * *ax 292 + *sp ax + ax 20 , *(4) (@8) , eliminarPC2c )8 "
section .relod
	dd	L42
section .text
	db	0x66, 0xB8
L42:
	dd	_descProceso
	push	eax
section .relod
	dd	L43
section .text
	db	0x66, 0xB8
L43:
	dd	L3
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
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L44
section .text
L44:
	dd	_eliminarPC2c
	sub	sp, -8
; RPN'ized expression: "( pindx matarProcIndx ) "
; Expanded expression: " (@8) *(4)  matarProcIndx ()4 "
; Fused expression:    "( *(4) (@8) , matarProcIndx )4 "
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L45
section .text
L45:
	dd	_matarProcIndx
	sub	sp, -4
; }
	jmp	L16
L15:
; else
; {
; RPN'ized expression: "descThread pindx + *u &u estado -> *u bloqueado = "
; Expanded expression: "descThread (@8) *(4) 40 * + 4 + 3 =(4) "
; Fused expression:    "descThread push-ax * *(@8) 40 + *sp ax + ax 4 =(204) *ax 3 "
section .relod
	dd	L46
section .text
	db	0x66, 0xB8
L46:
	dd	_descThread
	push	eax
	mov	eax, [bp+8]
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
; loc         <something> : int
; RPN'ized expression: "descThread pindx + *u &u esperandoPor -> *u 2 -u (something47) = "
; Expanded expression: "descThread (@8) *(4) 40 * + 8 + -2 =(4) "
; Fused expression:    "descThread push-ax * *(@8) 40 + *sp ax + ax 8 =(204) *ax -2 "
section .relod
	dd	L48
section .text
	db	0x66, 0xB8
L48:
	dd	_descThread
	push	eax
	mov	eax, [bp+8]
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
; RPN'ized expression: "descThread pindx + *u &u status -> *u tramaThread tw -> *u &u BX -> *u = "
; Expanded expression: "descThread (@8) *(4) 40 * + 20 + tramaThread *(4) 0 + 20 + *(2) =(4) "
; Fused expression:    "descThread push-ax * *(@8) 40 + *sp ax + ax 20 push-ax tramaThread + *ax 0 + ax 20 =(202) **sp *ax "
section .relod
	dd	L49
section .text
	db	0x66, 0xB8
L49:
	dd	_descThread
	push	eax
	mov	eax, [bp+8]
	imul	eax, eax, 40
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 20
	push	eax
section .relod
	dd	L50
section .text
	db	0x66, 0xB8
L50:
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
; RPN'ized expression: "( pindx terminarProcIndx ) "
; Expanded expression: " (@8) *(4)  terminarProcIndx ()4 "
; Fused expression:    "( *(4) (@8) , terminarProcIndx )4 "
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L51
section .text
L51:
	dd	_terminarProcIndx
	sub	sp, -4
; }
L16:
L8:
; if
; RPN'ized expression: "pindx indThreadActual == "
; Expanded expression: "(@8) *(4) indThreadActual *(4) == "
; Fused expression:    "indThreadActual == *(@8) *ax IF! "
section .relod
	dd	L54
section .text
	db	0x66, 0xB8
L54:
	dd	_indThreadActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp+8]
	cmp	eax, ecx
	jne	L52
; RPN'ized expression: "( buscarNuevoThreadActual ) "
; Expanded expression: " buscarNuevoThreadActual ()0 "
; Fused expression:    "( buscarNuevoThreadActual )0 "
	db	0x9A
section .relot
	dd	L55
section .text
L55:
	dd	_buscarNuevoThreadActual
L52:
; return
; RPN'ized expression: "err "
; Expanded expression: "L4 *(4) "
; Fused expression:    "L4 *(4) ax  "
section .relod
	dd	L56
section .text
	db	0x66, 0xB8
L56:
	dd	L4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
L1:
	db	0x66
	leave
	retf
L57:

section .fxnsz noalloc
	dd	L57 - _doKill


	extern	_descProceso
	extern	_eliminarPC2c
	extern	_matarProcIndx
	extern	_descThread
	extern	_tramaThread
	extern	_c2cPFR
	extern	_encolarPC2c
	extern	_terminarProcIndx
	extern	_indThreadActual
	extern	_buscarNuevoThreadActual

; Syntax/declaration table/stack:
; Bytes used: 10165/40960


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
; Ident aux
; Ident relleno
; Ident bloque_t
; Ident ptrBloque_t
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
; Ident doKill
; Bytes used: 4199/16384

; Next label number: 58
; Compilation succeeded.
