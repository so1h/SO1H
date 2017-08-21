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
; RPN'ized expression: "256 "
; Expanded expression: "256 "
; Expression value: 256
; glb VIOrg : [256u] * (void) void
; RPN'ized expression: "256 "
; Expanded expression: "256 "
; Expression value: 256
; glb recVInt : [256u] int
; glb redirigirInt : (
; prm     nVInt : unsigned char
; prm     isr : * (void) void
;     ) void
; glb redirigirIntHardware : (
; prm     irq : unsigned char
; prm     isr : * (void) void
;     ) void
; glb restablecerInt : (
; prm     nVInt : int
;     ) void
; glb inicTVI : (void) void
; glb link_ints : (void) void
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
; glb inicRecursos : (void) void
; glb crearRec : (
; prm     dR : * struct <something>
;     ) int
; glb crearFich : (
; prm     nombre : * char
; prm     rindx : int
; prm     menor : unsigned short
; prm     tipo : int
;     ) int
; glb destruirFich : (
; prm     dfs : int
;     ) int
; glb destruirRec : (
; prm     nombre : * char
;     ) int
; glb link_recurs : (void) void
; glb _start__text : char
; glb _stop__text : char
; glb _start__rodata : char
; glb _stop__rodata : char
; glb _start__data : char
; glb _stop__data : char
; glb _start__bss : char
; glb _stop__bss : char
; glb _start_allcode__ : char
; glb _stop_allcode__ : char
; glb _start_alldata__ : char
; glb _stop_alldata__ : char
; glb mostrarSeccion : (
; prm     start : unsigned
; prm     stop : unsigned
; prm     descripcion : * char
;     ) void
; glb mostrarSecciones : (void) void
; glb cargarDescSO1H : (
; prm     descSO1H : * struct <something>
;     ) void
section .text
	global	_cargarDescSO1H
_cargarDescSO1H:
	push	ebp
	movzx	ebp, sp
	;sub	sp,          0
; loc     descSO1H : (@8): * struct <something>
; loc     <something> : * struct <something>
; RPN'ized expression: "ccbAlEpilogo descCcbAlEpilogo &u (something3) = "
; Expanded expression: "ccbAlEpilogo descCcbAlEpilogo =(4) "
; Fused expression:    "ccbAlEpilogo push-ax descCcbAlEpilogo =(204) **sp ax "
section .relod
	dd	L4
section .text
	db	0x66, 0xB8
L4:
	dd	_ccbAlEpilogo
	push	eax
section .relod
	dd	L5
section .text
	db	0x66, 0xB8
L5:
	dd	_descCcbAlEpilogo
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * int
; RPN'ized expression: "descSO1H ptrIndProcesoActual -> *u indProcesoActual &u (something6) = "
; Expanded expression: "(@8) *(4) 0 + indProcesoActual =(4) "
; Fused expression:    "+ *(@8) 0 push-ax indProcesoActual =(204) **sp ax "
	mov	eax, [bp+8]
	push	eax
section .relod
	dd	L7
section .text
	db	0x66, 0xB8
L7:
	dd	_indProcesoActual
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * * union <something>
; RPN'ized expression: "descSO1H ptrTramaThread -> *u tramaThread &u (something8) = "
; Expanded expression: "(@8) *(4) 8 + tramaThread =(4) "
; Fused expression:    "+ *(@8) 8 push-ax tramaThread =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 8
	push	eax
section .relod
	dd	L9
section .text
	db	0x66, 0xB8
L9:
	dd	_tramaThread
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * int
; RPN'ized expression: "descSO1H ptrActivarAlEpilogo -> *u activarAlEpilogo1 &u (something10) = "
; Expanded expression: "(@8) *(4) 12 + activarAlEpilogo1 =(4) "
; Fused expression:    "+ *(@8) 12 push-ax activarAlEpilogo1 =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 12
	push	eax
section .relod
	dd	L11
section .text
	db	0x66, 0xB8
L11:
	dd	_activarAlEpilogo1
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * struct <something>
; RPN'ized expression: "descSO1H ptrDescProceso -> *u descProceso &u (something12) = "
; Expanded expression: "(@8) *(4) 16 + descProceso =(4) "
; Fused expression:    "+ *(@8) 16 push-ax descProceso =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 16
	push	eax
