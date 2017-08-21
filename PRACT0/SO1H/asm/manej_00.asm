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
; glb thr_join : (
; prm     tid : int
; prm     res : * * void
;     ) int
section .text
_thr_join:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         12
; loc     tid : (@8): int
; loc     res : (@12): * * void
; loc     tindx : (@-4): int
; loc     ptrC2cThreads : (@-8): * struct <something>
; loc     <something> : * struct <something>
; RPN'ized expression: "ptrC2cThreads descProceso indProcesoActual + *u &u c2cThreads -> *u &u (something3) = "
; Expanded expression: "(@-8) descProceso indProcesoActual *(4) 292 * + 36 + =(4) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 36 =(204) *(@-8) ax "
section .relod
	dd	L4
section .text
	db	0x66, 0xB8
L4:
	dd	_descProceso
	push	eax
section .relod
	dd	L5
section .text
	db	0x66, 0xB8
L5:
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
	add	eax, 36
	mov	[bp-8], eax
; if
; RPN'ized expression: "tid 1 -u == "
; Expanded expression: "(@8) *(4) -1 == "
; Fused expression:    "== *(@8) -1 IF! "
	mov	eax, [bp+8]
	cmp	eax, -1
	jne	L6
; {
; RPN'ized expression: "tindx ptrC2cThreads e -> *u indThreadActual + *u &u sig -> *u = "
; Expanded expression: "(@-4) (@-8) *(4) 12 + *(4) indThreadActual *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "+ *(@-8) 12 push-ax indThreadActual * *ax 12 + **sp ax + ax 0 =(204) *(@-4) *ax "
	mov	eax, [bp-8]
	add	eax, 12
	push	eax
section .relod
	dd	L8
section .text
	db	0x66, 0xB8
L8:
	dd	_indThreadActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
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
; for
; loc         i : (@-12): int
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-12) 0 =(4) "
; Fused expression:    "=(204) *(@-12) 0 "
	mov	eax, 0
	mov	[bp-12], eax
L9:
; RPN'ized expression: "i ptrC2cThreads numElem -> *u < "
; Expanded expression: "(@-12) *(4) (@-8) *(4) 0 + *(4) < "
; Fused expression:    "+ *(@-8) 0 < *(@-12) *ax IF! "
	mov	eax, [bp-8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp-12]
	cmp	eax, ecx
	jge	L12
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-12) ++p(4) "
; {
; if
; loc             <something> : int
; RPN'ized expression: "descThread tindx + *u &u estado -> *u bloqueado == descThread tindx + *u &u esperandoPor -> *u 5 -u (something15) == && "
; Expanded expression: "descThread (@-4) *(4) 40 * + 4 + *(4) 3 == [sh&&->16] descThread (@-4) *(4) 40 * + 8 + *(4) -5 == &&[16] "
; Fused expression:    "descThread push-ax * *(@-4) 40 + *sp ax + ax 4 == *ax 3 [sh&&->16] descThread push-ax * *(@-4) 40 + *sp ax + ax 8 == *ax -5 &&[16]  "
section .relod
	dd	L17
section .text
	db	0x66, 0xB8
L17:
	dd	_descThread
	push	eax
	mov	eax, [bp-4]
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
	je	L16
section .relod
	dd	L18
section .text
	db	0x66, 0xB8
L18:
	dd	_descThread
	push	eax
	mov	eax, [bp-4]
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
	cmp	eax, -5
	sete	al
	movzx	eax, al
L16:
; JumpIfZero
	test	eax, eax
	je	L13
; {
; if
; loc                 <something> : * unsigned char
; RPN'ized expression: "res 0 (something21) != "
; Expanded expression: "(@12) *(4) 0 != "
; Fused expression:    "!= *(@12) 0 IF! "
	mov	eax, [bp+12]
	cmp	eax, 0
	je	L19
; loc                 <something> : * * void
; loc                 <something> : * void
; RPN'ized expression: "res (something22) *u descThread tindx + *u &u status -> *u (something23) = "
; Expanded expression: "(@12) *(4) descThread (@-4) *(4) 40 * + 20 + *(4) =(4) "
; Fused expression:    "*(4) (@12) push-ax descThread push-ax * *(@-4) 40 + *sp ax + ax 20 =(204) **sp *ax "
	mov	eax, [bp+12]
	push	eax
section .relod
	dd	L24
section .text
	db	0x66, 0xB8
L24:
	dd	_descThread
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 40
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 20
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
L19:
; RPN'ized expression: "( tindx eliminarThreadIndx ) "
; Expanded expression: " (@-4) *(4)  eliminarThreadIndx ()4 "
; Fused expression:    "( *(4) (@-4) , eliminarThreadIndx )4 "
	push	dword [bp-4]
	db	0x9A
section .relot
	dd	L25
section .text
L25:
	dd	_eliminarThreadIndx
	sub	sp, -4
; RPN'ized expression: "( ptrC2cThreads , tindx eliminarPC2c ) "
; Expanded expression: " (@-8) *(4)  (@-4) *(4)  eliminarPC2c ()8 "
; Fused expression:    "( *(4) (@-8) , *(4) (@-4) , eliminarPC2c )8 "
	push	dword [bp-8]
	push	dword [bp-4]
	db	0x9A
section .relot
	dd	L26
section .text
L26:
	dd	_eliminarPC2c
	sub	sp, -8
; return
; RPN'ized expression: "descThread tindx + *u &u tid -> *u "
; Expanded expression: "descThread (@-4) *(4) 40 * + 0 + *(4) "
; Fused expression:    "descThread push-ax * *(@-4) 40 + *sp ax + ax 0 *(4) ax  "
section .relod
	dd	L27
section .text
	db	0x66, 0xB8
L27:
	dd	_descThread
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 40
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	jmp	L1
; }
L13:
; RPN'ized expression: "tindx ptrC2cThreads e -> *u tindx + *u &u sig -> *u = "
; Expanded expression: "(@-4) (@-8) *(4) 12 + *(4) (@-4) *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "+ *(@-8) 12 push-ax * *(@-4) 12 + **sp ax + ax 0 =(204) *(@-4) *ax "
	mov	eax, [bp-8]
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
L10:
; Fused expression:    "++p(4) *(@-12) "
	mov	eax, [bp-12]
	inc	dword [bp-12]
	jmp	L9
L12:
; loc         <something> : int
; RPN'ized expression: "( 4 -u (something28) bloquearThreadActual ) "
; Expanded expression: " -4  bloquearThreadActual ()4 "
; Fused expression:    "( -4 , bloquearThreadActual )4 "
	push	dword -4
	db	0x9A
section .relot
	dd	L29
section .text
L29:
	dd	_bloquearThreadActual
	sub	sp, -4
; }
L6:
; if
; RPN'ized expression: "tid 0 < "
; Expanded expression: "(@8) *(4) 0 < "
; Fused expression:    "< *(@8) 0 IF! "
	mov	eax, [bp+8]
	cmp	eax, 0
	jge	L30
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1  "
	mov	eax, -1
	jmp	L1
