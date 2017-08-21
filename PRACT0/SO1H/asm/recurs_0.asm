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
; glb inicRecursos : (void) void
section .text
	global	_inicRecursos
_inicRecursos:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         12
; loc     rindx : (@-4): int
; loc     dfs : (@-8): int
; loc     i : (@-12): int
; loc     <something> : * struct <something>
; loc     <something> : * struct <something>
; RPN'ized expression: "( TRUE , 20 , e2PFR &u e2DescFichero -> *u &u Libres -> *u &u (something4) , c2cPFR DFLibres + *u &u (something3) inicializarPC2c ) "
; Expanded expression: " 1  20  e2PFR 24360 + 0 +  c2cPFR 128 +  inicializarPC2c ()16 "
; Fused expression:    "( 1 , 20 , e2PFR + ax 24360 + ax 0 , c2cPFR + ax 128 , inicializarPC2c )16 "
	push	dword 1
	push	dword 20
section .relod
	dd	L5
section .text
	db	0x66, 0xB8
L5:
	dd	_e2PFR
	add	eax, 24360
	push	eax
section .relod
	dd	L6
section .text
	db	0x66, 0xB8
L6:
	dd	_c2cPFR
	add	eax, 128
	push	eax
	db	0x9A
section .relot
	dd	L7
section .text
L7:
	dd	_inicializarPC2c
	sub	sp, -16
; loc     <something> : * struct <something>
; loc     <something> : * struct <something>
; RPN'ized expression: "( TRUE , 20 1 + , e2PFR &u e2DescFichero -> *u &u Ocupados -> *u &u (something9) , c2cPFR DFOcupados + *u &u (something8) inicializarPC2c ) "
; Expanded expression: " 1  21  e2PFR 24360 + 0 +  c2cPFR 144 +  inicializarPC2c ()16 "
; Fused expression:    "( 1 , 21 , e2PFR + ax 24360 + ax 0 , c2cPFR + ax 144 , inicializarPC2c )16 "
	push	dword 1
	push	dword 21
section .relod
	dd	L10
section .text
	db	0x66, 0xB8
L10:
	dd	_e2PFR
	add	eax, 24360
	push	eax
section .relod
	dd	L11
section .text
	db	0x66, 0xB8
L11:
	dd	_c2cPFR
	add	eax, 144
	push	eax
	db	0x9A
section .relot
	dd	L12
section .text
L12:
	dd	_inicializarPC2c
	sub	sp, -16
; loc     <something> : * struct <something>
; loc     <something> : * struct <something>
; RPN'ized expression: "( TRUE , 14 , e2PFR &u e2DescRecurso -> *u &u Libres -> *u &u (something14) , c2cPFR DRLibres + *u &u (something13) inicializarPC2c ) "
; Expanded expression: " 1  14  e2PFR 24624 + 0 +  c2cPFR 160 +  inicializarPC2c ()16 "
; Fused expression:    "( 1 , 14 , e2PFR + ax 24624 + ax 0 , c2cPFR + ax 160 , inicializarPC2c )16 "
	push	dword 1
	push	dword 14
section .relod
	dd	L15
section .text
	db	0x66, 0xB8
L15:
	dd	_e2PFR
	add	eax, 24624
	push	eax
section .relod
	dd	L16
section .text
	db	0x66, 0xB8
L16:
	dd	_c2cPFR
	add	eax, 160
	push	eax
	db	0x9A
section .relot
	dd	L17
section .text
L17:
	dd	_inicializarPC2c
	sub	sp, -16
; loc     <something> : * struct <something>
; loc     <something> : * struct <something>
; RPN'ized expression: "( TRUE , 14 1 + , e2PFR &u e2DescRecurso -> *u &u Ocupados -> *u &u (something19) , c2cPFR DROcupados + *u &u (something18) inicializarPC2c ) "
; Expanded expression: " 1  15  e2PFR 24624 + 0 +  c2cPFR 176 +  inicializarPC2c ()16 "
; Fused expression:    "( 1 , 15 , e2PFR + ax 24624 + ax 0 , c2cPFR + ax 176 , inicializarPC2c )16 "
	push	dword 1
	push	dword 15