section .relod
	dd	L13
section .text
	db	0x66, 0xB8
L13:
	dd	_descProceso
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : struct <something>
; RPN'ized expression: "descSO1H tamDescProceso -> *u <something14> sizeof = "
; Expanded expression: "(@8) *(4) 20 + 292u =(2) "
; Fused expression:    "+ *(@8) 20 =(172) *ax 292u "
	mov	eax, [bp+8]
	add	eax, 20
	mov	ebx, eax
	mov	eax, 292
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; loc     <something> : * struct <something>
; RPN'ized expression: "descSO1H ptrDescFichero -> *u descFichero &u (something15) = "
; Expanded expression: "(@8) *(4) 32 + descFichero =(4) "
; Fused expression:    "+ *(@8) 32 push-ax descFichero =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 32
	push	eax
section .relod
	dd	L16
section .text
	db	0x66, 0xB8
L16:
	dd	_descFichero
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * struct <something>
; RPN'ized expression: "descSO1H ptrDescRecurso -> *u descRecurso &u (something17) = "
; Expanded expression: "(@8) *(4) 36 + descRecurso =(4) "
; Fused expression:    "+ *(@8) 36 push-ax descRecurso =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 36
	push	eax
section .relod
	dd	L18
section .text
	db	0x66, 0xB8
L18:
	dd	_descRecurso
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * struct <something>
; RPN'ized expression: "descSO1H ptrC2cPFR -> *u c2cPFR &u (something19) = "
; Expanded expression: "(@8) *(4) 40 + c2cPFR =(4) "
; Fused expression:    "+ *(@8) 40 push-ax c2cPFR =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 40
	push	eax
section .relod
	dd	L20
section .text
	db	0x66, 0xB8
L20:
	dd	_c2cPFR
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * struct <something>
; RPN'ized expression: "descSO1H ptrE2PFR -> *u e2PFR &u (something21) = "
; Expanded expression: "(@8) *(4) 44 + e2PFR =(4) "
; Fused expression:    "+ *(@8) 44 push-ax e2PFR =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 44
	push	eax
section .relod
	dd	L22
section .text
	db	0x66, 0xB8
L22:
	dd	_e2PFR
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * int
; RPN'ized expression: "descSO1H ptrNivelActivacionSO1H -> *u nivelActivacionSO1H &u (something23) = "
; Expanded expression: "(@8) *(4) 48 + nivelActivacionSO1H =(4) "
; Fused expression:    "+ *(@8) 48 push-ax nivelActivacionSO1H =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 48
	push	eax
section .relod
	dd	L24
section .text
	db	0x66, 0xB8
L24:
	dd	_nivelActivacionSO1H
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * int
; RPN'ized expression: "descSO1H ptrEnHalt -> *u enHalt &u (something25) = "
; Expanded expression: "(@8) *(4) 52 + enHalt =(4) "
; Fused expression:    "+ *(@8) 52 push-ax enHalt =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 52
	push	eax
section .relod
	dd	L26
section .text
	db	0x66, 0xB8
L26:
	dd	_enHalt
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * int
; RPN'ized expression: "descSO1H ptrHayTic -> *u hayTic &u (something27) = "
; Expanded expression: "(@8) *(4) 56 + hayTic =(4) "
; Fused expression:    "+ *(@8) 56 push-ax hayTic =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 56
	push	eax
section .relod
	dd	L28
section .text
	db	0x66, 0xB8
L28:
	dd	_hayTic
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * * struct <something>
; RPN'ized expression: "descSO1H ptrCcbAlEpilogo -> *u ccbAlEpilogo &u (something29) = "
; Expanded expression: "(@8) *(4) 60 + ccbAlEpilogo =(4) "
; Fused expression:    "+ *(@8) 60 push-ax ccbAlEpilogo =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 60
	push	eax
section .relod
	dd	L30
section .text
	db	0x66, 0xB8
L30:
	dd	_ccbAlEpilogo
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * unsigned short
; RPN'ized expression: "descSO1H ptrSS_Thread -> *u SS_Thread &u (something31) = "
; Expanded expression: "(@8) *(4) 64 + SS_Thread =(4) "
; Fused expression:    "+ *(@8) 64 push-ax SS_Thread =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 64
	push	eax
section .relod
	dd	L32