L30:
; RPN'ized expression: "tindx ( tid indice ) = "
; Expanded expression: "(@-4)  (@8) *(4)  indice ()4 =(4) "
; Fused expression:    "( *(4) (@8) , indice )4 =(204) *(@-4) ax "
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L32
section .text
L32:
	dd	_indice
	sub	sp, -4
	mov	[bp-4], eax
; if
; RPN'ized expression: "tindx 1 -u == "
; Expanded expression: "(@-4) *(4) -1 == "
; Fused expression:    "== *(@-4) -1 IF! "
	mov	eax, [bp-4]
	cmp	eax, -1
	jne	L33
; return
; RPN'ized expression: "2 -u "
; Expanded expression: "-2 "
; Expression value: -2
; Fused expression:    "-2  "
	mov	eax, -2
	jmp	L1
L33:
; if
; RPN'ized expression: "descThread tindx + *u &u noStatus -> *u "
; Expanded expression: "descThread (@-4) *(4) 40 * + 16 + *(4) "
; Fused expression:    "descThread push-ax * *(@-4) 40 + *sp ax + ax 16 *(4) ax  "
section .relod
	dd	L37
section .text
	db	0x66, 0xB8
L37:
	dd	_descThread
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 40
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
; JumpIfZero
	test	eax, eax
	je	L35
; return
; RPN'ized expression: "3 -u "
; Expanded expression: "-3 "
; Expression value: -3
; Fused expression:    "-3  "
	mov	eax, -3
	jmp	L1
L35:
; if
; loc     <something> : int
; RPN'ized expression: "descThread tindx + *u &u estado -> *u bloqueado == descThread tindx + *u &u esperandoPor -> *u 5 -u (something40) == && "
; Expanded expression: "descThread (@-4) *(4) 40 * + 4 + *(4) 3 == [sh&&->41] descThread (@-4) *(4) 40 * + 8 + *(4) -5 == &&[41] "
; Fused expression:    "descThread push-ax * *(@-4) 40 + *sp ax + ax 4 == *ax 3 [sh&&->41] descThread push-ax * *(@-4) 40 + *sp ax + ax 8 == *ax -5 &&[41]  "
section .relod
	dd	L42
section .text
	db	0x66, 0xB8
L42:
	dd	_descThread
	push	eax
	mov	eax, [bp-4]
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
	je	L41
section .relod
	dd	L43
section .text
	db	0x66, 0xB8
