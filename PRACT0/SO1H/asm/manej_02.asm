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
; glb indiceTFAS : (
; prm     nombre : * char
;     ) int
section .text
	global	_indiceTFAS
_indiceTFAS:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     nombre : (@8): * char
; loc     dfs : (@-4): int
; RPN'ized expression: "dfs c2cPFR DFOcupados + *u &u primero -> *u = "
; Expanded expression: "(@-4) c2cPFR 144 + 4 + *(4) =(4) "
; Fused expression:    "c2cPFR + ax 144 + ax 4 =(204) *(@-4) *ax "
section .relod
	dd	L3
section .text
	db	0x66, 0xB8
L3:
	dd	_c2cPFR
	add	eax, 144
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-4], eax
; while
; RPN'ized expression: "dfs c2cPFR DFOcupados + *u &u cabecera -> *u != "
; Expanded expression: "(@-4) *(4) c2cPFR 144 + 8 + *(4) != "
L4:
; Fused expression:    "c2cPFR + ax 144 + ax 8 != *(@-4) *ax IF! "
section .relod
	dd	L6
section .text
	db	0x66, 0xB8
L6:
	dd	_c2cPFR
	add	eax, 144
	add	eax, 8
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp-4]
	cmp	eax, ecx
	je	L5
; {
; if
; RPN'ized expression: "( nombre , descFichero dfs + *u &u nombre -> *u strcmp ) 0 == "
; Expanded expression: " (@8) *(4)  descFichero (@-4) *(4) 36 * + 4 +  strcmp ()8 0 == "
; Fused expression:    "( *(4) (@8) , descFichero push-ax * *(@-4) 36 + *sp ax + ax 4 , strcmp )8 == ax 0 IF! "
	push	dword [bp+8]
section .relod
	dd	L9
section .text
	db	0x66, 0xB8
L9:
	dd	_descFichero
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 36
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 4
	push	eax
	db	0x9A
section .relot
	dd	L10
section .text
L10:
	dd	_strcmp
	sub	sp, -8
	cmp	eax, 0
	jne	L7
; return
; RPN'ized expression: "dfs "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
	jmp	L1
L7:
; RPN'ized expression: "dfs c2cPFR DFOcupados + *u &u e -> *u dfs + *u &u sig -> *u = "
; Expanded expression: "(@-4) c2cPFR 144 + 12 + *(4) (@-4) *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "c2cPFR + ax 144 + ax 12 push-ax * *(@-4) 12 + **sp ax + ax 0 =(204) *(@-4) *ax "
section .relod
	dd	L11
section .text
	db	0x66, 0xB8
L11:
	dd	_c2cPFR
	add	eax, 144
	add	eax, 12
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 12
	mov	ecx, eax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-4], eax
; }
	jmp	L4
L5:
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1  "
	mov	eax, -1
L1:
	db	0x66
	leave
	retf
L12:

section .fxnsz noalloc
	dd	L12 - _indiceTFAS

; glb indiceTFA : (
; prm     nombre : * char
;     ) int
section .text
	global	_indiceTFA
_indiceTFA:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          8
; loc     nombre : (@8): * char
; loc     df : (@-4): int
; loc     dfs : (@-8): int
; for
; RPN'ized expression: "df 0 = "
; Expanded expression: "(@-4) 0 =(4) "
; Fused expression:    "=(204) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], eax
L15:
; RPN'ized expression: "df 10 < "
; Expanded expression: "(@-4) *(4) 10 < "
; Fused expression:    "< *(@-4) 10 IF! "
	mov	eax, [bp-4]
	cmp	eax, 10
	jge	L18
; RPN'ized expression: "df ++p "
; Expanded expression: "(@-4) ++p(4) "
; {
; if
; RPN'ized expression: "dfs descProceso indProcesoActual + *u &u tfa -> *u df + *u &u dfs -> *u = 1 -u != ( 8 , nombre , descFichero dfs + *u &u nombre -> *u strncmp ) 0 == && "
; Expanded expression: "(@-8) descProceso indProcesoActual *(4) 292 * + 164 + (@-4) *(4) 12 * + 4 + *(4) =(4) -1 != [sh&&->21]  8  (@8) *(4)  descFichero (@-8) *(4) 36 * + 4 +  strncmp ()12 0 == &&[21] "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 164 push-ax * *(@-4) 12 + *sp ax + ax 4 =(204) *(@-8) *ax != ax -1 [sh&&->21] ( 8 , *(4) (@8) , descFichero push-ax * *(@-8) 36 + *sp ax + ax 4 , strncmp )12 == ax 0 &&[21]  "
section .relod
	dd	L22
section .text
	db	0x66, 0xB8
L22:
	dd	_descProceso
	push	eax
section .relod
	dd	L23
section .text
	db	0x66, 0xB8
L23:
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
	add	eax, 164
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 12
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
	mov	[bp-8], eax
	cmp	eax, -1
	setne	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L21
	push	dword 8
	push	dword [bp+8]
section .relod
	dd	L24
section .text
	db	0x66, 0xB8
L24:
	dd	_descFichero
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 36
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 4
	push	eax
	db	0x9A
section .relot
	dd	L25
section .text
L25:
	dd	_strncmp
	sub	sp, -12
	cmp	eax, 0
	sete	al
	movzx	eax, al
L21:
; JumpIfZero
	test	eax, eax
	je	L19
; return
; RPN'ized expression: "df "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
	jmp	L13
L19:
; }
L16:
; Fused expression:    "++p(4) *(@-4) "
	mov	eax, [bp-4]
	inc	dword [bp-4]
	jmp	L15
L18:
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1  "
	mov	eax, -1
L13:
	db	0x66
	leave
	retf
L26:

section .fxnsz
	dd	L26 - _indiceTFA

; glb nuevaEntradaTFA : (void) int
section .text
	global	_nuevaEntradaTFA
_nuevaEntradaTFA:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     df : (@-4): int
; for
; RPN'ized expression: "df 0 = "
; Expanded expression: "(@-4) 0 =(4) "
; Fused expression:    "=(204) *(@-4) 0 "
	mov	eax, 0
	mov	[bp-4], eax
L29:
; RPN'ized expression: "df 10 < "
; Expanded expression: "(@-4) *(4) 10 < "
; Fused expression:    "< *(@-4) 10 IF! "
	mov	eax, [bp-4]
	cmp	eax, 10
	jge	L32
; RPN'ized expression: "df ++p "
; Expanded expression: "(@-4) ++p(4) "
; if
; RPN'ized expression: "descProceso indProcesoActual + *u &u tfa -> *u df + *u &u dfs -> *u 0 < "
; Expanded expression: "descProceso indProcesoActual *(4) 292 * + 164 + (@-4) *(4) 12 * + 4 + *(4) 0 < "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 164 push-ax * *(@-4) 12 + *sp ax + ax 4 < *ax 0 IF! "
section .relod
	dd	L35
section .text
	db	0x66, 0xB8
L35:
	dd	_descProceso
	push	eax
section .relod
	dd	L36
section .text
	db	0x66, 0xB8
L36:
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
	add	eax, 164
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 12
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
	cmp	eax, 0
	jge	L33
; {
; return
; RPN'ized expression: "df "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
	jmp	L27
; }
L33:
L30:
; Fused expression:    "++p(4) *(@-4) "
	mov	eax, [bp-4]
	inc	dword [bp-4]
	jmp	L29
L32:
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1  "
	mov	eax, -1
L27:
	db	0x66
	leave
	retf
L37:

section .fxnsz
	dd	L37 - _nuevaEntradaTFA

; glb so1_manejador_02 : (void) void
section .text
	global	_so1_manejador_02