section .text
	db	0x66, 0xB8
L32:
	dd	_SS_Thread
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * unsigned short
; RPN'ized expression: "descSO1H ptrSP_Thread -> *u SP_Thread &u (something33) = "
; Expanded expression: "(@8) *(4) 68 + SP_Thread =(4) "
; Fused expression:    "+ *(@8) 68 push-ax SP_Thread =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 68
	push	eax
section .relod
	dd	L34
section .text
	db	0x66, 0xB8
L34:
	dd	_SP_Thread
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * unsigned short
; RPN'ized expression: "descSO1H ptrSS_Kernel -> *u SS_Kernel &u (something35) = "
; Expanded expression: "(@8) *(4) 72 + SS_Kernel =(4) "
; Fused expression:    "+ *(@8) 72 push-ax SS_Kernel =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 72
	push	eax
section .relod
	dd	L36
section .text
	db	0x66, 0xB8
L36:
	dd	_SS_Kernel
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * unsigned
; RPN'ized expression: "descSO1H ptrContRodajas -> *u contRodajas &u (something37) = "
; Expanded expression: "(@8) *(4) 84 + contRodajas =(4) "
; Fused expression:    "+ *(@8) 84 push-ax contRodajas =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 84
	push	eax
section .relod
	dd	L38
section .text
	db	0x66, 0xB8
L38:
	dd	_contRodajas
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * int
; RPN'ized expression: "descSO1H ptrContTicsRodaja -> *u contTicsRodaja &u (something39) = "
; Expanded expression: "(@8) *(4) 88 + contTicsRodaja =(4) "
; Fused expression:    "+ *(@8) 88 push-ax contTicsRodaja =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 88
	push	eax
section .relod
	dd	L40
section .text
	db	0x66, 0xB8
L40:
	dd	_contTicsRodaja
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * * (void) void
; RPN'ized expression: "descSO1H ptrVIOrg -> *u VIOrg &u (something41) = "
; Expanded expression: "(@8) *(4) 92 + VIOrg =(4) "
; Fused expression:    "+ *(@8) 92 push-ax VIOrg =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 92
	push	eax
section .relod
	dd	L42
section .text
	db	0x66, 0xB8
L42:
	dd	_VIOrg
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * () int
; loc     <something> : unsigned
; loc     <something> : unsigned short
; loc     <something> : unsigned
; loc     <something> : unsigned short
; RPN'ized expression: "descSO1H sigThread -> *u _start__text &u (something45) (something44) 4 << sigThread (something47) (something46) + (something43) = "
; Expanded expression: "(@8) *(4) 96 + _start__text unsigned short 4 << sigThread unsigned short + =(4) "
; Fused expression:    "+ *(@8) 96 push-ax _start__text unsigned short << ax 4 push-ax sigThread unsigned short + *sp ax =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 96
	push	eax
section .relod
	dd	L48
section .text
	db	0x66, 0xB8
L48:
	dd	__start__text
	movzx	eax, ax
	shl	eax, 4
	push	eax
section .relod
	dd	L49
section .text
	db	0x66, 0xB8
L49:
	dd	_sigThread
	movzx	eax, ax
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * (
; prm         tindx : int
;         ) void
; loc     <something> : unsigned
; loc     <something> : unsigned short
; loc     <something> : unsigned
; loc     <something> : unsigned short
; RPN'ized expression: "descSO1H activarThread -> *u _start__text &u (something52) (something51) 4 << activarThread (something54) (something53) + (something50) = "
; Expanded expression: "(@8) *(4) 100 + _start__text unsigned short 4 << activarThread unsigned short + =(4) "
; Fused expression:    "+ *(@8) 100 push-ax _start__text unsigned short << ax 4 push-ax activarThread unsigned short + *sp ax =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 100
	push	eax
section .relod
	dd	L55
section .text
	db	0x66, 0xB8
L55:
	dd	__start__text
	movzx	eax, ax
	shl	eax, 4
	push	eax
section .relod
	dd	L56
section .text
	db	0x66, 0xB8