L43:
	dd	_descThread
	push	eax
	mov	eax, [bp-4]
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
	cmp	eax, -5
	sete	al
	movzx	eax, al
L41:
; JumpIfZero
	test	eax, eax
	je	L38
; {
; if
; loc         <something> : * unsigned char
; RPN'ized expression: "res 0 (something46) != "
; Expanded expression: "(@12) *(4) 0 != "
; Fused expression:    "!= *(@12) 0 IF! "
	mov	eax, [bp+12]
	cmp	eax, 0
	je	L44
; loc         <something> : * * void
; RPN'ized expression: "res (something47) *u descThread tindx + *u &u status -> *u = "
; Expanded expression: "(@12) *(4) descThread (@-4) *(4) 40 * + 20 + *(4) =(4) "
; Fused expression:    "*(4) (@12) push-ax descThread push-ax * *(@-4) 40 + *sp ax + ax 20 =(204) **sp *ax "
	mov	eax, [bp+12]
	push	eax
section .relod
	dd	L48
section .text
	db	0x66, 0xB8
L48:
	dd	_descThread
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 40
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 20
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
L44:
; RPN'ized expression: "( tindx eliminarThreadIndx ) "
; Expanded expression: " (@-4) *(4)  eliminarThreadIndx ()4 "
; Fused expression:    "( *(4) (@-4) , eliminarThreadIndx )4 "
	push	dword [bp-4]
	db	0x9A
section .relot
	dd	L49
section .text
L49:
	dd	_eliminarThreadIndx
	sub	sp, -4
; RPN'ized expression: "( ptrC2cThreads , tindx eliminarPC2c ) "
; Expanded expression: " (@-8) *(4)  (@-4) *(4)  eliminarPC2c ()8 "
; Fused expression:    "( *(4) (@-8) , *(4) (@-4) , eliminarPC2c )8 "
	push	dword [bp-8]
	push	dword [bp-4]
	db	0x9A
section .relot
	dd	L50
section .text
L50:
	dd	_eliminarPC2c
	sub	sp, -8
; return
; RPN'ized expression: "tid "
; Expanded expression: "(@8) *(4) "
; Fused expression:    "*(4) (@8)  "
	mov	eax, [bp+8]
	jmp	L1
; }
	jmp	L39
L38:
; else
; {
; loc         <something> : int
; RPN'ized expression: "( 4 -u (something51) bloquearThreadActual ) "
; Expanded expression: " -4  bloquearThreadActual ()4 "
; Fused expression:    "( -4 , bloquearThreadActual )4 "
	push	dword -4
	db	0x9A
section .relot
	dd	L52
section .text
L52:
	dd	_bloquearThreadActual
	sub	sp, -4
; }
L39:
L1:
	db	0x66
	leave
	retf
L53:

section .fxnsz noalloc
	dd	L53 - _thr_join

; glb thr_exit : (
; prm     res : * void
;     ) int
section .text
_thr_exit:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         12
; loc     res : (@8): * void
; if
; RPN'ized expression: "indThreadActual descProceso indProcesoActual + *u &u c2cThreads -> *u &u primero -> *u == "
; Expanded expression: "indThreadActual *(4) descProceso indProcesoActual *(4) 292 * + 36 + 4 + *(4) == "
; Fused expression:    "indThreadActual push-ax descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 36 + ax 4 == **sp *ax IF! "
section .relod
	dd	L58
section .text
	db	0x66, 0xB8
L58:
	dd	_indThreadActual
	push	eax
section .relod
	dd	L59
section .text
	db	0x66, 0xB8
L59:
	dd	_descProceso
	push	eax
section .relod
	dd	L60
section .text
	db	0x66, 0xB8
L60:
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
	add	eax, 36
	add	eax, 4
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
	jne	L56
; {
; }
L56:
; loc     ptrC2cThreads : (@-4): * struct <something>
; loc     <something> : * struct <something>
; RPN'ized expression: "ptrC2cThreads descProceso indProcesoActual + *u &u c2cThreads -> *u &u (something61) = "
; Expanded expression: "(@-4) descProceso indProcesoActual *(4) 292 * + 36 + =(4) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 36 =(204) *(@-4) ax "
section .relod
	dd	L62
section .text
	db	0x66, 0xB8
L62:
	dd	_descProceso
	push	eax
section .relod
	dd	L63
section .text
	db	0x66, 0xB8
L63:
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
	add	eax, 36
	mov	[bp-4], eax
; if
; RPN'ized expression: "descThread indThreadActual + *u &u noStatus -> *u 0 == "
; Expanded expression: "descThread indThreadActual *(4) 40 * + 16 + *(4) 0 == "
; Fused expression:    "descThread push-ax indThreadActual * *ax 40 + *sp ax + ax 16 == *ax 0 IF! "
section .relod
	dd	L66