_so1_manejador_02:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         56
; loc     df : (@-4): int
; loc     dfs : (@-8): int
; loc     dfs1 : (@-12): int
; loc     res : (@-16): int
; loc     rindx : (@-20): int
; loc     nombre : (@-24): * char
; loc     modoAp : (@-28): unsigned short
; loc     dir : (@-32): * unsigned char
; loc     nbytes : (@-36): unsigned short
; loc     posNueva : (@-40): int
; loc     pos : (@-44): int
; loc     whence : (@-48): int
; loc     cmd : (@-52): unsigned short
; loc     arg : (@-56): unsigned short
; switch
; RPN'ized expression: "tramaThread tb -> *u &u AL -> *u "
; Expanded expression: "tramaThread *(4) 0 + 32 + *(1) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 *(1) ax  "
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
	add	eax, 32
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	jmp	L41
; {
; case
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
L43:
; RPN'ized expression: "modoAp tramaThread tw -> *u &u DX -> *u = "
; Expanded expression: "(@-28) tramaThread *(4) 0 + 24 + *(2) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 24 =(170) *(@-28) *ax "
section .relod
	dd	L44
section .text
	db	0x66, 0xB8
L44:
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
	mov	[bp-28], ax
	movzx	eax, ax
; loc         <something> : * char
; RPN'ized expression: "nombre ( tramaThread tw -> *u &u BX -> *u , tramaThread tw -> *u &u ES -> *u pointer ) (something45) = "
; Expanded expression: "(@-24)  tramaThread *(4) 0 + 20 + *(2)  tramaThread *(4) 0 + 2 + *(2)  pointer ()8 =(4) "
; Fused expression:    "( tramaThread + *ax 0 + ax 20 *(2) ax , tramaThread + *ax 0 + ax 2 *(2) ax , pointer )8 =(204) *(@-24) ax "
section .relod
	dd	L46
section .text
	db	0x66, 0xB8
L46:
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
	push	eax
section .relod
	dd	L47
section .text
	db	0x66, 0xB8
L47:
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
	push	eax
	db	0x9A
section .relot
	dd	L48
section .text
L48:
	dd	_pointer
	sub	sp, -8
	mov	[bp-24], eax
; RPN'ized expression: "df 1 -u = "
; Expanded expression: "(@-4) -1 =(4) "
; Fused expression:    "=(204) *(@-4) -1 "
	mov	eax, -1
	mov	[bp-4], eax
; if
; RPN'ized expression: "modoAp 16384 32768 | & 16384 32768 | == "
; Expanded expression: "(@-28) *(2) 49152 & 49152 == "
; Fused expression:    "& *(@-28) 49152 == ax 49152 IF! "
	mov	ax, [bp-28]
	movzx	eax, ax
	and	eax, 49152
	cmp	eax, 49152
	jne	L49
; {
; RPN'ized expression: "tramaThread tw -> *u &u AX -> *u df = "
; Expanded expression: "tramaThread *(4) 0 + 32 + (@-4) *(4) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 =(172) *ax *(@-4) "
section .relod
	dd	L51
section .text
	db	0x66, 0xB8
L51:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 32
	mov	ebx, eax
	mov	eax, [bp-4]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L40
; }
L49:
; if
; RPN'ized expression: "modoAp 16384 32768 | & 0 == "
; Expanded expression: "(@-28) *(2) 49152 & 0 == "
; Fused expression:    "& *(@-28) 49152 == ax 0 IF! "
	mov	ax, [bp-28]
	movzx	eax, ax
	and	eax, 49152
	cmp	eax, 0
	jne	L52
; RPN'ized expression: "modoAp modoAp 16384 + = "
; Expanded expression: "(@-28) (@-28) *(2) 16384 + =(2) "
; Fused expression:    "+ *(@-28) 16384 =(172) *(@-28) ax "
	mov	ax, [bp-28]
	movzx	eax, ax
	add	eax, 16384
	mov	[bp-28], ax
	movzx	eax, ax
L52:
; RPN'ized expression: "df ( nombre indiceTFA ) = "
; Expanded expression: "(@-4)  (@-24) *(4)  indiceTFA ()4 =(4) "
; Fused expression:    "( *(4) (@-24) , indiceTFA )4 =(204) *(@-4) ax "
	push	dword [bp-24]
	db	0x9A
section .relot
	dd	L54
section .text
L54:
	dd	_indiceTFA
	sub	sp, -4
	mov	[bp-4], eax
; if
; RPN'ized expression: "df 0 >= "
; Expanded expression: "(@-4) *(4) 0 >= "
; Fused expression:    ">= *(@-4) 0 IF! "
	mov	eax, [bp-4]
	cmp	eax, 0
	jl	L55
; {
; RPN'ized expression: "dfs descProceso indProcesoActual + *u &u tfa -> *u df + *u &u dfs -> *u = "
; Expanded expression: "(@-8) descProceso indProcesoActual *(4) 292 * + 164 + (@-4) *(4) 12 * + 4 + *(4) =(4) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 164 push-ax * *(@-4) 12 + *sp ax + ax 4 =(204) *(@-8) *ax "
section .relod
	dd	L57
section .text
	db	0x66, 0xB8
L57:
	dd	_descProceso
	push	eax
section .relod
	dd	L58
section .text
	db	0x66, 0xB8
L58:
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
	add	eax, 164
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 12
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
	mov	[bp-8], eax
; RPN'ized expression: "rindx descFichero dfs + *u &u rindx -> *u = "
; Expanded expression: "(@-20) descFichero (@-8) *(4) 36 * + 16 + *(4) =(4) "
; Fused expression:    "descFichero push-ax * *(@-8) 36 + *sp ax + ax 16 =(204) *(@-20) *ax "
section .relod
	dd	L59
section .text
	db	0x66, 0xB8
L59:
	dd	_descFichero
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 36
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
	mov	[bp-20], eax
; }
	jmp	L56
L55:
; else
; {
; RPN'ized expression: "dfs ( nombre indiceTFAS ) = "
; Expanded expression: "(@-8)  (@-24) *(4)  indiceTFAS ()4 =(4) "
; Fused expression:    "( *(4) (@-24) , indiceTFAS )4 =(204) *(@-8) ax "
	push	dword [bp-24]
	db	0x9A
section .relot
	dd	L60
section .text
L60:
	dd	_indiceTFAS
	sub	sp, -4
	mov	[bp-8], eax
; if
; RPN'ized expression: "dfs 0 >= "
; Expanded expression: "(@-8) *(4) 0 >= "
; Fused expression:    ">= *(@-8) 0 IF! "
	mov	eax, [bp-8]
	cmp	eax, 0
	jl	L61
; RPN'ized expression: "rindx descFichero dfs + *u &u rindx -> *u = "
; Expanded expression: "(@-20) descFichero (@-8) *(4) 36 * + 16 + *(4) =(4) "
; Fused expression:    "descFichero push-ax * *(@-8) 36 + *sp ax + ax 16 =(204) *(@-20) *ax "
section .relod
	dd	L63
section .text
	db	0x66, 0xB8
L63:
	dd	_descFichero
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 36
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
	mov	[bp-20], eax
L61:
; }
L56:
; if
; loc         <something> : * (
; prm             dfs : int
; prm             modo : unsigned short
;             ) int
; loc         <something> : * unsigned char
; RPN'ized expression: "descRecurso rindx + *u &u open -> *u 0 (something67) (something66) != dfs1 ( modoAp , dfs descRecurso rindx + *u &u open -> *u ) = 0 >= && "
; Expanded expression: "descRecurso (@-20) *(4) 96 * + 56 + *(4) 0 != [sh&&->68] (@-12)  (@-28) *(2)  (@-8) *(4)  descRecurso (@-20) *(4) 96 * + 56 + *(4) ()8 =(4) 0 >= &&[68] "
; Fused expression:    "descRecurso push-ax * *(@-20) 96 + *sp ax + ax 56 != *ax 0 [sh&&->68] ( *(2) (@-28) , *(4) (@-8) , descRecurso push-ax * *(@-20) 96 + *sp ax + ax 56 *(4) ax )8 =(204) *(@-12) ax >= ax 0 &&[68]  "
section .relod
	dd	L69
section .text
	db	0x66, 0xB8
L69:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-20]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 56
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 0
	setne	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L68
	mov	ax, [bp-28]
	movzx	eax, ax
	push	eax
	push	dword [bp-8]
section .relod
	dd	L70
section .text
	db	0x66, 0xB8
L70:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-20]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 56
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	db	0x9A
section .relot
	dd	L71
section .text
L71:
	dd	L72
L72:
	mov	si, sp
	add	word [ss:si], L73 - L72
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L73:
	sub	sp, -8
	mov	[bp-12], eax
	cmp	eax, 0
	setge	al
	movzx	eax, al