section .relod
	dd	L20
section .text
	db	0x66, 0xB8
L20:
	dd	_e2PFR
	add	eax, 24624
	push	eax
section .relod
	dd	L21
section .text
	db	0x66, 0xB8
L21:
	dd	_c2cPFR
	add	eax, 176
	push	eax
	db	0x9A
section .relot
	dd	L22
section .text
L22:
	dd	_inicializarPC2c
	sub	sp, -16
; for
; RPN'ized expression: "rindx 14 1 - = "
; Expanded expression: "(@-4) 13 =(4) "
; Fused expression:    "=(204) *(@-4) 13 "
	mov	eax, 13
	mov	[bp-4], eax
L23:
; RPN'ized expression: "rindx 0 >= "
; Expanded expression: "(@-4) *(4) 0 >= "
; Fused expression:    ">= *(@-4) 0 IF! "
	mov	eax, [bp-4]
	cmp	eax, 0
	jl	L26
; RPN'ized expression: "rindx --p "
; Expanded expression: "(@-4) --p(4) "
; {
; loc         <something> : * struct <something>
; RPN'ized expression: "( c2cPFR DRLibres + *u &u (something27) , rindx apilarPC2c ) "
; Expanded expression: " c2cPFR 160 +  (@-4) *(4)  apilarPC2c ()8 "
; Fused expression:    "( c2cPFR + ax 160 , *(4) (@-4) , apilarPC2c )8 "
section .relod
	dd	L28
section .text
	db	0x66, 0xB8
L28:
	dd	_c2cPFR
	add	eax, 160
	push	eax
	push	dword [bp-4]
	db	0x9A
section .relot
	dd	L29
section .text
L29:
	dd	_apilarPC2c
	sub	sp, -8
; loc         <something> : char
; RPN'ized expression: "descRecurso rindx + *u &u nombre -> *u 0 + *u 0 (something30) = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 0 + 0 =(-1) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 0 =(124) *ax 0 "
section .relod
	dd	L31
section .text
	db	0x66, 0xB8
L31:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movsx	eax, al
; RPN'ized expression: "descRecurso rindx + *u &u tipo -> *u rLibre = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 12 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 12 =(204) *ax 0 "
section .relod
	dd	L32
section .text
	db	0x66, 0xB8
L32:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 12
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc         <something> : * struct <something>
; RPN'ized expression: "descRecurso rindx + *u &u ccb -> *u 0 (something33) = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 16 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 16 =(204) *ax 0 "
section .relod
	dd	L34
section .text
	db	0x66, 0xB8
L34:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
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
; loc         <something> : int
; RPN'ized expression: "descRecurso rindx + *u &u tindx -> *u 1 -u (something35) = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 20 + -1 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 20 =(204) *ax -1 "
section .relod
	dd	L36
section .text
	db	0x66, 0xB8
L36:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 20
	mov	ebx, eax
	mov	eax, -1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc         <something> : * struct <something>
; loc         <something> : * struct <something>
; RPN'ized expression: "( TRUE , 20 rindx + , e2PFR &u e2FichRec -> *u &u (something38) , descRecurso rindx + *u &u c2cFichRec -> *u &u (something37) inicializarPC2c ) "
; Expanded expression: " 1  20 (@-4) *(4) +  e2PFR 122112 +  descRecurso (@-4) *(4) 96 * + 24 +  inicializarPC2c ()16 "
; Fused expression:    "( 1 , + 20 *(@-4) , e2PFR + ax 122112 , descRecurso push-ax * *(@-4) 96 + *sp ax + ax 24 , inicializarPC2c )16 "
	push	dword 1
	mov	eax, 20
	add	eax, [bp-4]
	push	eax
section .relod
	dd	L39
section .text
	db	0x66, 0xB8
L39:
	dd	_e2PFR
	add	eax, 122112
	push	eax
section .relod
	dd	L40
section .text
	db	0x66, 0xB8
L40:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 24
	push	eax
	db	0x9A
section .relot
	dd	L41
section .text
L41:
	dd	_inicializarPC2c
	sub	sp, -16
; RPN'ized expression: "descRecurso rindx + *u &u numVI -> *u 0 = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 40 + 0 =(1) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 40 =(156) *ax 0 "
section .relod
	dd	L42
section .text
	db	0x66, 0xB8
L42:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 40
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-12) 0 =(4) "
; Fused expression:    "=(204) *(@-12) 0 "
	mov	eax, 0
	mov	[bp-12], eax