section .text
	db	0x66, 0xB8
L66:
	dd	_descThread
	push	eax
section .relod
	dd	L67
section .text
	db	0x66, 0xB8
L67:
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
	add	eax, 16
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 0
	jne	L64
; {
; loc         tindx : (@-8): int
; RPN'ized expression: "tindx ptrC2cThreads primero -> *u = "
; Expanded expression: "(@-8) (@-4) *(4) 4 + *(4) =(4) "
; Fused expression:    "+ *(@-4) 4 =(204) *(@-8) *ax "
	mov	eax, [bp-4]
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-8], eax
; for
; loc         i : (@-12): int
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-12) 0 =(4) "
; Fused expression:    "=(204) *(@-12) 0 "
	mov	eax, 0
	mov	[bp-12], eax
L68:
; RPN'ized expression: "i ptrC2cThreads numElem -> *u < "
; Expanded expression: "(@-12) *(4) (@-4) *(4) 0 + *(4) < "
; Fused expression:    "+ *(@-4) 0 < *(@-12) *ax IF! "
	mov	eax, [bp-4]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp-12]
	cmp	eax, ecx
	jge	L71
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-12) ++p(4) "
; {
; if
; loc             <something> : int
; RPN'ized expression: "descThread tindx + *u &u estado -> *u bloqueado == descThread tindx + *u &u esperandoPor -> *u 4 -u (something74) == && descThread tindx + *u &u trama -> *u td -> *u &u ECX -> *u indThreadActual == descThread tindx + *u &u trama -> *u td -> *u &u ECX -> *u 1 -u == || && "
; Expanded expression: "descThread (@-8) *(4) 40 * + 4 + *(4) 3 == [sh&&->77] descThread (@-8) *(4) 40 * + 8 + *(4) -4 == &&[77] _Bool [sh&&->75] descThread (@-8) *(4) 40 * + 12 + *(4) 0 + 28 + *(4) indThreadActual *(4) == [sh||->76] descThread (@-8) *(4) 40 * + 12 + *(4) 0 + 28 + *(4) -1 == ||[76] _Bool &&[75] "
; Fused expression:    "descThread push-ax * *(@-8) 40 + *sp ax + ax 4 == *ax 3 [sh&&->77] descThread push-ax * *(@-8) 40 + *sp ax + ax 8 == *ax -4 &&[77] _Bool [sh&&->75] descThread push-ax * *(@-8) 40 + *sp ax + ax 12 + *ax 0 + ax 28 push-ax indThreadActual == **sp *ax [sh||->76] descThread push-ax * *(@-8) 40 + *sp ax + ax 12 + *ax 0 + ax 28 == *ax -1 ||[76] _Bool &&[75]  "
section .relod
	dd	L78
section .text
	db	0x66, 0xB8
L78:
	dd	_descThread
	push	eax
	mov	eax, [bp-8]
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
	je	L77
section .relod
	dd	L79
section .text
	db	0x66, 0xB8
L79:
	dd	_descThread
	push	eax
	mov	eax, [bp-8]
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
	cmp	eax, -4
	sete	al
	movzx	eax, al
L77:
	test	eax, eax
	setne	al
	movsx	eax, al
; JumpIfZero
	test	eax, eax
	je	L75
section .relod
	dd	L80
section .text
	db	0x66, 0xB8
L80:
	dd	_descThread
	push	eax
	mov	eax, [bp-8]
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
	add	eax, 28
	push	eax
section .relod
	dd	L81
section .text
	db	0x66, 0xB8
L81:
	dd	_indThreadActual
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
; JumpIfNotZero
	test	eax, eax
	jne	L76
section .relod
	dd	L82
section .text
	db	0x66, 0xB8
L82:
	dd	_descThread
	push	eax
	mov	eax, [bp-8]
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
	add	eax, 28
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, -1
	sete	al
	movzx	eax, al
L76:
	test	eax, eax
	setne	al
	movsx	eax, al
L75:
; JumpIfZero
	test	eax, eax
	je	L72
; {
; RPN'ized expression: "descThread tindx + *u &u trama -> *u td -> *u &u EAX -> *u descThread indThreadActual + *u &u tid -> *u = "
; Expanded expression: "descThread (@-8) *(4) 40 * + 12 + *(4) 0 + 32 + descThread indThreadActual *(4) 40 * + 0 + *(4) =(4) "
; Fused expression:    "descThread push-ax * *(@-8) 40 + *sp ax + ax 12 + *ax 0 + ax 32 push-ax descThread push-ax indThreadActual * *ax 40 + *sp ax + ax 0 =(204) **sp *ax "
section .relod
	dd	L83
section .text
	db	0x66, 0xB8
L83:
	dd	_descThread
	push	eax
	mov	eax, [bp-8]
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
	dd	L84
section .text
	db	0x66, 0xB8
L84:
	dd	_descThread
	push	eax
section .relod
	dd	L85
section .text
	db	0x66, 0xB8
L85:
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
; loc                 <something> : * * void
; RPN'ized expression: "descThread tindx + *u &u trama -> *u td -> *u &u EBX -> *u (something86) *u res = "
; Expanded expression: "descThread (@-8) *(4) 40 * + 12 + *(4) 0 + 20 + *(4) (@8) *(4) =(4) "
; Fused expression:    "descThread push-ax * *(@-8) 40 + *sp ax + ax 12 + *ax 0 + ax 20 *(4) ax =(204) *ax *(@8) "
section .relod
	dd	L87
section .text
	db	0x66, 0xB8
L87:
	dd	_descThread
	push	eax
	mov	eax, [bp-8]
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
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	ebx, eax
	mov	eax, [bp+8]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "descThread tindx + *u &u estado -> *u preparado = "
; Expanded expression: "descThread (@-8) *(4) 40 * + 4 + 1 =(4) "
; Fused expression:    "descThread push-ax * *(@-8) 40 + *sp ax + ax 4 =(204) *ax 1 "
section .relod
	dd	L88
section .text
	db	0x66, 0xB8
L88:
	dd	_descThread
	push	eax
	mov	eax, [bp-8]
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
; loc                 <something> : * struct <something>
; RPN'ized expression: "( c2cPFR TUrgentes + *u &u (something89) , tindx encolarPC2c ) "
; Expanded expression: " c2cPFR 80 +  (@-8) *(4)  encolarPC2c ()8 "
; Fused expression:    "( c2cPFR + ax 80 , *(4) (@-8) , encolarPC2c )8 "
section .relod
	dd	L90
section .text
	db	0x66, 0xB8
L90:
	dd	_c2cPFR
	add	eax, 80
	push	eax
	push	dword [bp-8]
	db	0x9A
section .relot
	dd	L91
section .text
L91:
	dd	_encolarPC2c
	sub	sp, -8
; break
	jmp	L71
; }
L72:
; RPN'ized expression: "tindx ptrC2cThreads e -> *u tindx + *u &u sig -> *u = "
; Expanded expression: "(@-8) (@-4) *(4) 12 + *(4) (@-8) *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "+ *(@-4) 12 push-ax * *(@-8) 12 + **sp ax + ax 0 =(204) *(@-8) *ax "
	mov	eax, [bp-4]
	add	eax, 12
	push	eax
	mov	eax, [bp-8]
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
	mov	[bp-8], eax
; }
L69:
; Fused expression:    "++p(4) *(@-12) "
	mov	eax, [bp-12]
	inc	dword [bp-12]
	jmp	L68