L68:
; JumpIfZero
	test	eax, eax
	je	L64
; {
; if
; RPN'ized expression: "df ( nuevaEntradaTFA ) = 0 >= "
; Expanded expression: "(@-4)  nuevaEntradaTFA ()0 =(4) 0 >= "
; Fused expression:    "( nuevaEntradaTFA )0 =(204) *(@-4) ax >= ax 0 IF! "
	db	0x9A
section .relot
	dd	L76
section .text
L76:
	dd	_nuevaEntradaTFA
	mov	[bp-4], eax
	cmp	eax, 0
	jl	L74
; {
; if
; RPN'ized expression: "dfs1 0 > "
; Expanded expression: "(@-12) *(4) 0 > "
; Fused expression:    "> *(@-12) 0 IF! "
	mov	eax, [bp-12]
	cmp	eax, 0
	jle	L77
; RPN'ized expression: "dfs dfs1 = "
; Expanded expression: "(@-8) (@-12) *(4) =(4) "
; Fused expression:    "=(204) *(@-8) *(@-12) "
	mov	eax, [bp-12]
	mov	[bp-8], eax
L77:
; RPN'ized expression: "descProceso indProcesoActual + *u &u nfa -> *u ++p "
; Expanded expression: "descProceso indProcesoActual *(4) 292 * + 160 + ++p(2) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 160 ++p(2) *ax "
section .relod
	dd	L79
section .text
	db	0x66, 0xB8
L79:
	dd	_descProceso
	push	eax
section .relod
	dd	L80
section .text
	db	0x66, 0xB8
L80:
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
	add	eax, 160
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	inc	word [si]
; RPN'ized expression: "descProceso indProcesoActual + *u &u tfa -> *u df + *u &u modoAp -> *u modoAp = "
; Expanded expression: "descProceso indProcesoActual *(4) 292 * + 164 + (@-4) *(4) 12 * + 0 + (@-28) *(2) =(2) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 164 push-ax * *(@-4) 12 + *sp ax + ax 0 =(170) *ax *(@-28) "
section .relod
	dd	L81
section .text
	db	0x66, 0xB8
L81:
	dd	_descProceso
	push	eax
section .relod
	dd	L82
section .text
	db	0x66, 0xB8
L82:
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
	add	eax, 164
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 12
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	ax, [bp-28]
	movzx	eax, ax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; RPN'ized expression: "descProceso indProcesoActual + *u &u tfa -> *u df + *u &u dfs -> *u dfs = "
; Expanded expression: "descProceso indProcesoActual *(4) 292 * + 164 + (@-4) *(4) 12 * + 4 + (@-8) *(4) =(4) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 164 push-ax * *(@-4) 12 + *sp ax + ax 4 =(204) *ax *(@-8) "
section .relod
	dd	L83
section .text
	db	0x66, 0xB8
L83:
	dd	_descProceso
	push	eax
section .relod
	dd	L84
section .text
	db	0x66, 0xB8
L84:
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
	add	eax, 164
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 12
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	eax, [bp-8]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "descProceso indProcesoActual + *u &u tfa -> *u df + *u &u pos -> *u 0 = "
; Expanded expression: "descProceso indProcesoActual *(4) 292 * + 164 + (@-4) *(4) 12 * + 8 + 0 =(4) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 164 push-ax * *(@-4) 12 + *sp ax + ax 8 =(204) *ax 0 "
section .relod
	dd	L85
section .text
	db	0x66, 0xB8
L85:
	dd	_descProceso
	push	eax
section .relod
	dd	L86
section .text
	db	0x66, 0xB8
L86:
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
	add	eax, 164
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 12
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 8
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; if
; RPN'ized expression: "modoAp 7 & 1 == "
; Expanded expression: "(@-28) *(2) 7 & 1 == "
; Fused expression:    "& *(@-28) 7 == ax 1 IF! "
	mov	ax, [bp-28]
	movzx	eax, ax
	and	eax, 7
	cmp	eax, 1
	jne	L87
; RPN'ized expression: "descFichero dfs + *u &u contAp_L -> *u ++p "
; Expanded expression: "descFichero (@-8) *(4) 36 * + 28 + ++p(4) "
; Fused expression:    "descFichero push-ax * *(@-8) 36 + *sp ax + ax 28 ++p(4) *ax "
section .relod
	dd	L89
section .text
	db	0x66, 0xB8
L89:
	dd	_descFichero
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 36
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 28
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	inc	dword [si]
	jmp	L88
L87:
; else
; if
; RPN'ized expression: "modoAp 7 & 2 == "
; Expanded expression: "(@-28) *(2) 7 & 2 == "
; Fused expression:    "& *(@-28) 7 == ax 2 IF! "
	mov	ax, [bp-28]
	movzx	eax, ax
	and	eax, 7
	cmp	eax, 2
	jne	L90
; RPN'ized expression: "descFichero dfs + *u &u contAp_E -> *u ++p "
; Expanded expression: "descFichero (@-8) *(4) 36 * + 32 + ++p(4) "
; Fused expression:    "descFichero push-ax * *(@-8) 36 + *sp ax + ax 32 ++p(4) *ax "
section .relod
	dd	L92
section .text
	db	0x66, 0xB8
L92:
	dd	_descFichero
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 36
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 32
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	inc	dword [si]
L90:
L88:
; }
	jmp	L75
L74:
; else
; RPN'ized expression: "( dfs descRecurso rindx + *u &u release -> *u ) "
; Expanded expression: " (@-8) *(4)  descRecurso (@-20) *(4) 96 * + 60 + *(4) ()4 "
; Fused expression:    "( *(4) (@-8) , descRecurso push-ax * *(@-20) 96 + *sp ax + ax 60 *(4) ax )4 "
	push	dword [bp-8]
section .relod
	dd	L93
section .text
	db	0x66, 0xB8
L93:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-20]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 60
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	db	0x9A
section .relot
	dd	L94
section .text
L94:
	dd	L95
L95:
	mov	si, sp
	add	word [ss:si], L96 - L95
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L96:
	sub	sp, -4
L75:
; }
L64:
; RPN'ized expression: "tramaThread tw -> *u &u AX -> *u df = "
; Expanded expression: "tramaThread *(4) 0 + 32 + (@-4) *(4) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 =(172) *ax *(@-4) "
section .relod
	dd	L97
section .text
	db	0x66, 0xB8
L97:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 32
	mov	ebx, eax
	mov	eax, [bp-4]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L40
; case
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
L98:
; RPN'ized expression: "df tramaThread tw -> *u &u BX -> *u = "
; Expanded expression: "(@-4) tramaThread *(4) 0 + 20 + *(2) =(4) "
; Fused expression:    "tramaThread + *ax 0 + ax 20 =(202) *(@-4) *ax "
section .relod
	dd	L99
section .text
	db	0x66, 0xB8
L99:
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
	mov	[bp-4], eax
; RPN'ized expression: "res 1 -u = "
; Expanded expression: "(@-16) -1 =(4) "
; Fused expression:    "=(204) *(@-16) -1 "
	mov	eax, -1
	mov	[bp-16], eax
; if
; RPN'ized expression: "0 df <= df 10 < && "
; Expanded expression: "0 (@-4) *(4) <= [sh&&->102] (@-4) *(4) 10 < &&[102] "
; Fused expression:    "<= 0 *(@-4) [sh&&->102] < *(@-4) 10 &&[102]  "
	mov	eax, 0
	cmp	eax, [bp-4]
	setle	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L102
	mov	eax, [bp-4]
	cmp	eax, 10
	setl	al
	movzx	eax, al
L102:
; JumpIfZero
	test	eax, eax
	je	L100