L56:
	dd	_activarThread
	movzx	eax, ax
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * (void) void
; loc     <something> : unsigned
; loc     <something> : unsigned short
; loc     <something> : unsigned short
; loc     <something> : unsigned short
; RPN'ized expression: "descSO1H buscarNuevoThreadActual -> *u _start__text &u (something59) (something58) 16 << buscarNuevoThreadActual (something61) (something60) | (something57) = "
; Expanded expression: "(@8) *(4) 104 + _start__text unsigned short 16 << buscarNuevoThreadActual unsigned short unsigned short | =(4) "
; Fused expression:    "+ *(@8) 104 push-ax _start__text unsigned short << ax 16 push-ax buscarNuevoThreadActual unsigned short unsigned short | *sp ax =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 104
	push	eax
section .relod
	dd	L62
section .text
	db	0x66, 0xB8
L62:
	dd	__start__text
	movzx	eax, ax
	shl	eax, 16
	push	eax
section .relod
	dd	L63
section .text
	db	0x66, 0xB8
L63:
	dd	_buscarNuevoThreadActual
	movzx	eax, ax
	movzx	eax, ax
	mov	ecx, eax
	pop	eax
	or	eax, ecx
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc     <something> : * (
; prm         rindx : int
;         ) void
; loc     <something> : unsigned
; loc     <something> : unsigned short
; loc     <something> : unsigned short
; loc     <something> : unsigned short
; RPN'ized expression: "descSO1H bloquearThreadActual -> *u _start__text &u (something66) (something65) 16 << bloquearThreadActual (something68) (something67) | (something64) = "
; Expanded expression: "(@8) *(4) 108 + _start__text unsigned short 16 << bloquearThreadActual unsigned short unsigned short | =(4) "
; Fused expression:    "+ *(@8) 108 push-ax _start__text unsigned short << ax 16 push-ax bloquearThreadActual unsigned short unsigned short | *sp ax =(204) **sp ax "
	mov	eax, [bp+8]
	add	eax, 108
	push	eax
section .relod
	dd	L69
section .text
	db	0x66, 0xB8
L69:
	dd	__start__text
	movzx	eax, ax
	shl	eax, 16
	push	eax
section .relod
	dd	L70
section .text
	db	0x66, 0xB8
L70:
	dd	_bloquearThreadActual
	movzx	eax, ax
	movzx	eax, ax
	mov	ecx, eax
	pop	eax
	or	eax, ecx
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
L1:
	db	0x66
	leave
	retf
L71:

section .fxnsz noalloc
	dd	L71 - _cargarDescSO1H

; glb so1_manejador_03 : () void
section .text
	global	_so1_manejador_03
_so1_manejador_03:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         16
; switch
; RPN'ized expression: "tramaThread tb -> *u &u AL -> *u "
; Expanded expression: "tramaThread *(4) 0 + 32 + *(1) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 *(1) ax  "
section .relod
	dd	L76
section .text
	db	0x66, 0xB8
L76:
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
	jmp	L75