L71:
; if
; RPN'ized expression: "tindx ptrC2cThreads cabecera -> *u == "
; Expanded expression: "(@-8) *(4) (@-4) *(4) 8 + *(4) == "
; Fused expression:    "+ *(@-4) 8 == *(@-8) *ax IF! "
	mov	eax, [bp-4]
	add	eax, 8
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp-8]
	cmp	eax, ecx
	jne	L92
; {
; RPN'ized expression: "descThread indThreadActual + *u &u status -> *u tramaThread td -> *u &u EBX -> *u = "
; Expanded expression: "descThread indThreadActual *(4) 40 * + 20 + tramaThread *(4) 0 + 20 + *(4) =(4) "
; Fused expression:    "descThread push-ax indThreadActual * *ax 40 + *sp ax + ax 20 push-ax tramaThread + *ax 0 + ax 20 =(204) **sp *ax "
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
	add	eax, 20
	push	eax
section .relod
	dd	L96
section .text
	db	0x66, 0xB8
L96:
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
	mov	eax, [si]
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "( indThreadActual terminarThreadIndx ) "
; Expanded expression: " indThreadActual *(4)  terminarThreadIndx ()4 "
; Fused expression:    "( indThreadActual *(4) ax , terminarThreadIndx )4 "
section .relod
	dd	L97
section .text
	db	0x66, 0xB8
L97:
	dd	_indThreadActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L98
section .text
L98:
	dd	_terminarThreadIndx
	sub	sp, -4
; loc             <something> : int
; RPN'ized expression: "( 5 -u (something99) bloquearThreadActual ) "
; Expanded expression: " -5  bloquearThreadActual ()4 "
; Fused expression:    "( -5 , bloquearThreadActual )4 "
	push	dword -5
	db	0x9A
section .relot
	dd	L100
section .text
L100:
	dd	_bloquearThreadActual
	sub	sp, -4
; }
L92:
; }
L64:
; RPN'ized expression: "( ptrC2cThreads , indThreadActual eliminarPC2c ) "
; Expanded expression: " (@-4) *(4)  indThreadActual *(4)  eliminarPC2c ()8 "
; Fused expression:    "( *(4) (@-4) , indThreadActual *(4) ax , eliminarPC2c )8 "
	push	dword [bp-4]