; {
; RPN'ized expression: "dfs descProceso indProcesoActual + *u &u tfa -> *u df + *u &u dfs -> *u = "
; Expanded expression: "(@-8) descProceso indProcesoActual *(4) 292 * + 164 + (@-4) *(4) 12 * + 4 + *(4) =(4) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 164 push-ax * *(@-4) 12 + *sp ax + ax 4 =(204) *(@-8) *ax "
section .relod
	dd	L103
section .text
	db	0x66, 0xB8
L103:
	dd	_descProceso
	push	eax
section .relod
	dd	L104
section .text
	db	0x66, 0xB8
L104:
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
	add	eax, 164
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 12
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
	mov	[bp-8], eax
; if
; RPN'ized expression: "0 dfs <= dfs 20 < && "
; Expanded expression: "0 (@-8) *(4) <= [sh&&->107] (@-8) *(4) 20 < &&[107] "
; Fused expression:    "<= 0 *(@-8) [sh&&->107] < *(@-8) 20 &&[107]  "
	mov	eax, 0
	cmp	eax, [bp-8]
	setle	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L107
	mov	eax, [bp-8]
	cmp	eax, 20
	setl	al
	movzx	eax, al
L107:
; JumpIfZero
	test	eax, eax
	je	L105
; {
; RPN'ized expression: "rindx descFichero dfs + *u &u rindx -> *u = "
; Expanded expression: "(@-20) descFichero (@-8) *(4) 36 * + 16 + *(4) =(4) "
; Fused expression:    "descFichero push-ax * *(@-8) 36 + *sp ax + ax 16 =(204) *(@-20) *ax "
section .relod
	dd	L108
section .text
	db	0x66, 0xB8
L108:
	dd	_descFichero
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 36
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
	mov	[bp-20], eax
; RPN'ized expression: "descProceso indProcesoActual + *u &u nfa -> *u --p "
; Expanded expression: "descProceso indProcesoActual *(4) 292 * + 160 + --p(2) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 160 --p(2) *ax "
section .relod
	dd	L109
section .text
	db	0x66, 0xB8
L109:
	dd	_descProceso
	push	eax
section .relod
	dd	L110
section .text
	db	0x66, 0xB8
L110:
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
	add	eax, 160
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	dec	word [si]
; RPN'ized expression: "modoAp descProceso indProcesoActual + *u &u tfa -> *u df + *u &u modoAp -> *u = "
; Expanded expression: "(@-28) descProceso indProcesoActual *(4) 292 * + 164 + (@-4) *(4) 12 * + 0 + *(2) =(2) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 164 push-ax * *(@-4) 12 + *sp ax + ax 0 =(170) *(@-28) *ax "
section .relod
	dd	L111
section .text
	db	0x66, 0xB8
L111:
	dd	_descProceso
	push	eax
section .relod
	dd	L112
section .text
	db	0x66, 0xB8
L112:
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
	add	eax, 164
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 12
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-28], ax
	movzx	eax, ax
; if
; RPN'ized expression: "modoAp 7 & 1 == "
; Expanded expression: "(@-28) *(2) 7 & 1 == "
; Fused expression:    "& *(@-28) 7 == ax 1 IF! "
	mov	ax, [bp-28]
	movzx	eax, ax
	and	eax, 7
	cmp	eax, 1
	jne	L113
; RPN'ized expression: "descFichero dfs + *u &u contAp_L -> *u --p "
; Expanded expression: "descFichero (@-8) *(4) 36 * + 28 + --p(4) "
; Fused expression:    "descFichero push-ax * *(@-8) 36 + *sp ax + ax 28 --p(4) *ax "
section .relod
	dd	L115
section .text
	db	0x66, 0xB8
L115:
	dd	_descFichero
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 36
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 28
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	dec	dword [si]
	jmp	L114
L113:
; else
; if
; RPN'ized expression: "modoAp 7 & 2 == "
; Expanded expression: "(@-28) *(2) 7 & 2 == "
; Fused expression:    "& *(@-28) 7 == ax 2 IF! "
	mov	ax, [bp-28]
	movzx	eax, ax
	and	eax, 7
	cmp	eax, 2
	jne	L116
; RPN'ized expression: "descFichero dfs + *u &u contAp_E -> *u --p "
; Expanded expression: "descFichero (@-8) *(4) 36 * + 32 + --p(4) "
; Fused expression:    "descFichero push-ax * *(@-8) 36 + *sp ax + ax 32 --p(4) *ax "
section .relod
	dd	L118
section .text
	db	0x66, 0xB8
L118:
	dd	_descFichero
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 36
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 32
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	dec	dword [si]
L116:
L114:
; RPN'ized expression: "descProceso indProcesoActual + *u &u tfa -> *u df + *u &u dfs -> *u 1 -u = "
; Expanded expression: "descProceso indProcesoActual *(4) 292 * + 164 + (@-4) *(4) 12 * + 4 + -1 =(4) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 164 push-ax * *(@-4) 12 + *sp ax + ax 4 =(204) *ax -1 "
section .relod
	dd	L119
section .text
	db	0x66, 0xB8
L119:
	dd	_descProceso
	push	eax
section .relod
	dd	L120
section .text
	db	0x66, 0xB8
L120:
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
	add	eax, 164
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 12
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	eax, -1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "( dfs descRecurso rindx + *u &u release -> *u ) "
; Expanded expression: " (@-8) *(4)  descRecurso (@-20) *(4) 96 * + 60 + *(4) ()4 "
; Fused expression:    "( *(4) (@-8) , descRecurso push-ax * *(@-20) 96 + *sp ax + ax 60 *(4) ax )4 "
	push	dword [bp-8]
section .relod
	dd	L121
section .text
	db	0x66, 0xB8
L121:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-20]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 60
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	db	0x9A
section .relot
	dd	L122
section .text
L122:
	dd	L123
L123:
	mov	si, sp
	add	word [ss:si], L124 - L123
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L124:
	sub	sp, -4
; RPN'ized expression: "res 0 = "
; Expanded expression: "(@-16) 0 =(4) "
; Fused expression:    "=(204) *(@-16) 0 "
	mov	eax, 0
	mov	[bp-16], eax
; }
L105:
; }
L100:
; RPN'ized expression: "tramaThread tw -> *u &u AX -> *u res = "
; Expanded expression: "tramaThread *(4) 0 + 32 + (@-16) *(4) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 =(172) *ax *(@-16) "
section .relod
	dd	L125
section .text
	db	0x66, 0xB8
L125:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 32
	mov	ebx, eax
	mov	eax, [bp-16]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L40
; case
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
L126:
; case
; RPN'ized expression: "3 "
; Expanded expression: "3 "
; Expression value: 3
L127:
; case
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
L128:
; case
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
L129:
; RPN'ized expression: "df tramaThread tw -> *u &u BX -> *u = "
; Expanded expression: "(@-4) tramaThread *(4) 0 + 20 + *(2) =(4) "
; Fused expression:    "tramaThread + *ax 0 + ax 20 =(202) *(@-4) *ax "
section .relod
	dd	L130
section .text
	db	0x66, 0xB8
L130:
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
	mov	[bp-4], eax
; RPN'ized expression: "res 1 -u = "
; Expanded expression: "(@-16) -1 =(4) "
; Fused expression:    "=(204) *(@-16) -1 "
	mov	eax, -1
	mov	[bp-16], eax
; if
; RPN'ized expression: "0 df <= df 10 < && "
; Expanded expression: "0 (@-4) *(4) <= [sh&&->133] (@-4) *(4) 10 < &&[133] "
; Fused expression:    "<= 0 *(@-4) [sh&&->133] < *(@-4) 10 &&[133]  "
	mov	eax, 0
	cmp	eax, [bp-4]
	setle	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L133
	mov	eax, [bp-4]
	cmp	eax, 10
	setl	al
	movzx	eax, al
L133:
; JumpIfZero
	test	eax, eax
	je	L131