L43:
; RPN'ized expression: "i 2 < "
; Expanded expression: "(@-12) *(4) 2 < "
; Fused expression:    "< *(@-12) 2 IF! "
	mov	eax, [bp-12]
	cmp	eax, 2
	jge	L46
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-12) ++p(4) "
; {
; RPN'ized expression: "descRecurso rindx + *u &u nVInt -> *u i + *u 0 = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 41 + (@-12) *(4) + 0 =(1) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 41 + ax *(@-12) =(156) *ax 0 "
section .relod
	dd	L47
section .text
	db	0x66, 0xB8
L47:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 41
	add	eax, [bp-12]
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; RPN'ized expression: "descRecurso rindx + *u &u irq -> *u i + *u 0 = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 43 + (@-12) *(4) + 0 =(1) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 43 + ax *(@-12) =(156) *ax 0 "
section .relod
	dd	L48
section .text
	db	0x66, 0xB8
L48:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 43
	add	eax, [bp-12]
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; loc             <something> : * (void) void
; RPN'ized expression: "descRecurso rindx + *u &u isr -> *u i + *u 0 (something49) = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 48 + (@-12) *(4) 4 * + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 48 push-ax * *(@-12) 4 + *sp ax =(204) *ax 0 "
section .relod
	dd	L50
section .text
	db	0x66, 0xB8
L50:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 48
	push	eax
	mov	eax, [bp-12]
	imul	eax, eax, 4
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; }
L44:
; Fused expression:    "++p(4) *(@-12) "
	mov	eax, [bp-12]
	inc	dword [bp-12]
	jmp	L43
L46:
; loc         <something> : * (
; prm             dfs : int
; prm             modo : unsigned short
;             ) int
; RPN'ized expression: "descRecurso rindx + *u &u open -> *u 0 (something51) = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 56 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 56 =(204) *ax 0 "
section .relod
	dd	L52
section .text
	db	0x66, 0xB8
L52:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 56
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc         <something> : * (
; prm             dfs : int
;             ) int
; RPN'ized expression: "descRecurso rindx + *u &u release -> *u 0 (something53) = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 60 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 60 =(204) *ax 0 "
section .relod
	dd	L54
section .text
	db	0x66, 0xB8
L54:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 60
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc         <something> : * (
; prm             dfs : int
; prm             dir : * unsigned char
; prm             nbytes : unsigned short
;             ) int
; RPN'ized expression: "descRecurso rindx + *u &u read -> *u 0 (something55) = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 64 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 64 =(204) *ax 0 "
section .relod
	dd	L56
section .text
	db	0x66, 0xB8
L56:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 64
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc         <something> : * (
; prm             dfs : int
; prm             dir : * unsigned char
; prm             nbytes : unsigned short
;             ) int
; RPN'ized expression: "descRecurso rindx + *u &u aio_read -> *u 0 (something57) = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 68 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 68 =(204) *ax 0 "
section .relod
	dd	L58
section .text
	db	0x66, 0xB8
L58:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 68
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc         <something> : * (
; prm             dfs : int
; prm             dir : * unsigned char
; prm             nbytes : unsigned short
;             ) int
; RPN'ized expression: "descRecurso rindx + *u &u write -> *u 0 (something59) = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 72 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 72 =(204) *ax 0 "
section .relod
	dd	L60
section .text
	db	0x66, 0xB8