section .relod
	dd	L101
section .text
	db	0x66, 0xB8
L101:
	dd	_indThreadActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L102
section .text
L102:
	dd	_eliminarPC2c
	sub	sp, -8
; RPN'ized expression: "( indThreadActual matarThreadIndx ) "
; Expanded expression: " indThreadActual *(4)  matarThreadIndx ()4 "
; Fused expression:    "( indThreadActual *(4) ax , matarThreadIndx )4 "
section .relod
	dd	L103
section .text
	db	0x66, 0xB8
L103:
	dd	_indThreadActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L104
section .text
L104:
	dd	_matarThreadIndx
	sub	sp, -4
; RPN'ized expression: "( buscarNuevoThreadActual ) "
; Expanded expression: " buscarNuevoThreadActual ()0 "
; Fused expression:    "( buscarNuevoThreadActual )0 "
	db	0x9A
section .relot
	dd	L105
section .text
L105:
	dd	_buscarNuevoThreadActual
L54:
	db	0x66
	leave
	retf
L106:

section .fxnsz
	dd	L106 - _thr_exit

; glb so1_manejador_00 : (void) void
section .text
	global	_so1_manejador_00
_so1_manejador_00:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         24
; switch
; RPN'ized expression: "tramaThread tb -> *u &u AL -> *u "
; Expanded expression: "tramaThread *(4) 0 + 32 + *(1) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 *(1) ax  "
section .relod
	dd	L111
section .text
	db	0x66, 0xB8
L111:
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
	jmp	L110
; {
; case
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
L112:
; {
; loc             tid : (@-4): * int
; RPN'ized expression: "tid tramaThread td -> *u &u ESI -> *u = "
; Expanded expression: "(@-4) tramaThread *(4) 0 + 8 + *(4) =(4) "
; Fused expression:    "tramaThread + *ax 0 + ax 8 =(204) *(@-4) *ax "
section .relod
	dd	L113
section .text
	db	0x66, 0xB8
L113:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 8
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-4], eax
; loc             attribs : (@-8): * struct <something>
; RPN'ized expression: "attribs tramaThread td -> *u &u EDX -> *u = "
; Expanded expression: "(@-8) tramaThread *(4) 0 + 24 + *(4) =(4) "
; Fused expression:    "tramaThread + *ax 0 + ax 24 =(204) *(@-8) *ax "
section .relod
	dd	L114
section .text
	db	0x66, 0xB8
L114:
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
	mov	eax, [si]
	mov	[bp-8], eax
; loc             funcionInicial : (@-12): * * void
; RPN'ized expression: "funcionInicial tramaThread td -> *u &u ECX -> *u = "
; Expanded expression: "(@-12) tramaThread *(4) 0 + 28 + *(4) =(4) "
; Fused expression:    "tramaThread + *ax 0 + ax 28 =(204) *(@-12) *ax "
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
	add	eax, 28
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-12], eax
; loc             arg : (@-16): * void
; RPN'ized expression: "arg tramaThread td -> *u &u EBX -> *u = "
; Expanded expression: "(@-16) tramaThread *(4) 0 + 20 + *(4) =(4) "
; Fused expression:    "tramaThread + *ax 0 + ax 20 =(204) *(@-16) *ax "
section .relod
	dd	L116
section .text
	db	0x66, 0xB8
L116:
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
	mov	eax, [si]
	mov	[bp-16], eax
; loc             SP0 : (@-20): unsigned short
; if
; loc             <something> : * unsigned char
; RPN'ized expression: "attribs 0 (something119) == "
; Expanded expression: "(@-8) *(4) 0 == "
; Fused expression:    "== *(@-8) 0 IF! "
	mov	eax, [bp-8]
	cmp	eax, 0
	jne	L117
; RPN'ized expression: "SP0 16384 = "
; Expanded expression: "(@-20) 16384 =(2) "
; Fused expression:    "=(172) *(@-20) 16384 "
	mov	eax, 16384
	mov	[bp-20], ax
	movzx	eax, ax
	jmp	L118
L117:
; else
; RPN'ized expression: "SP0 attribs SP0 -> *u = "
; Expanded expression: "(@-20) (@-8) *(4) 0 + *(2) =(2) "
; Fused expression:    "+ *(@-8) 0 =(170) *(@-20) *ax "
	mov	eax, [bp-8]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-20], ax
	movzx	eax, ax