; {
; RPN'ized expression: "nbytes tramaThread tw -> *u &u CX -> *u = "
; Expanded expression: "(@-36) tramaThread *(4) 0 + 28 + *(2) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 28 =(170) *(@-36) *ax "
section .relod
	dd	L134
section .text
	db	0x66, 0xB8
L134:
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
	mov	[bp-36], ax
	movzx	eax, ax
; if
; RPN'ized expression: "nbytes 0 == "
; Expanded expression: "(@-36) *(2) 0 == "
; Fused expression:    "== *(@-36) 0 IF! "
	mov	ax, [bp-36]
	movzx	eax, ax
	cmp	eax, 0
	jne	L135
; RPN'ized expression: "res 0 = "
; Expanded expression: "(@-16) 0 =(4) "
; Fused expression:    "=(204) *(@-16) 0 "
	mov	eax, 0
	mov	[bp-16], eax
	jmp	L136
L135:
; else
; {
; RPN'ized expression: "dfs descProceso indProcesoActual + *u &u tfa -> *u df + *u &u dfs -> *u = "
; Expanded expression: "(@-8) descProceso indProcesoActual *(4) 292 * + 164 + (@-4) *(4) 12 * + 4 + *(4) =(4) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 164 push-ax * *(@-4) 12 + *sp ax + ax 4 =(204) *(@-8) *ax "
section .relod
	dd	L137
section .text
	db	0x66, 0xB8
L137:
	dd	_descProceso
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
	mov	eax, [si]
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 164
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 12
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
	mov	[bp-8], eax
; if
; RPN'ized expression: "0 dfs <= dfs 20 < && "
; Expanded expression: "0 (@-8) *(4) <= [sh&&->141] (@-8) *(4) 20 < &&[141] "
; Fused expression:    "<= 0 *(@-8) [sh&&->141] < *(@-8) 20 &&[141]  "
	mov	eax, 0
	cmp	eax, [bp-8]
	setle	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L141
	mov	eax, [bp-8]
	cmp	eax, 20
	setl	al
	movzx	eax, al
L141:
; JumpIfZero
	test	eax, eax
	je	L139
; {
; RPN'ized expression: "rindx descFichero dfs + *u &u rindx -> *u = "
; Expanded expression: "(@-20) descFichero (@-8) *(4) 36 * + 16 + *(4) =(4) "
; Fused expression:    "descFichero push-ax * *(@-8) 36 + *sp ax + ax 16 =(204) *(@-20) *ax "
section .relod
	dd	L142
section .text
	db	0x66, 0xB8
L142:
	dd	_descFichero
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 36
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
	mov	[bp-20], eax
; if
; RPN'ized expression: "0 rindx <= rindx 14 < && "
; Expanded expression: "0 (@-20) *(4) <= [sh&&->145] (@-20) *(4) 14 < &&[145] "
; Fused expression:    "<= 0 *(@-20) [sh&&->145] < *(@-20) 14 &&[145]  "
	mov	eax, 0
	cmp	eax, [bp-20]
	setle	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L145
	mov	eax, [bp-20]
	cmp	eax, 14
	setl	al
	movzx	eax, al
L145:
; JumpIfZero
	test	eax, eax
	je	L143
; RPN'ized expression: "modoAp descProceso indProcesoActual + *u &u tfa -> *u df + *u &u modoAp -> *u = "
; Expanded expression: "(@-28) descProceso indProcesoActual *(4) 292 * + 164 + (@-4) *(4) 12 * + 0 + *(2) =(2) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 164 push-ax * *(@-4) 12 + *sp ax + ax 0 =(170) *(@-28) *ax "
section .relod
	dd	L146
section .text
	db	0x66, 0xB8
L146:
	dd	_descProceso
	push	eax
section .relod
	dd	L147
section .text
	db	0x66, 0xB8
L147:
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
	add	eax, 164
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 12
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-28], ax
	movzx	eax, ax
L143:
; RPN'ized expression: "dir ( tramaThread tw -> *u &u DX -> *u , tramaThread tw -> *u &u ES -> *u pointer ) = "
; Expanded expression: "(@-32)  tramaThread *(4) 0 + 24 + *(2)  tramaThread *(4) 0 + 2 + *(2)  pointer ()8 =(4) "
; Fused expression:    "( tramaThread + *ax 0 + ax 24 *(2) ax , tramaThread + *ax 0 + ax 2 *(2) ax , pointer )8 =(204) *(@-32) ax "
section .relod
	dd	L148
section .text
	db	0x66, 0xB8
L148:
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
	push	eax
section .relod
	dd	L149
section .text
	db	0x66, 0xB8
L149:
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
	push	eax
	db	0x9A
section .relot
	dd	L150
section .text
L150:
	dd	_pointer
	sub	sp, -8
	mov	[bp-32], eax
; switch
; RPN'ized expression: "tramaThread tb -> *u &u AL -> *u "
; Expanded expression: "tramaThread *(4) 0 + 32 + *(1) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 *(1) ax  "
section .relod
	dd	L153
section .text
	db	0x66, 0xB8
L153:
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
	jmp	L152
; {
; case
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
L154:
; case
; RPN'ized expression: "3 "
; Expanded expression: "3 "
; Expression value: 3
L155:
; if
; RPN'ized expression: "modoAp 7 & 1 == "
; Expanded expression: "(@-28) *(2) 7 & 1 == "
; Fused expression:    "& *(@-28) 7 == ax 1 IF! "
	mov	ax, [bp-28]
	movzx	eax, ax
	and	eax, 7
	cmp	eax, 1
	jne	L156
; {
; if
; RPN'ized expression: "tramaThread tb -> *u &u AL -> *u 2 == "
; Expanded expression: "tramaThread *(4) 0 + 32 + *(1) 2 == "
; Fused expression:    "tramaThread + *ax 0 + ax 32 == *ax 2 IF! "
section .relod
	dd	L160
section .text
	db	0x66, 0xB8
L160:
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
	cmp	eax, 2
	jne	L158
; RPN'ized expression: "res ( nbytes , dir , dfs descRecurso rindx + *u &u read -> *u ) = "
; Expanded expression: "(@-16)  (@-36) *(2)  (@-32) *(4)  (@-8) *(4)  descRecurso (@-20) *(4) 96 * + 64 + *(4) ()12 =(4) "
; Fused expression:    "( *(2) (@-36) , *(4) (@-32) , *(4) (@-8) , descRecurso push-ax * *(@-20) 96 + *sp ax + ax 64 *(4) ax )12 =(204) *(@-16) ax "
	mov	ax, [bp-36]
	movzx	eax, ax
	push	eax
	push	dword [bp-32]
	push	dword [bp-8]
section .relod
	dd	L161
section .text
	db	0x66, 0xB8
L161:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-20]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 64
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	db	0x9A
section .relot
	dd	L162
section .text
L162:
	dd	L163
L163:
	mov	si, sp
	add	word [ss:si], L164 - L163
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L164:
	sub	sp, -12
	mov	[bp-16], eax
	jmp	L159
L158:
; else
; RPN'ized expression: "res ( nbytes , dir , dfs descRecurso rindx + *u &u aio_read -> *u ) = "
; Expanded expression: "(@-16)  (@-36) *(2)  (@-32) *(4)  (@-8) *(4)  descRecurso (@-20) *(4) 96 * + 68 + *(4) ()12 =(4) "
; Fused expression:    "( *(2) (@-36) , *(4) (@-32) , *(4) (@-8) , descRecurso push-ax * *(@-20) 96 + *sp ax + ax 68 *(4) ax )12 =(204) *(@-16) ax "
	mov	ax, [bp-36]
	movzx	eax, ax
	push	eax
	push	dword [bp-32]
	push	dword [bp-8]
section .relod
	dd	L165
section .text
	db	0x66, 0xB8
L165:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-20]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 68
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	db	0x9A
section .relot
	dd	L166
section .text
L166:
	dd	L167
L167:
	mov	si, sp
	add	word [ss:si], L168 - L167
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L168:
	sub	sp, -12
	mov	[bp-16], eax
L159:
; }
L156:
; break
	jmp	L151
; case
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
L169:
; case
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
L170:
; if
; RPN'ized expression: "modoAp 7 & 2 == "
; Expanded expression: "(@-28) *(2) 7 & 2 == "
; Fused expression:    "& *(@-28) 7 == ax 2 IF! "
	mov	ax, [bp-28]
	movzx	eax, ax
	and	eax, 7
	cmp	eax, 2
	jne	L171
; {
; if
; RPN'ized expression: "tramaThread tb -> *u &u AL -> *u 4 == "
; Expanded expression: "tramaThread *(4) 0 + 32 + *(1) 4 == "
; Fused expression:    "tramaThread + *ax 0 + ax 32 == *ax 4 IF! "
section .relod
	dd	L175
section .text
	db	0x66, 0xB8
L175:
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
	cmp	eax, 4
	jne	L173
; RPN'ized expression: "res ( nbytes , dir , dfs descRecurso rindx + *u &u write -> *u ) = "
; Expanded expression: "(@-16)  (@-36) *(2)  (@-32) *(4)  (@-8) *(4)  descRecurso (@-20) *(4) 96 * + 72 + *(4) ()12 =(4) "
; Fused expression:    "( *(2) (@-36) , *(4) (@-32) , *(4) (@-8) , descRecurso push-ax * *(@-20) 96 + *sp ax + ax 72 *(4) ax )12 =(204) *(@-16) ax "
	mov	ax, [bp-36]
	movzx	eax, ax
	push	eax
	push	dword [bp-32]
	push	dword [bp-8]
section .relod
	dd	L176
section .text
	db	0x66, 0xB8
L176:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-20]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 72
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	db	0x9A
section .relot
	dd	L177
section .text
L177:
	dd	L178
L178:
	mov	si, sp
	add	word [ss:si], L179 - L178
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L179:
	sub	sp, -12
	mov	[bp-16], eax
	jmp	L174
L173:
; else
; RPN'ized expression: "res ( nbytes , dir , dfs descRecurso rindx + *u &u aio_write -> *u ) = "
; Expanded expression: "(@-16)  (@-36) *(2)  (@-32) *(4)  (@-8) *(4)  descRecurso (@-20) *(4) 96 * + 76 + *(4) ()12 =(4) "
; Fused expression:    "( *(2) (@-36) , *(4) (@-32) , *(4) (@-8) , descRecurso push-ax * *(@-20) 96 + *sp ax + ax 76 *(4) ax )12 =(204) *(@-16) ax "
	mov	ax, [bp-36]
	movzx	eax, ax
	push	eax
	push	dword [bp-32]
	push	dword [bp-8]
section .relod
	dd	L180
section .text
	db	0x66, 0xB8
L180:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-20]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 76
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	db	0x9A
section .relot
	dd	L181