; {
; case
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
L77:
; {
; loc             descSO1H : (@-4): * struct <something>
; loc             <something> : * struct <something>
; loc             <something> : unsigned
; loc             <something> : unsigned
; RPN'ized expression: "descSO1H tramaThread tw -> *u &u ES -> *u (something79) 4 << tramaThread tw -> *u &u BX -> *u (something80) + (something78) = "
; Expanded expression: "(@-4) tramaThread *(4) 0 + 2 + *(2) 4 << tramaThread *(4) 0 + 20 + *(2) + =(4) "
; Fused expression:    "tramaThread + *ax 0 + ax 2 << *ax 4 push-ax tramaThread + *ax 0 + ax 20 + *sp *ax =(204) *(@-4) ax "
section .relod
	dd	L81
section .text
	db	0x66, 0xB8
L81:
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
	shl	eax, 4
	push	eax
section .relod
	dd	L82
section .text
	db	0x66, 0xB8
L82:
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
	movzx	ecx, word [si]
	pop	eax
	add	eax, ecx
	mov	[bp-4], eax
; RPN'ized expression: "( descSO1H cargarDescSO1H ) "
; Expanded expression: " (@-4) *(4)  cargarDescSO1H ()4 "
; Fused expression:    "( *(4) (@-4) , cargarDescSO1H )4 "
	push	dword [bp-4]
	db	0x9A
section .relot
	dd	L83
section .text
L83:
	dd	_cargarDescSO1H
	sub	sp, -4
; break
	jmp	L74
; }
; case
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
L84:
; {
; loc             dR : (@-4): * struct <something>
; loc             rindx : (@-8): int
; loc             <something> : * struct <something>
; loc             <something> : unsigned
; loc             <something> : unsigned
; RPN'ized expression: "dR tramaThread tw -> *u &u ES -> *u (something86) 4 << tramaThread tw -> *u &u BX -> *u (something87) + (something85) = "
; Expanded expression: "(@-4) tramaThread *(4) 0 + 2 + *(2) 4 << tramaThread *(4) 0 + 20 + *(2) + =(4) "
; Fused expression:    "tramaThread + *ax 0 + ax 2 << *ax 4 push-ax tramaThread + *ax 0 + ax 20 + *sp *ax =(204) *(@-4) ax "
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
	movzx	ecx, word [si]
	pop	eax
	add	eax, ecx
	mov	[bp-4], eax
; RPN'ized expression: "rindx ( dR crearRec ) = "
; Expanded expression: "(@-8)  (@-4) *(4)  crearRec ()4 =(4) "
; Fused expression:    "( *(4) (@-4) , crearRec )4 =(204) *(@-8) ax "
	push	dword [bp-4]
	db	0x9A
section .relot
	dd	L90
section .text
L90:
	dd	_crearRec
	sub	sp, -4
	mov	[bp-8], eax
; RPN'ized expression: "tramaThread tw -> *u &u AX -> *u rindx = "
; Expanded expression: "tramaThread *(4) 0 + 32 + (@-8) *(4) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 =(172) *ax *(@-8) "
section .relod
	dd	L91
section .text
	db	0x66, 0xB8
L91:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 32
	mov	ebx, eax
	mov	eax, [bp-8]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L74
; }
; case
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
L92:
; {
; loc             nombre : (@-4): * char
; loc             rindx : (@-8): int
; loc             menor : (@-12): unsigned short
; loc             tipo : (@-16): int
; loc             <something> : * char
; RPN'ized expression: "nombre ( tramaThread tw -> *u &u BX -> *u , tramaThread tw -> *u &u ES -> *u pointer ) (something93) = "
; Expanded expression: "(@-4)  tramaThread *(4) 0 + 20 + *(2)  tramaThread *(4) 0 + 2 + *(2)  pointer ()8 =(4) "
; Fused expression:    "( tramaThread + *ax 0 + ax 20 *(2) ax , tramaThread + *ax 0 + ax 2 *(2) ax , pointer )8 =(204) *(@-4) ax "
section .relod
	dd	L94
section .text
	db	0x66, 0xB8
L94:
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
	dd	L95
section .text
	db	0x66, 0xB8
L95:
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
	dd	L96
section .text
L96:
	dd	_pointer
	sub	sp, -8
	mov	[bp-4], eax
; RPN'ized expression: "rindx tramaThread tw -> *u &u CX -> *u = "
; Expanded expression: "(@-8) tramaThread *(4) 0 + 28 + *(2) =(4) "
; Fused expression:    "tramaThread + *ax 0 + ax 28 =(202) *(@-8) *ax "
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
	add	eax, 28
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-8], eax
; RPN'ized expression: "menor tramaThread tw -> *u &u DX -> *u = "
; Expanded expression: "(@-12) tramaThread *(4) 0 + 24 + *(2) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 24 =(170) *(@-12) *ax "
section .relod
	dd	L98
section .text
	db	0x66, 0xB8
L98:
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
	mov	[bp-12], ax
	movzx	eax, ax
; RPN'ized expression: "tipo tramaThread tw -> *u &u SI -> *u = "
; Expanded expression: "(@-16) tramaThread *(4) 0 + 8 + *(2) =(4) "
; Fused expression:    "tramaThread + *ax 0 + ax 8 =(202) *(@-16) *ax "
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
	add	eax, 8
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-16], eax
; RPN'ized expression: "tramaThread tw -> *u &u AX -> *u ( tipo , menor , rindx , nombre crearFich ) = "
; Expanded expression: "tramaThread *(4) 0 + 32 +  (@-16) *(4)  (@-12) *(2)  (@-8) *(4)  (@-4) *(4)  crearFich ()16 =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 push-ax ( *(4) (@-16) , *(2) (@-12) , *(4) (@-8) , *(4) (@-4) , crearFich )16 =(172) **sp ax "
section .relod
	dd	L100