L60:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 72
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc         <something> : * (
; prm             dfs : int
; prm             dir : * unsigned char
; prm             nbytes : unsigned short
;             ) int
; RPN'ized expression: "descRecurso rindx + *u &u aio_write -> *u 0 (something61) = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 76 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 76 =(204) *ax 0 "
section .relod
	dd	L62
section .text
	db	0x66, 0xB8
L62:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 76
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc         <something> : * (
; prm             dfs : int
; prm             pos : int
; prm             whence : unsigned short
;             ) int
; RPN'ized expression: "descRecurso rindx + *u &u lseek -> *u 0 (something63) = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 80 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 80 =(204) *ax 0 "
section .relod
	dd	L64
section .text
	db	0x66, 0xB8
L64:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 80
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc         <something> : * (
; prm             dfs : int
; prm             cmd : unsigned short
; prm             arg : unsigned short
;             ) int
; RPN'ized expression: "descRecurso rindx + *u &u fcntl -> *u 0 (something65) = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 84 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 84 =(204) *ax 0 "
section .relod
	dd	L66
section .text
	db	0x66, 0xB8
L66:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 84
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc         <something> : * (
; prm             dfs : int
; prm             request : unsigned short
; prm             arg : unsigned short
;             ) int
; RPN'ized expression: "descRecurso rindx + *u &u ioctl -> *u 0 (something67) = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 88 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 88 =(204) *ax 0 "
section .relod
	dd	L68
section .text
	db	0x66, 0xB8
L68:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 88
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; loc         <something> : * (
; prm             pindx : int
;             ) int
; RPN'ized expression: "descRecurso rindx + *u &u eliminar -> *u 0 (something69) = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 92 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 92 =(204) *ax 0 "
section .relod
	dd	L70
section .text
	db	0x66, 0xB8
L70:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 92
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; }
L24:
; Fused expression:    "--p(4) *(@-4) "
	mov	eax, [bp-4]
	dec	dword [bp-4]
	jmp	L23
L26:
; for
; RPN'ized expression: "dfs 0 = "
; Expanded expression: "(@-8) 0 =(4) "
; Fused expression:    "=(204) *(@-8) 0 "
	mov	eax, 0
	mov	[bp-8], eax
L71:
; RPN'ized expression: "dfs 20 < "
; Expanded expression: "(@-8) *(4) 20 < "
; Fused expression:    "< *(@-8) 20 IF! "
	mov	eax, [bp-8]
	cmp	eax, 20
	jge	L74