section .text
L181:
	dd	L182
L182:
	mov	si, sp
	add	word [ss:si], L183 - L182
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L183:
	sub	sp, -12
	mov	[bp-16], eax
L174:
; }
L171:
; break
	jmp	L151
; }
	jmp	L151
L152:
	cmp	eax, 2
	je	L154
	cmp	eax, 3
	je	L155
	cmp	eax, 4
	je	L169
	cmp	eax, 5
	je	L170
L151:
; if
; RPN'ized expression: "res 0 > "
; Expanded expression: "(@-16) *(4) 0 > "
; Fused expression:    "> *(@-16) 0 IF! "
	mov	eax, [bp-16]
	cmp	eax, 0
	jle	L184
; RPN'ized expression: "descProceso indProcesoActual + *u &u tfa -> *u df + *u &u pos -> *u res += "
; Expanded expression: "descProceso indProcesoActual *(4) 292 * + 164 + (@-4) *(4) 12 * + 8 + (@-16) *(4) +=(4) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 164 push-ax * *(@-4) 12 + *sp ax + ax 8 +=(204) *ax *(@-16) "
section .relod
	dd	L186
section .text
	db	0x66, 0xB8
L186:
	dd	_descProceso
	push	eax
section .relod
	dd	L187
section .text
	db	0x66, 0xB8
L187:
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
	add	eax, 164
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 12
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
	add	eax, [bp-16]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
L184:
; }
L139:
; }
L136:
; }
L131:
; RPN'ized expression: "tramaThread tw -> *u &u AX -> *u res = "
; Expanded expression: "tramaThread *(4) 0 + 32 + (@-16) *(4) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 =(172) *ax *(@-16) "
section .relod
	dd	L188
section .text
	db	0x66, 0xB8
L188:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 32
	mov	ebx, eax
	mov	eax, [bp-16]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L40
; case
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
L189:
; RPN'ized expression: "df tramaThread tw -> *u &u BX -> *u = "
; Expanded expression: "(@-4) tramaThread *(4) 0 + 20 + *(2) =(4) "
; Fused expression:    "tramaThread + *ax 0 + ax 20 =(202) *(@-4) *ax "
section .relod
	dd	L190
section .text
	db	0x66, 0xB8
L190:
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
	mov	[bp-4], eax
; loc         <something> : int
; RPN'ized expression: "posNueva 1 -u (something191) = "
; Expanded expression: "(@-40) -1 =(4) "
; Fused expression:    "=(204) *(@-40) -1 "
	mov	eax, -1
	mov	[bp-40], eax
; if
; RPN'ized expression: "0 df <= df 10 < && "
; Expanded expression: "0 (@-4) *(4) <= [sh&&->194] (@-4) *(4) 10 < &&[194] "
; Fused expression:    "<= 0 *(@-4) [sh&&->194] < *(@-4) 10 &&[194]  "
	mov	eax, 0
	cmp	eax, [bp-4]
	setle	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L194
	mov	eax, [bp-4]
	cmp	eax, 10
	setl	al
	movzx	eax, al
L194:
; JumpIfZero
	test	eax, eax
	je	L192
; {
; RPN'ized expression: "dfs descProceso indProcesoActual + *u &u tfa -> *u df + *u &u dfs -> *u = "
; Expanded expression: "(@-8) descProceso indProcesoActual *(4) 292 * + 164 + (@-4) *(4) 12 * + 4 + *(4) =(4) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 164 push-ax * *(@-4) 12 + *sp ax + ax 4 =(204) *(@-8) *ax "
section .relod
	dd	L195
section .text
	db	0x66, 0xB8
L195:
	dd	_descProceso
	push	eax
section .relod
	dd	L196
section .text
	db	0x66, 0xB8
L196:
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
	add	eax, 164
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 12
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
	mov	[bp-8], eax
; if
; RPN'ized expression: "0 dfs <= dfs 20 < && "
; Expanded expression: "0 (@-8) *(4) <= [sh&&->199] (@-8) *(4) 20 < &&[199] "
; Fused expression:    "<= 0 *(@-8) [sh&&->199] < *(@-8) 20 &&[199]  "
	mov	eax, 0
	cmp	eax, [bp-8]
	setle	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L199
	mov	eax, [bp-8]
	cmp	eax, 20
	setl	al
	movzx	eax, al
L199:
; JumpIfZero
	test	eax, eax
	je	L197
; {
; RPN'ized expression: "rindx descFichero dfs + *u &u rindx -> *u = "
; Expanded expression: "(@-20) descFichero (@-8) *(4) 36 * + 16 + *(4) =(4) "
; Fused expression:    "descFichero push-ax * *(@-8) 36 + *sp ax + ax 16 =(204) *(@-20) *ax "
section .relod
	dd	L200
section .text
	db	0x66, 0xB8
L200:
	dd	_descFichero
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 36
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
	mov	[bp-20], eax
; if
; RPN'ized expression: "0 rindx <= rindx 14 < && "
; Expanded expression: "0 (@-20) *(4) <= [sh&&->203] (@-20) *(4) 14 < &&[203] "
; Fused expression:    "<= 0 *(@-20) [sh&&->203] < *(@-20) 14 &&[203]  "
	mov	eax, 0
	cmp	eax, [bp-20]
	setle	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L203
	mov	eax, [bp-20]
	cmp	eax, 14
	setl	al
	movzx	eax, al
L203:
; JumpIfZero
	test	eax, eax
	je	L201
; {
; loc                     <something> : int
; RPN'ized expression: "pos ( tramaThread tw -> *u &u DX -> *u , tramaThread tw -> *u &u ES -> *u pointer ) (something204) = "
; Expanded expression: "(@-44)  tramaThread *(4) 0 + 24 + *(2)  tramaThread *(4) 0 + 2 + *(2)  pointer ()8 =(4) "
; Fused expression:    "( tramaThread + *ax 0 + ax 24 *(2) ax , tramaThread + *ax 0 + ax 2 *(2) ax , pointer )8 =(204) *(@-44) ax "
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
	add	eax, 24
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	push	eax
section .relod
	dd	L206
section .text
	db	0x66, 0xB8
L206:
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
	push	eax
	db	0x9A
section .relot
	dd	L207
section .text
L207:
	dd	_pointer
	sub	sp, -8
	mov	[bp-44], eax
; RPN'ized expression: "whence tramaThread tw -> *u &u CX -> *u = "
; Expanded expression: "(@-48) tramaThread *(4) 0 + 28 + *(2) =(4) "
; Fused expression:    "tramaThread + *ax 0 + ax 28 =(202) *(@-48) *ax "
section .relod
	dd	L208
section .text
	db	0x66, 0xB8
L208:
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
	mov	[bp-48], eax
; if
; RPN'ized expression: "0 whence <= whence 2 <= && "
; Expanded expression: "0 (@-48) *(4) <= [sh&&->211] (@-48) *(4) 2 <= &&[211] "
; Fused expression:    "<= 0 *(@-48) [sh&&->211] <= *(@-48) 2 &&[211]  "
	mov	eax, 0
	cmp	eax, [bp-48]
	setle	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L211
	mov	eax, [bp-48]
	cmp	eax, 2
	setle	al
	movzx	eax, al
L211:
; JumpIfZero
	test	eax, eax
	je	L209
; {
; RPN'ized expression: "posNueva ( whence , pos , dfs descRecurso rindx + *u &u lseek -> *u ) = "
; Expanded expression: "(@-40)  (@-48) *(4)  (@-44) *(4)  (@-8) *(4)  descRecurso (@-20) *(4) 96 * + 80 + *(4) ()12 =(4) "
; Fused expression:    "( *(4) (@-48) , *(4) (@-44) , *(4) (@-8) , descRecurso push-ax * *(@-20) 96 + *sp ax + ax 80 *(4) ax )12 =(204) *(@-40) ax "
	push	dword [bp-48]
	push	dword [bp-44]
	push	dword [bp-8]
section .relod
	dd	L212
section .text
	db	0x66, 0xB8
L212:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-20]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 80
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	db	0x9A
section .relot
	dd	L213
section .text
L213:
	dd	L214
L214:
	mov	si, sp
	add	word [ss:si], L215 - L214
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L215:
	sub	sp, -12
	mov	[bp-40], eax
; if
; loc                         <something> : int
; RPN'ized expression: "posNueva 0 (something218) >= "
; Expanded expression: "(@-40) *(4) 0 >= "
; Fused expression:    ">= *(@-40) 0 IF! "
	mov	eax, [bp-40]
	cmp	eax, 0
	jl	L216
; RPN'ized expression: "descProceso indProcesoActual + *u &u tfa -> *u df + *u &u pos -> *u posNueva = "
; Expanded expression: "descProceso indProcesoActual *(4) 292 * + 164 + (@-4) *(4) 12 * + 8 + (@-40) *(4) =(4) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 164 push-ax * *(@-4) 12 + *sp ax + ax 8 =(204) *ax *(@-40) "
section .relod
	dd	L219
section .text
	db	0x66, 0xB8
L219:
	dd	_descProceso
	push	eax
section .relod
	dd	L220
section .text
	db	0x66, 0xB8
L220:
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
	add	eax, 164
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 12
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 8
	mov	ebx, eax
	mov	eax, [bp-40]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
L216:
; }
L209:
; }
L201:
; }
L197:
; }
L192:
; loc         <something> : unsigned short
; RPN'ized expression: "tramaThread tw -> *u &u AX -> *u posNueva (something221) = "
; Expanded expression: "tramaThread *(4) 0 + 32 + (@-40) *(4) unsigned short =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 push-ax *(4) (@-40) unsigned short =(172) **sp ax "
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
	add	eax, 32
	push	eax
	mov	eax, [bp-40]
	movzx	eax, ax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; loc         <something> : unsigned short