section .text
	db	0x66, 0xB8
L100:
	dd	_tramaThread
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	add	eax, 32
	push	eax
	push	dword [bp-16]
	mov	ax, [bp-12]
	movzx	eax, ax
	push	eax
	push	dword [bp-8]
	push	dword [bp-4]
	db	0x9A
section .relot
	dd	L101
section .text
L101:
	dd	_crearFich
	sub	sp, -16
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L74
; }
; case
; RPN'ized expression: "3 "
; Expanded expression: "3 "
; Expression value: 3
L102:
; {
; loc             <something> : int
; RPN'ized expression: "( 3 -u (something103) bloquearThreadActual ) "
; Expanded expression: " -3  bloquearThreadActual ()4 "
; Fused expression:    "( -3 , bloquearThreadActual )4 "
	push	dword -3
	db	0x9A
section .relot
	dd	L104
section .text
L104:
	dd	_bloquearThreadActual
	sub	sp, -4
; break
	jmp	L74
; }
; case
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
L105:
; {
; loc             <something> : * char
; RPN'ized expression: "tramaThread tw -> *u &u AX -> *u ( ( tramaThread tw -> *u &u BX -> *u , tramaThread tw -> *u &u ES -> *u pointer ) (something106) destruirRec ) = "
; Expanded expression: "tramaThread *(4) 0 + 32 +   tramaThread *(4) 0 + 20 + *(2)  tramaThread *(4) 0 + 2 + *(2)  pointer ()8  destruirRec ()4 =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 push-ax ( ( tramaThread + *ax 0 + ax 20 *(2) ax , tramaThread + *ax 0 + ax 2 *(2) ax , pointer )8 , destruirRec )4 =(172) **sp ax "
section .relod
	dd	L107
section .text
	db	0x66, 0xB8
L107:
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
	dd	L108
section .text
	db	0x66, 0xB8
L108:
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
	dd	L109
section .text
	db	0x66, 0xB8
L109:
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
	dd	L110
section .text
L110:
	dd	_pointer
	sub	sp, -8
	push	eax
	db	0x9A
section .relot
	dd	L111
section .text
L111:
	dd	_destruirRec
	sub	sp, -4
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; break
	jmp	L74
; }
; case
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
L112:
; case
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
L113:
; {
; loc             cb : (@-4): * (
; prm                 arg : * void
;                 ) int
; loc             rindx : (@-8): int
; loc             enc : (@-12): int
; RPN'ized expression: "enc FALSE = "
; Expanded expression: "(@-12) 0 =(4) "
; Fused expression:    "=(204) *(@-12) 0 "
	mov	eax, 0
	mov	[bp-12], eax
; loc             res : (@-16): int
; RPN'ized expression: "rindx c2cPFR DROcupados + *u &u primero -> *u = "
; Expanded expression: "(@-8) c2cPFR 176 + 4 + *(4) =(4) "
; Fused expression:    "c2cPFR + ax 176 + ax 4 =(204) *(@-8) *ax "
section .relod
	dd	L114
section .text
	db	0x66, 0xB8
L114:
	dd	_c2cPFR
	add	eax, 176
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-8], eax
; while
; RPN'ized expression: "rindx c2cPFR DROcupados + *u &u cabecera -> *u != "
; Expanded expression: "(@-8) *(4) c2cPFR 176 + 8 + *(4) != "
L115:
; Fused expression:    "c2cPFR + ax 176 + ax 8 != *(@-8) *ax IF! "
section .relod
	dd	L117
section .text
	db	0x66, 0xB8
L117:
	dd	_c2cPFR
	add	eax, 176
	add	eax, 8
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp-8]
	cmp	eax, ecx
	je	L116