L118:
; loc             tindx : (@-24): int
; RPN'ized expression: "tindx ( indProcesoActual , arg , SP0 , funcionInicial crearThread ) = "
; Expanded expression: "(@-24)  indProcesoActual *(4)  (@-16) *(4)  (@-20) *(2)  (@-12) *(4)  crearThread ()16 =(4) "
; Fused expression:    "( indProcesoActual *(4) ax , *(4) (@-16) , *(2) (@-20) , *(4) (@-12) , crearThread )16 =(204) *(@-24) ax "
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
	push	dword [si]
	push	dword [bp-16]
	mov	ax, [bp-20]
	movzx	eax, ax
	push	eax
	push	dword [bp-12]
	db	0x9A
section .relot
	dd	L121
section .text
L121:
	dd	_crearThread
	sub	sp, -16
	mov	[bp-24], eax
; if
; RPN'ized expression: "tindx 0 >= "
; Expanded expression: "(@-24) *(4) 0 >= "
; Fused expression:    ">= *(@-24) 0 IF! "
	mov	eax, [bp-24]
	cmp	eax, 0
	jl	L122
; {
; RPN'ized expression: "tramaThread td -> *u &u EAX -> *u 0 = "
; Expanded expression: "tramaThread *(4) 0 + 32 + 0 =(4) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 =(204) *ax 0 "
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
	add	eax, 32
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "tid *u descThread tindx + *u &u tid -> *u = "
; Expanded expression: "(@-4) *(4) descThread (@-24) *(4) 40 * + 0 + *(4) =(4) "
; Fused expression:    "*(4) (@-4) push-ax descThread push-ax * *(@-24) 40 + *sp ax + ax 0 =(204) **sp *ax "
	mov	eax, [bp-4]
	push	eax
section .relod
	dd	L125
section .text
	db	0x66, 0xB8
L125:
	dd	_descThread
	push	eax
	mov	eax, [bp-24]
	imul	eax, eax, 40
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
	mov	[si], eax
; if
; loc                 <something> : * unsigned char
; loc                 <something> : unsigned short
; RPN'ized expression: "attribs 0 (something128) != attribs opciones -> *u 1 (something129) & 0 == && "
; Expanded expression: "(@-8) *(4) 0 != [sh&&->130] (@-8) *(4) 2 + *(2) 1 & 0 == &&[130] "
; Fused expression:    "!= *(@-8) 0 [sh&&->130] + *(@-8) 2 & *ax 1 == ax 0 &&[130]  "
	mov	eax, [bp-8]
	cmp	eax, 0
	setne	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L130
	mov	eax, [bp-8]
	add	eax, 2
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	and	eax, 1
	cmp	eax, 0
	sete	al
	movzx	eax, al
L130:
; JumpIfZero
	test	eax, eax
	je	L126
; RPN'ized expression: "descThread tindx + *u &u noStatus -> *u FALSE = "
; Expanded expression: "descThread (@-24) *(4) 40 * + 16 + 0 =(4) "
; Fused expression:    "descThread push-ax * *(@-24) 40 + *sp ax + ax 16 =(204) *ax 0 "
section .relod
	dd	L131
section .text
	db	0x66, 0xB8
L131:
	dd	_descThread
	push	eax
	mov	eax, [bp-24]
	imul	eax, eax, 40
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 16
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
L126:
; }
	jmp	L123
L122:
; else
; RPN'ized expression: "tramaThread td -> *u &u EAX -> *u tindx = "
; Expanded expression: "tramaThread *(4) 0 + 32 + (@-24) *(4) =(4) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 =(204) *ax *(@-24) "
section .relod
	dd	L132
section .text
	db	0x66, 0xB8
L132:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 32
	mov	ebx, eax
	mov	eax, [bp-24]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
L123:
; break
	jmp	L109
; }
; case
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
L133:
; RPN'ized expression: "tramaThread td -> *u &u EAX -> *u ( tramaThread td -> *u &u EBX -> *u , tramaThread td -> *u &u ECX -> *u thr_join ) = "
; Expanded expression: "tramaThread *(4) 0 + 32 +  tramaThread *(4) 0 + 20 + *(4)  tramaThread *(4) 0 + 28 + *(4)  thr_join ()8 =(4) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 push-ax ( tramaThread + *ax 0 + ax 20 *(4) ax , tramaThread + *ax 0 + ax 28 *(4) ax , thr_join )8 =(204) **sp ax "
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
	add	eax, 32
	push	eax
section .relod
	dd	L135
section .text
	db	0x66, 0xB8
L135:
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
	push	dword [si]
section .relod
	dd	L136
section .text
	db	0x66, 0xB8
L136:
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
	push	dword [si]
	db	0x9A
section .relot
	dd	L137
section .text
L137:
	dd	_thr_join
	sub	sp, -8
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; break
	jmp	L109