; RPN'ized expression: "tramaThread tw -> *u &u BX -> *u posNueva 16 >> (something223) = "
; Expanded expression: "tramaThread *(4) 0 + 20 + (@-40) *(4) 16 >> unsigned short =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 20 push-ax >> *(@-40) 16 unsigned short =(172) **sp ax "
section .relod
	dd	L224
section .text
	db	0x66, 0xB8
L224:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 20
	push	eax
	mov	eax, [bp-40]
	sar	eax, 16
	movzx	eax, ax
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L40
; case
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
L225:
; RPN'ized expression: "df tramaThread tw -> *u &u BX -> *u = "
; Expanded expression: "(@-4) tramaThread *(4) 0 + 20 + *(2) =(4) "
; Fused expression:    "tramaThread + *ax 0 + ax 20 =(202) *(@-4) *ax "
section .relod
	dd	L226
section .text
	db	0x66, 0xB8
L226:
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
	mov	[bp-4], eax
; RPN'ized expression: "cmd tramaThread tw -> *u &u CX -> *u = "
; Expanded expression: "(@-52) tramaThread *(4) 0 + 28 + *(2) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 28 =(170) *(@-52) *ax "
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
	add	eax, 28
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-52], ax
	movzx	eax, ax
; RPN'ized expression: "arg tramaThread tw -> *u &u DX -> *u = "
; Expanded expression: "(@-56) tramaThread *(4) 0 + 24 + *(2) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 24 =(170) *(@-56) *ax "
section .relod
	dd	L228
section .text
	db	0x66, 0xB8
L228:
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
	mov	[bp-56], ax
	movzx	eax, ax
; RPN'ized expression: "res 1 -u = "
; Expanded expression: "(@-16) -1 =(4) "
; Fused expression:    "=(204) *(@-16) -1 "
	mov	eax, -1
	mov	[bp-16], eax
; if
; RPN'ized expression: "0 df <= df 10 < || "
; Expanded expression: "0 (@-4) *(4) <= [sh||->231] (@-4) *(4) 10 < ||[231] "
; Fused expression:    "<= 0 *(@-4) [sh||->231] < *(@-4) 10 ||[231]  "
	mov	eax, 0
	cmp	eax, [bp-4]
	setle	al
	movzx	eax, al
; JumpIfNotZero
	test	eax, eax
	jne	L231
	mov	eax, [bp-4]
	cmp	eax, 10
	setl	al
	movzx	eax, al
L231:
; JumpIfZero
	test	eax, eax
	je	L229
; {
; RPN'ized expression: "modoAp descProceso indProcesoActual + *u &u tfa -> *u df + *u &u modoAp -> *u = "
; Expanded expression: "(@-28) descProceso indProcesoActual *(4) 292 * + 164 + (@-4) *(4) 12 * + 0 + *(2) =(2) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 164 push-ax * *(@-4) 12 + *sp ax + ax 0 =(170) *(@-28) *ax "
section .relod
	dd	L232
section .text
	db	0x66, 0xB8
L232:
	dd	_descProceso
	push	eax
section .relod
	dd	L233
section .text
	db	0x66, 0xB8
L233:
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
	add	eax, 164
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 12
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-28], ax
	movzx	eax, ax
; RPN'ized expression: "res 0 = "
; Expanded expression: "(@-16) 0 =(4) "
; Fused expression:    "=(204) *(@-16) 0 "
	mov	eax, 0
	mov	[bp-16], eax
; if
; RPN'ized expression: "cmd 1 == "
; Expanded expression: "(@-52) *(2) 1 == "
; Fused expression:    "== *(@-52) 1 IF! "
	mov	ax, [bp-52]
	movzx	eax, ax
	cmp	eax, 1
	jne	L234
; RPN'ized expression: "res modoAp = "
; Expanded expression: "(@-16) (@-28) *(2) =(4) "
; Fused expression:    "=(202) *(@-16) *(@-28) "
	mov	ax, [bp-28]
	movzx	eax, ax
	mov	[bp-16], eax
	jmp	L235
L234:
; else
; if
; RPN'ized expression: "cmd 2 == "
; Expanded expression: "(@-52) *(2) 2 == "
; Fused expression:    "== *(@-52) 2 IF! "
	mov	ax, [bp-52]
	movzx	eax, ax
	cmp	eax, 2
	jne	L236