; {
; if
; loc                 <something> : * char
; RPN'ized expression: "( ( tramaThread tw -> *u &u BX -> *u , tramaThread tw -> *u &u CX -> *u pointer ) (something120) , descRecurso rindx + *u &u nombre -> *u strcmp ) 0 == "
; Expanded expression: "  tramaThread *(4) 0 + 20 + *(2)  tramaThread *(4) 0 + 28 + *(2)  pointer ()8  descRecurso (@-8) *(4) 96 * + 0 +  strcmp ()8 0 == "
; Fused expression:    "( ( tramaThread + *ax 0 + ax 20 *(2) ax , tramaThread + *ax 0 + ax 28 *(2) ax , pointer )8 , descRecurso push-ax * *(@-8) 96 + *sp ax + ax 0 , strcmp )8 == ax 0 IF! "
section .relod
	dd	L121
section .text
	db	0x66, 0xB8
L121:
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
	dd	L122
section .text
	db	0x66, 0xB8
L122:
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
	push	eax
	db	0x9A
section .relot
	dd	L123
section .text
L123:
	dd	_pointer
	sub	sp, -8
	push	eax
section .relod
	dd	L124
section .text
	db	0x66, 0xB8
L124:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	db	0x9A
section .relot
	dd	L125
section .text
L125:
	dd	_strcmp
	sub	sp, -8
	cmp	eax, 0
	jne	L118
; {
; RPN'ized expression: "enc TRUE = "
; Expanded expression: "(@-12) 1 =(4) "
; Fused expression:    "=(204) *(@-12) 1 "
	mov	eax, 1
	mov	[bp-12], eax
; break
	jmp	L116
; }
L118:
; RPN'ized expression: "rindx c2cPFR DROcupados + *u &u e -> *u rindx + *u &u sig -> *u = "
; Expanded expression: "(@-8) c2cPFR 176 + 12 + *(4) (@-8) *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "c2cPFR + ax 176 + ax 12 push-ax * *(@-8) 12 + **sp ax + ax 0 =(204) *(@-8) *ax "
section .relod
	dd	L126
section .text
	db	0x66, 0xB8
L126:
	dd	_c2cPFR
	add	eax, 176
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
	jmp	L115
L116:
; if
; RPN'ized expression: "enc 0 == "
; Expanded expression: "(@-12) *(4) 0 == "
; Fused expression:    "== *(@-12) 0 IF! "
	mov	eax, [bp-12]
	cmp	eax, 0
	jne	L127
; RPN'ized expression: "res 1 -u = "
; Expanded expression: "(@-16) -1 =(4) "
; Fused expression:    "=(204) *(@-16) -1 "
	mov	eax, -1
	mov	[bp-16], eax
	jmp	L128
L127:
; else
; {
; loc                 <something> : * (
; prm                     arg : * void
;                     ) int
; RPN'ized expression: "cb ( tramaThread tw -> *u &u DX -> *u , tramaThread tw -> *u &u ES -> *u pointer ) (something129) = "
; Expanded expression: "(@-4)  tramaThread *(4) 0 + 24 + *(2)  tramaThread *(4) 0 + 2 + *(2)  pointer ()8 =(4) "
; Fused expression:    "( tramaThread + *ax 0 + ax 24 *(2) ax , tramaThread + *ax 0 + ax 2 *(2) ax , pointer )8 =(204) *(@-4) ax "
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
	dd	L131
section .text
	db	0x66, 0xB8
L131:
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
	dd	L132
section .text
L132:
	dd	_pointer
	sub	sp, -8
	mov	[bp-4], eax
; switch
; RPN'ized expression: "tramaThread tb -> *u &u AL -> *u "
; Expanded expression: "tramaThread *(4) 0 + 32 + *(1) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 *(1) ax  "
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
	add	eax, 32
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	jmp	L134
; {
; case
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
L136:
; RPN'ized expression: "res ( descRecurso rindx + *u &u ccb -> *u , cb encolarCcb ) = "
; Expanded expression: "(@-16)  descRecurso (@-8) *(4) 96 * + 16 + *(4)  (@-4) *(4)  encolarCcb ()8 =(4) "
; Fused expression:    "( descRecurso push-ax * *(@-8) 96 + *sp ax + ax 16 *(4) ax , *(4) (@-4) , encolarCcb )8 =(204) *(@-16) ax "
section .relod
	dd	L137
section .text
	db	0x66, 0xB8
L137:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 16
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	push	dword [bp-4]
	db	0x9A
section .relot
	dd	L138
section .text
L138:
	dd	_encolarCcb
	sub	sp, -8
	mov	[bp-16], eax
; break
	jmp	L133
; case
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
L139:
; RPN'ized expression: "res ( descRecurso rindx + *u &u ccb -> *u , cb eliminarCcb ) = "
; Expanded expression: "(@-16)  descRecurso (@-8) *(4) 96 * + 16 + *(4)  (@-4) *(4)  eliminarCcb ()8 =(4) "
; Fused expression:    "( descRecurso push-ax * *(@-8) 96 + *sp ax + ax 16 *(4) ax , *(4) (@-4) , eliminarCcb )8 =(204) *(@-16) ax "
section .relod
	dd	L140
section .text
	db	0x66, 0xB8
L140:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 16
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	push	dword [si]
	push	dword [bp-4]
	db	0x9A
section .relot
	dd	L141
section .text
L141:
	dd	_eliminarCcb
	sub	sp, -8
	mov	[bp-16], eax
; break
	jmp	L133
; }
	jmp	L133
L134:
	cmp	eax, 5
	je	L136
	cmp	eax, 6
	je	L139
L133:
; if
; RPN'ized expression: "res 0 < "
; Expanded expression: "(@-16) *(4) 0 < "
; Fused expression:    "< *(@-16) 0 IF! "
	mov	eax, [bp-16]
	cmp	eax, 0
	jge	L142
; RPN'ized expression: "res --p "
; Expanded expression: "(@-16) --p(4) "
; Fused expression:    "--p(4) *(@-16) "
	mov	eax, [bp-16]
	dec	dword [bp-16]
L142:
; }
L128:
; RPN'ized expression: "tramaThread tw -> *u &u AX -> *u res = "
; Expanded expression: "tramaThread *(4) 0 + 32 + (@-16) *(4) =(2) "
; Fused expression:    "tramaThread + *ax 0 + ax 32 =(172) *ax *(@-16) "
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
	jmp	L74
; }
; default
L145:
; }
	jmp	L74