; case
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
L138:
; RPN'ized expression: "( tramaThread td -> *u &u EBX -> *u thr_exit ) "
; Expanded expression: " tramaThread *(4) 0 + 20 + *(4)  thr_exit ()4 "
; Fused expression:    "( tramaThread + *ax 0 + ax 20 *(4) ax , thr_exit )4 "
section .relod
	dd	L139
section .text
	db	0x66, 0xB8
L139:
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
	push	dword [si]
	db	0x9A
section .relot
	dd	L140
section .text
L140:
	dd	_thr_exit
	sub	sp, -4
; break
	jmp	L109
; case
; RPN'ized expression: "3 "
; Expanded expression: "3 "
; Expression value: 3
L141:
; RPN'ized expression: "descThread indThreadActual + *u &u trama -> *u tramaThread = "
; Expanded expression: "descThread indThreadActual *(4) 40 * + 12 + tramaThread *(4) =(4) "
; Fused expression:    "descThread push-ax indThreadActual * *ax 40 + *sp ax + ax 12 push-ax tramaThread =(204) **sp *ax "
section .relod
	dd	L142
section .text
	db	0x66, 0xB8
L142:
	dd	_descThread
	push	eax
section .relod
	dd	L143
section .text
	db	0x66, 0xB8
L143:
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
	dd	L144
section .text
	db	0x66, 0xB8
L144:
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
; RPN'ized expression: "descThread indThreadActual + *u &u estado -> *u preparado = "
; Expanded expression: "descThread indThreadActual *(4) 40 * + 4 + 1 =(4) "
; Fused expression:    "descThread push-ax indThreadActual * *ax 40 + *sp ax + ax 4 =(204) *ax 1 "
section .relod
	dd	L145
section .text
	db	0x66, 0xB8
L145:
	dd	_descThread
	push	eax
section .relod
	dd	L146
section .text
	db	0x66, 0xB8
L146:
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
; loc         <something> : * struct <something>
; RPN'ized expression: "( c2cPFR TPreparados + *u &u (something147) , indThreadActual encolarPC2c ) "
; Expanded expression: " c2cPFR 64 +  indThreadActual *(4)  encolarPC2c ()8 "
; Fused expression:    "( c2cPFR + ax 64 , indThreadActual *(4) ax , encolarPC2c )8 "
section .relod
	dd	L148
section .text
	db	0x66, 0xB8
L148:
	dd	_c2cPFR
	add	eax, 64
	push	eax
section .relod
	dd	L149
section .text
	db	0x66, 0xB8
L149:
	dd	_indThreadActual
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	db	0x9A
section .relot
	dd	L150
section .text
L150:
	dd	_encolarPC2c
	sub	sp, -8
; RPN'ized expression: "( buscarNuevoThreadActual ) "
; Expanded expression: " buscarNuevoThreadActual ()0 "
; Fused expression:    "( buscarNuevoThreadActual )0 "
	db	0x9A
section .relot
	dd	L151
section .text
L151:
	dd	_buscarNuevoThreadActual
; break
	jmp	L109
; case
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
L152:
; RPN'ized expression: "tramaThread td -> *u &u EAX -> *u descThread indThreadActual + *u &u tid -> *u = "
; Expanded expression: "tramaThread *(4) 0 + 32 + descThread indThreadActual *(4) 40 * + 0 + *(4) =(4) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 push-ax descThread push-ax indThreadActual * *ax 40 + *sp ax + ax 0 =(204) **sp *ax "
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
	push	eax
section .relod
	dd	L154
section .text
	db	0x66, 0xB8
L154:
	dd	_descThread
	push	eax
section .relod
	dd	L155
section .text
	db	0x66, 0xB8
L155:
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
; break
	jmp	L109
; default
L156:
; }
	jmp	L109
L110:
	cmp	eax, 0
	je	L112
	cmp	eax, 1
	je	L133
	cmp	eax, 2
	je	L138
	cmp	eax, 3
	je	L141
	cmp	eax, 4
	je	L152
	jmp	L156
L109:
L107:
	db	0x66
	leave
	retf
L157:

section .fxnsz
	dd	L157 - _so1_manejador_00


	extern	_descProceso
	extern	_indProcesoActual
	extern	_indThreadActual
	extern	_descThread
	extern	_eliminarThreadIndx
	extern	_eliminarPC2c
	extern	_bloquearThreadActual
	extern	_indice
	extern	_c2cPFR
	extern	_encolarPC2c
	extern	_tramaThread
	extern	_terminarThreadIndx
	extern	_matarThreadIndx
	extern	_buscarNuevoThreadActual
	extern	_crearThread

; Syntax/declaration table/stack:
; Bytes used: 11150/40960


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
; Ident thr_join
; Ident thr_exit
; Ident so1_manejador_00
; Bytes used: 4639/16384

; Next label number: 158
; Compilation succeeded.