; {
; RPN'ized expression: "modoAp modoAp 2048 4096 | ~ & = "
; Expanded expression: "(@-28) (@-28) *(2) -6145 & =(2) "
; Fused expression:    "& *(@-28) -6145 =(172) *(@-28) ax "
	mov	ax, [bp-28]
	movzx	eax, ax
	and	eax, -6145
	mov	[bp-28], ax
	movzx	eax, ax
; RPN'ized expression: "modoAp modoAp arg 2048 4096 | & | = "
; Expanded expression: "(@-28) (@-28) *(2) (@-56) *(2) 6144 & | =(2) "
; Fused expression:    "& *(@-56) 6144 | *(@-28) ax =(172) *(@-28) ax "
	mov	ax, [bp-56]
	movzx	eax, ax
	and	eax, 6144
	mov	ecx, eax
	mov	ax, [bp-28]
	movzx	eax, ax
	or	eax, ecx
	mov	[bp-28], ax
	movzx	eax, ax
; RPN'ized expression: "descProceso indProcesoActual + *u &u tfa -> *u df + *u &u modoAp -> *u modoAp = "
; Expanded expression: "descProceso indProcesoActual *(4) 292 * + 164 + (@-4) *(4) 12 * + 0 + (@-28) *(2) =(2) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 164 push-ax * *(@-4) 12 + *sp ax + ax 0 =(170) *ax *(@-28) "
section .relod
	dd	L238
section .text
	db	0x66, 0xB8
L238:
	dd	_descProceso
	push	eax
section .relod
	dd	L239
section .text
	db	0x66, 0xB8
L239:
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
	add	eax, 164
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 12
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	ax, [bp-28]
	movzx	eax, ax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; }
L236:
L235:
; }
L229:
; RPN'ized expression: "tramaThread tw -> *u &u AX -> *u res = "
; Expanded expression: "tramaThread *(4) 0 + 32 + (@-16) *(4) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 =(172) *ax *(@-16) "
section .relod
	dd	L240
section .text
	db	0x66, 0xB8
L240:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 32
	mov	ebx, eax
	mov	eax, [bp-16]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L40
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
L241:
; RPN'ized expression: "df tramaThread tw -> *u &u BX -> *u = "
; Expanded expression: "(@-4) tramaThread *(4) 0 + 20 + *(2) =(4) "
; Fused expression:    "tramaThread + *ax 0 + ax 20 =(202) *(@-4) *ax "
section .relod
	dd	L242
section .text
	db	0x66, 0xB8
L242:
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
	mov	[bp-4], eax
; RPN'ized expression: "cmd tramaThread tw -> *u &u CX -> *u = "
; Expanded expression: "(@-52) tramaThread *(4) 0 + 28 + *(2) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 28 =(170) *(@-52) *ax "
section .relod
	dd	L243
section .text
	db	0x66, 0xB8
L243:
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
	mov	[bp-52], ax
	movzx	eax, ax
; RPN'ized expression: "arg tramaThread tw -> *u &u DX -> *u = "
; Expanded expression: "(@-56) tramaThread *(4) 0 + 24 + *(2) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 24 =(170) *(@-56) *ax "
section .relod
	dd	L244
section .text
	db	0x66, 0xB8
L244:
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
	mov	[bp-56], ax
	movzx	eax, ax
; RPN'ized expression: "res 1 -u = "
; Expanded expression: "(@-16) -1 =(4) "
; Fused expression:    "=(204) *(@-16) -1 "
	mov	eax, -1
	mov	[bp-16], eax
; if
; RPN'ized expression: "0 df <= df 10 < || "
; Expanded expression: "0 (@-4) *(4) <= [sh||->247] (@-4) *(4) 10 < ||[247] "
; Fused expression:    "<= 0 *(@-4) [sh||->247] < *(@-4) 10 ||[247]  "
	mov	eax, 0
	cmp	eax, [bp-4]
	setle	al
	movzx	eax, al
; JumpIfNotZero
	test	eax, eax
	jne	L247
	mov	eax, [bp-4]
	cmp	eax, 10
	setl	al
	movzx	eax, al
L247:
; JumpIfZero
	test	eax, eax
	je	L245
; {
; RPN'ized expression: "dfs descProceso indProcesoActual + *u &u tfa -> *u df + *u &u dfs -> *u = "
; Expanded expression: "(@-8) descProceso indProcesoActual *(4) 292 * + 164 + (@-4) *(4) 12 * + 4 + *(4) =(4) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 164 push-ax * *(@-4) 12 + *sp ax + ax 4 =(204) *(@-8) *ax "
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
	add	eax, 164
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 12
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
	mov	[bp-8], eax
; if
; RPN'ized expression: "0 dfs <= dfs 20 < && "
; Expanded expression: "0 (@-8) *(4) <= [sh&&->252] (@-8) *(4) 20 < &&[252] "
; Fused expression:    "<= 0 *(@-8) [sh&&->252] < *(@-8) 20 &&[252]  "
	mov	eax, 0
	cmp	eax, [bp-8]
	setle	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L252
	mov	eax, [bp-8]
	cmp	eax, 20
	setl	al
	movzx	eax, al
L252:
; JumpIfZero
	test	eax, eax
	je	L250
; {
; RPN'ized expression: "rindx descFichero dfs + *u &u rindx -> *u = "
; Expanded expression: "(@-20) descFichero (@-8) *(4) 36 * + 16 + *(4) =(4) "
; Fused expression:    "descFichero push-ax * *(@-8) 36 + *sp ax + ax 16 =(204) *(@-20) *ax "
section .relod
	dd	L253
section .text
	db	0x66, 0xB8
L253:
	dd	_descFichero
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 36
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
	mov	[bp-20], eax
; if
; RPN'ized expression: "0 rindx <= rindx 14 < && "
; Expanded expression: "0 (@-20) *(4) <= [sh&&->256] (@-20) *(4) 14 < &&[256] "
; Fused expression:    "<= 0 *(@-20) [sh&&->256] < *(@-20) 14 &&[256]  "
	mov	eax, 0
	cmp	eax, [bp-20]
	setle	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L256
	mov	eax, [bp-20]
	cmp	eax, 14
	setl	al
	movzx	eax, al
L256:
; JumpIfZero
	test	eax, eax
	je	L254
; {
; RPN'ized expression: "res ( arg , cmd , dfs descRecurso rindx + *u &u ioctl -> *u ) = "
; Expanded expression: "(@-16)  (@-56) *(2)  (@-52) *(2)  (@-8) *(4)  descRecurso (@-20) *(4) 96 * + 88 + *(4) ()12 =(4) "
; Fused expression:    "( *(2) (@-56) , *(2) (@-52) , *(4) (@-8) , descRecurso push-ax * *(@-20) 96 + *sp ax + ax 88 *(4) ax )12 =(204) *(@-16) ax "
	mov	ax, [bp-56]
	movzx	eax, ax
	push	eax
	mov	ax, [bp-52]
	movzx	eax, ax
	push	eax
	push	dword [bp-8]
section .relod
	dd	L257
section .text
	db	0x66, 0xB8
L257:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-20]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 88
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	db	0x9A
section .relot
	dd	L258
section .text
L258:
	dd	L259
L259:
	mov	si, sp
	add	word [ss:si], L260 - L259
	shl	eax, 12
	rol	ax, 4
	push	eax
	retf
L260:
	sub	sp, -12
	mov	[bp-16], eax
; }
L254:
; }
L250:
; }
L245:
; RPN'ized expression: "tramaThread tw -> *u &u AX -> *u res = "
; Expanded expression: "tramaThread *(4) 0 + 32 + (@-16) *(4) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 =(172) *ax *(@-16) "
section .relod
	dd	L261
section .text
	db	0x66, 0xB8
L261:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 32
	mov	ebx, eax
	mov	eax, [bp-16]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L40
; default
L262:
; }
	jmp	L40
L41:
	cmp	eax, 0
	je	L43
	cmp	eax, 1
	je	L98
	cmp	eax, 2
	je	L126
	cmp	eax, 3
	je	L127
	cmp	eax, 4
	je	L128
	cmp	eax, 5
	je	L129
	cmp	eax, 6
	je	L189
	cmp	eax, 7
	je	L225
	cmp	eax, 8
	je	L241
	jmp	L262
L40:
L38:
	db	0x66
	leave
	retf
L263:

section .fxnsz
	dd	L263 - _so1_manejador_02


	extern	_c2cPFR
	extern	_descFichero
	extern	_strcmp
	extern	_descProceso
	extern	_indProcesoActual
	extern	_strncmp
	extern	_tramaThread
	extern	_pointer
	extern	_descRecurso

; Syntax/declaration table/stack:
; Bytes used: 9795/40960


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
; Ident indiceTFAS
; Ident indiceTFA
; Ident nuevaEntradaTFA
; Ident so1_manejador_02
; Bytes used: 3963/16384

; Next label number: 264
; Compilation succeeded.