L75:
	cmp	eax, 0
	je	L77
	cmp	eax, 1
	je	L84
	cmp	eax, 2
	je	L92
	cmp	eax, 3
	je	L102
	cmp	eax, 4
	je	L105
	cmp	eax, 5
	je	L112
	cmp	eax, 6
	je	L113
	jmp	L145
L74:
L72:
	db	0x66
	leave
	retf
L146:

section .fxnsz
	dd	L146 - _so1_manejador_03


	extern	_ccbAlEpilogo
	extern	_descCcbAlEpilogo
	extern	_indProcesoActual
	extern	_tramaThread
	extern	_activarAlEpilogo1
	extern	_descProceso
	extern	_descFichero
	extern	_descRecurso
	extern	_c2cPFR
	extern	_e2PFR
	extern	_nivelActivacionSO1H
	extern	_enHalt
	extern	_hayTic
	extern	_SS_Thread
	extern	_SP_Thread
	extern	_SS_Kernel
	extern	_contRodajas
	extern	_contTicsRodaja
	extern	_VIOrg
	extern	__start__text
	extern	_sigThread
	extern	_activarThread
	extern	_buscarNuevoThreadActual
	extern	_bloquearThreadActual
	extern	_crearRec
	extern	_pointer
	extern	_crearFich
	extern	_destruirRec
	extern	_strcmp
	extern	_encolarCcb
	extern	_eliminarCcb

; Syntax/declaration table/stack:
; Bytes used: 10915/40960


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
; Ident VIOrg
; Ident recVInt
; Ident redirigirInt
; Ident nVInt
; Ident isr
; Ident redirigirIntHardware
; Ident irq
; Ident restablecerInt
; Ident inicTVI
; Ident link_ints
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
; Ident inicRecursos
; Ident crearRec
; Ident dR
; Ident crearFich
; Ident destruirFich
; Ident destruirRec
; Ident link_recurs
; Ident _start__text
; Ident _stop__text
; Ident _start__rodata
; Ident _stop__rodata
; Ident _start__data
; Ident _stop__data
; Ident _start__bss
; Ident _stop__bss
; Ident _start_allcode__
; Ident _stop_allcode__
; Ident _start_alldata__
; Ident _stop_alldata__
; Ident mostrarSeccion
; Ident start
; Ident stop
; Ident descripcion
; Ident mostrarSecciones
; Ident cargarDescSO1H
; Ident descSO1H
; Ident so1_manejador_03
; Bytes used: 4642/16384

; Next label number: 147
; Compilation succeeded.