; RPN'ized expression: "dfs ++p "
; Expanded expression: "(@-8) ++p(4) "
; {
; loc         <something> : char
; RPN'ized expression: "descFichero dfs + *u &u nombre -> *u 0 + *u 0 (something75) = "
; Expanded expression: "descFichero (@-8) *(4) 36 * + 4 + 0 =(-1) "
; Fused expression:    "descFichero push-ax * *(@-8) 36 + *sp ax + ax 4 =(124) *ax 0 "
section .relod
	dd	L76
section .text
	db	0x66, 0xB8
L76:
	dd	_descFichero
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 36
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 4
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movsx	eax, al
; RPN'ized expression: "descFichero dfs + *u &u tipo -> *u flibre = "
; Expanded expression: "descFichero (@-8) *(4) 36 * + 0 + 0 =(4) "
; Fused expression:    "descFichero push-ax * *(@-8) 36 + *sp ax + ax 0 =(204) *ax 0 "
section .relod
	dd	L77
section .text
	db	0x66, 0xB8
L77:
	dd	_descFichero
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 36
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "descFichero dfs + *u &u rindx -> *u 1 -u = "
; Expanded expression: "descFichero (@-8) *(4) 36 * + 16 + -1 =(4) "
; Fused expression:    "descFichero push-ax * *(@-8) 36 + *sp ax + ax 16 =(204) *ax -1 "
section .relod
	dd	L78
section .text
	db	0x66, 0xB8
L78:
	dd	_descFichero
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 36
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
; RPN'ized expression: "descFichero dfs + *u &u menor -> *u 0 = "
; Expanded expression: "descFichero (@-8) *(4) 36 * + 20 + 0 =(4) "
; Fused expression:    "descFichero push-ax * *(@-8) 36 + *sp ax + ax 20 =(204) *ax 0 "
section .relod
	dd	L79
section .text
	db	0x66, 0xB8
L79:
	dd	_descFichero
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 36
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 20
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "descFichero dfs + *u &u contAp_L -> *u 0 = "
; Expanded expression: "descFichero (@-8) *(4) 36 * + 28 + 0 =(4) "
; Fused expression:    "descFichero push-ax * *(@-8) 36 + *sp ax + ax 28 =(204) *ax 0 "
section .relod
	dd	L80
section .text
	db	0x66, 0xB8
L80:
	dd	_descFichero
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 36
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 28
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "descFichero dfs + *u &u contAp_E -> *u 0 = "
; Expanded expression: "descFichero (@-8) *(4) 36 * + 32 + 0 =(4) "
; Fused expression:    "descFichero push-ax * *(@-8) 36 + *sp ax + ax 32 =(204) *ax 0 "
section .relod
	dd	L81
section .text
	db	0x66, 0xB8
L81:
	dd	_descFichero
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 36
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 32
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "descFichero dfs + *u &u shareMode -> *u 16 = "
; Expanded expression: "descFichero (@-8) *(4) 36 * + 24 + 16 =(2) "
; Fused expression:    "descFichero push-ax * *(@-8) 36 + *sp ax + ax 24 =(172) *ax 16 "
section .relod
	dd	L82
section .text
	db	0x66, 0xB8
L82:
	dd	_descFichero
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 36
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 24
	mov	ebx, eax
	mov	eax, 16
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; }
L72:
; Fused expression:    "++p(4) *(@-8) "
	mov	eax, [bp-8]
	inc	dword [bp-8]
	jmp	L71
L74:
; for
; RPN'ized expression: "dfs 20 1 - = "
; Expanded expression: "(@-8) 19 =(4) "
; Fused expression:    "=(204) *(@-8) 19 "
	mov	eax, 19
	mov	[bp-8], eax
L83:
; RPN'ized expression: "dfs 0 >= "
; Expanded expression: "(@-8) *(4) 0 >= "
; Fused expression:    ">= *(@-8) 0 IF! "
	mov	eax, [bp-8]
	cmp	eax, 0
	jl	L86
; RPN'ized expression: "dfs --p "
; Expanded expression: "(@-8) --p(4) "
; loc     <something> : * struct <something>
; RPN'ized expression: "( c2cPFR DFLibres + *u &u (something87) , dfs apilarPC2c ) "
; Expanded expression: " c2cPFR 128 +  (@-8) *(4)  apilarPC2c ()8 "
; Fused expression:    "( c2cPFR + ax 128 , *(4) (@-8) , apilarPC2c )8 "
section .relod
	dd	L88
section .text
	db	0x66, 0xB8
L88:
	dd	_c2cPFR
	add	eax, 128
	push	eax
	push	dword [bp-8]
	db	0x9A
section .relot
	dd	L89
section .text
L89:
	dd	_apilarPC2c
	sub	sp, -8
L84:
; Fused expression:    "--p(4) *(@-8) "
	mov	eax, [bp-8]
	dec	dword [bp-8]
	jmp	L83
L86:
L1:
	db	0x66
	leave
	retf
L90:

section .fxnsz noalloc
	dd	L90 - _inicRecursos


	extern	_e2PFR
	extern	_c2cPFR
	extern	_inicializarPC2c
	extern	_apilarPC2c
	extern	_descRecurso
	extern	_descFichero

; Syntax/declaration table/stack:
; Bytes used: 9920/40960


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
; Ident inicRecursos
; Ident crearRec
; Ident dR
; Ident crearFich
; Ident destruirFich
; Ident destruirRec
; Ident link_recurs
; Bytes used: 3984/16384

; Next label number: 91
; Compilation succeeded.
