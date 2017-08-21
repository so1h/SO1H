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
 section .text           
   global _link_recurs_k 
 _link_recurs_k:         

; glb crearRec : (
; prm     dR : * struct <something>
;     ) int
section .text
	global	_crearRec
_crearRec:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         20
; loc     dR : (@8): * struct <something>
; loc     rindx : (@-4): int
; loc     nVInt : (@-8): unsigned char
; loc     irq : (@-12): unsigned char
; loc     isr : (@-16): * (void) void
; loc     i : (@-20): int
; if
; RPN'ized expression: "dR tipo -> *u rLibre <= dR tipo -> *u rOtro > || "
; Expanded expression: "(@8) *(4) 12 + *(4) 0 <= [sh||->5] (@8) *(4) 12 + *(4) 7 > ||[5] "
; Fused expression:    "+ *(@8) 12 <= *ax 0 [sh||->5] + *(@8) 12 > *ax 7 ||[5]  "
	mov	eax, [bp+8]
	add	eax, 12
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 0
	setle	al
	movzx	eax, al
; JumpIfNotZero
	test	eax, eax
	jne	L5
	mov	eax, [bp+8]
	add	eax, 12
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 7
	setg	al
	movzx	eax, al
L5:
; JumpIfZero
	test	eax, eax
	je	L3
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1  "
	mov	eax, -1
	jmp	L1
L3:
; if
; RPN'ized expression: "dR numVI -> *u 2 > "
; Expanded expression: "(@8) *(4) 40 + *(1) 2 > "
; Fused expression:    "+ *(@8) 40 > *ax 2 IF! "
	mov	eax, [bp+8]
	add	eax, 40
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	cmp	eax, 2
	jle	L6
; return
; RPN'ized expression: "2 -u "
; Expanded expression: "-2 "
; Expression value: -2
; Fused expression:    "-2  "
	mov	eax, -2
	jmp	L1
L6:
; RPN'ized expression: "rindx c2cPFR DROcupados + *u &u primero -> *u = "
; Expanded expression: "(@-4) c2cPFR 176 + 4 + *(4) =(4) "
; Fused expression:    "c2cPFR + ax 176 + ax 4 =(204) *(@-4) *ax "
section .relod
	dd	L8
section .text
	db	0x66, 0xB8
L8:
	dd	_c2cPFR
	add	eax, 176
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-4], eax
; while
; RPN'ized expression: "rindx c2cPFR DROcupados + *u &u cabecera -> *u != "
; Expanded expression: "(@-4) *(4) c2cPFR 176 + 8 + *(4) != "
L9:
; Fused expression:    "c2cPFR + ax 176 + ax 8 != *(@-4) *ax IF! "
section .relod
	dd	L11
section .text
	db	0x66, 0xB8
L11:
	dd	_c2cPFR
	add	eax, 176
	add	eax, 8
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp-4]
	cmp	eax, ecx
	je	L10
; {
; if
; RPN'ized expression: "( dR nombre -> *u , descRecurso rindx + *u &u nombre -> *u strcmp ) 0 == "
; Expanded expression: " (@8) *(4) 0 +  descRecurso (@-4) *(4) 96 * + 0 +  strcmp ()8 0 == "
; Fused expression:    "( + *(@8) 0 , descRecurso push-ax * *(@-4) 96 + *sp ax + ax 0 , strcmp )8 == ax 0 IF! "
	mov	eax, [bp+8]
	push	eax
section .relod
	dd	L14
section .text
	db	0x66, 0xB8
L14:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	db	0x9A
section .relot
	dd	L15
section .text
L15:
	dd	_strcmp
	sub	sp, -8
	cmp	eax, 0
	jne	L12
; return
; RPN'ized expression: "3 -u "
; Expanded expression: "-3 "
; Expression value: -3
; Fused expression:    "-3  "
	mov	eax, -3
	jmp	L1
L12:
; RPN'ized expression: "rindx c2cPFR DROcupados + *u &u e -> *u rindx + *u &u sig -> *u = "
; Expanded expression: "(@-4) c2cPFR 176 + 12 + *(4) (@-4) *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "c2cPFR + ax 176 + ax 12 push-ax * *(@-4) 12 + **sp ax + ax 0 =(204) *(@-4) *ax "
section .relod
	dd	L16
section .text
	db	0x66, 0xB8
L16:
	dd	_c2cPFR
	add	eax, 176
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
	jmp	L9
L10:
; if
; RPN'ized expression: "c2cPFR DRLibres + *u &u numElem -> *u 0 == "
; Expanded expression: "c2cPFR 160 + 0 + *(4) 0 == "
; Fused expression:    "c2cPFR + ax 160 + ax 0 == *ax 0 IF! "
section .relod
	dd	L19
section .text
	db	0x66, 0xB8
L19:
	dd	_c2cPFR
	add	eax, 160
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 0
	jne	L17
; return
; RPN'ized expression: "4 -u "
; Expanded expression: "-4 "
; Expression value: -4
; Fused expression:    "-4  "
	mov	eax, -4
	jmp	L1
L17:
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-20) 0 =(4) "
; Fused expression:    "=(204) *(@-20) 0 "
	mov	eax, 0
	mov	[bp-20], eax
L20:
; RPN'ized expression: "i dR numVI -> *u < "
; Expanded expression: "(@-20) *(4) (@8) *(4) 40 + *(1) < "
; Fused expression:    "+ *(@8) 40 < *(@-20) *ax IF! "
	mov	eax, [bp+8]
	add	eax, 40
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	movzx	ecx, byte [si]
	mov	eax, [bp-20]
	cmp	eax, ecx
	jge	L23
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-20) ++p(4) "
; if
; RPN'ized expression: "recVInt dR nVInt -> *u i + *u + *u 0 >= "
; Expanded expression: "recVInt (@8) *(4) 41 + (@-20) *(4) + *(1) 4 * + *(4) 0 >= "
; Fused expression:    "recVInt push-ax + *(@8) 41 + ax *(@-20) * *ax 4 + *sp ax >= *ax 0 IF! "
section .relod
	dd	L26
section .text
	db	0x66, 0xB8
L26:
	dd	_recVInt
	push	eax
	mov	eax, [bp+8]
	add	eax, 41
	add	eax, [bp-20]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	imul	eax, eax, 4
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 0
	jl	L24
; return
; RPN'ized expression: "5 -u "
; Expanded expression: "-5 "
; Expression value: -5
; Fused expression:    "-5  "
	mov	eax, -5
	jmp	L1
L24:
L21:
; Fused expression:    "++p(4) *(@-20) "
	mov	eax, [bp-20]
	inc	dword [bp-20]
	jmp	L20
L23:
; loc     <something> : * struct <something>
; RPN'ized expression: "rindx ( c2cPFR DRLibres + *u &u (something27) desencolarPC2c ) = "
; Expanded expression: "(@-4)  c2cPFR 160 +  desencolarPC2c ()4 =(4) "
; Fused expression:    "( c2cPFR + ax 160 , desencolarPC2c )4 =(204) *(@-4) ax "
section .relod
	dd	L28
section .text
	db	0x66, 0xB8
L28:
	dd	_c2cPFR
	add	eax, 160
	push	eax
	db	0x9A
section .relot
	dd	L29
section .text
L29:
	dd	_desencolarPC2c
	sub	sp, -4
	mov	[bp-4], eax
; loc     <something> : * struct <something>
; RPN'ized expression: "( c2cPFR DROcupados + *u &u (something30) , rindx apilarPC2c ) "
; Expanded expression: " c2cPFR 176 +  (@-4) *(4)  apilarPC2c ()8 "
; Fused expression:    "( c2cPFR + ax 176 , *(4) (@-4) , apilarPC2c )8 "
section .relod
	dd	L31
section .text
	db	0x66, 0xB8
L31:
	dd	_c2cPFR
	add	eax, 176
	push	eax
	push	dword [bp-4]
	db	0x9A
section .relot
	dd	L32
section .text
L32:
	dd	_apilarPC2c
	sub	sp, -8
; RPN'ized expression: "descRecurso rindx + *u &u tipo -> *u dR tipo -> *u = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 12 + (@8) *(4) 12 + *(4) =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 12 push-ax + *(@8) 12 =(204) **sp *ax "
section .relod
	dd	L33
section .text
	db	0x66, 0xB8
L33:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 12
	push	eax
	mov	eax, [bp+8]
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
; RPN'ized expression: "( dR nombre -> *u , descRecurso rindx + *u &u nombre -> *u strcpy ) "
; Expanded expression: " (@8) *(4) 0 +  descRecurso (@-4) *(4) 96 * + 0 +  strcpy ()8 "
; Fused expression:    "( + *(@8) 0 , descRecurso push-ax * *(@-4) 96 + *sp ax + ax 0 , strcpy )8 "
	mov	eax, [bp+8]
	push	eax
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
	push	eax
	db	0x9A
section .relot
	dd	L35
section .text
L35:
	dd	_strcpy
	sub	sp, -8
; RPN'ized expression: "descRecurso rindx + *u &u ccb -> *u dR ccb -> *u = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 16 + (@8) *(4) 16 + *(4) =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 16 push-ax + *(@8) 16 =(204) **sp *ax "
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
	add	eax, 16
	push	eax
	mov	eax, [bp+8]
	add	eax, 16
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
; RPN'ized expression: "descRecurso rindx + *u &u tindx -> *u dR tindx -> *u = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 20 + (@8) *(4) 20 + *(4) =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 20 push-ax + *(@8) 20 =(204) **sp *ax "
section .relod
	dd	L37
section .text
	db	0x66, 0xB8
L37:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 20
	push	eax
	mov	eax, [bp+8]
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
; loc     <something> : * struct <something>
; loc     <something> : * struct <something>
; RPN'ized expression: "( TRUE , 20 rindx + , e2PFR &u e2FichRec -> *u &u (something39) , descRecurso rindx + *u &u c2cFichRec -> *u &u (something38) inicializarPC2c ) "
; Expanded expression: " 1  20 (@-4) *(4) +  e2PFR 122112 +  descRecurso (@-4) *(4) 96 * + 24 +  inicializarPC2c ()16 "
; Fused expression:    "( 1 , + 20 *(@-4) , e2PFR + ax 122112 , descRecurso push-ax * *(@-4) 96 + *sp ax + ax 24 , inicializarPC2c )16 "
	push	dword 1
	mov	eax, 20
	add	eax, [bp-4]
	push	eax
section .relod
	dd	L40
section .text
	db	0x66, 0xB8
L40:
	dd	_e2PFR
	add	eax, 122112
	push	eax
section .relod
	dd	L41
section .text
	db	0x66, 0xB8
L41:
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
	dd	L42
section .text
L42:
	dd	_inicializarPC2c
	sub	sp, -16
; RPN'ized expression: "descRecurso rindx + *u &u numVI -> *u dR numVI -> *u = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 40 + (@8) *(4) 40 + *(1) =(1) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 40 push-ax + *(@8) 40 =(153) **sp *ax "
section .relod
	dd	L43
section .text
	db	0x66, 0xB8
L43:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 40
	push	eax
	mov	eax, [bp+8]
	add	eax, 40
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
	movzx	eax, al
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-20) 0 =(4) "
; Fused expression:    "=(204) *(@-20) 0 "
	mov	eax, 0
	mov	[bp-20], eax
L44:
; RPN'ized expression: "i dR numVI -> *u < "
; Expanded expression: "(@-20) *(4) (@8) *(4) 40 + *(1) < "
; Fused expression:    "+ *(@8) 40 < *(@-20) *ax IF! "
	mov	eax, [bp+8]
	add	eax, 40
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	movzx	ecx, byte [si]
	mov	eax, [bp-20]
	cmp	eax, ecx
	jge	L47
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-20) ++p(4) "
; {
; RPN'ized expression: "nVInt dR nVInt -> *u i + *u = "
; Expanded expression: "(@-8) (@8) *(4) 41 + (@-20) *(4) + *(1) =(1) "
; Fused expression:    "+ *(@8) 41 + ax *(@-20) =(153) *(@-8) *ax "
	mov	eax, [bp+8]
	add	eax, 41
	add	eax, [bp-20]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	mov	[bp-8], al
	movzx	eax, al
; RPN'ized expression: "irq dR irq -> *u i + *u = "
; Expanded expression: "(@-12) (@8) *(4) 43 + (@-20) *(4) + *(1) =(1) "
; Fused expression:    "+ *(@8) 43 + ax *(@-20) =(153) *(@-12) *ax "
	mov	eax, [bp+8]
	add	eax, 43
	add	eax, [bp-20]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	mov	[bp-12], al
	movzx	eax, al
; RPN'ized expression: "isr dR isr -> *u i + *u = "
; Expanded expression: "(@-16) (@8) *(4) 48 + (@-20) *(4) 4 * + *(4) =(4) "
; Fused expression:    "+ *(@8) 48 push-ax * *(@-20) 4 + *sp ax =(204) *(@-16) *ax "
	mov	eax, [bp+8]
	add	eax, 48
	push	eax
	mov	eax, [bp-20]
	imul	eax, eax, 4
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-16], eax
; RPN'ized expression: "descRecurso rindx + *u &u nVInt -> *u i + *u nVInt = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 41 + (@-20) *(4) + (@-8) *(1) =(1) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 41 + ax *(@-20) =(153) *ax *(@-8) "
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
	add	eax, 41
	add	eax, [bp-20]
	mov	ebx, eax
	mov	al, [bp-8]
	movzx	eax, al
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; RPN'ized expression: "descRecurso rindx + *u &u irq -> *u i + *u irq = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 43 + (@-20) *(4) + (@-12) *(1) =(1) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 43 + ax *(@-20) =(153) *ax *(@-12) "
section .relod
	dd	L49
section .text
	db	0x66, 0xB8
L49:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 43
	add	eax, [bp-20]
	mov	ebx, eax
	mov	al, [bp-12]
	movzx	eax, al
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; RPN'ized expression: "descRecurso rindx + *u &u isr -> *u i + *u isr = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 48 + (@-20) *(4) 4 * + (@-16) *(4) =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 48 push-ax * *(@-20) 4 + *sp ax =(204) *ax *(@-16) "
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
	mov	eax, [bp-20]
	imul	eax, eax, 4
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	eax, [bp-16]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; if
; RPN'ized expression: "irq 16 < "
; Expanded expression: "(@-12) *(1) 16 < "
; Fused expression:    "< *(@-12) 16 IF! "
	mov	al, [bp-12]
	movzx	eax, al
	cmp	eax, 16
	jge	L51
; RPN'ized expression: "( isr , irq redirigirIntHardware ) "
; Expanded expression: " (@-16) *(4)  (@-12) *(1)  redirigirIntHardware ()8 "
; Fused expression:    "( *(4) (@-16) , *(1) (@-12) , redirigirIntHardware )8 "
	push	dword [bp-16]
	mov	al, [bp-12]
	movzx	eax, al
	push	eax
	db	0x9A
section .relot
	dd	L53
section .text
L53:
	dd	_redirigirIntHardware
	sub	sp, -8
	jmp	L52
L51:
; else
; RPN'ized expression: "( isr , nVInt redirigirInt ) "
; Expanded expression: " (@-16) *(4)  (@-8) *(1)  redirigirInt ()8 "
; Fused expression:    "( *(4) (@-16) , *(1) (@-8) , redirigirInt )8 "
	push	dword [bp-16]
	mov	al, [bp-8]
	movzx	eax, al
	push	eax
	db	0x9A
section .relot
	dd	L54
section .text
L54:
	dd	_redirigirInt
	sub	sp, -8
L52:
; RPN'ized expression: "recVInt nVInt + *u rindx = "
; Expanded expression: "recVInt (@-8) *(1) 4 * + (@-4) *(4) =(4) "
; Fused expression:    "recVInt push-ax * *(@-8) 4 + *sp ax =(204) *ax *(@-4) "
section .relod
	dd	L55
section .text
	db	0x66, 0xB8
L55:
	dd	_recVInt
	push	eax
	mov	al, [bp-8]
	movzx	eax, al
	imul	eax, eax, 4
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	eax, [bp-4]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; }
L45:
; Fused expression:    "++p(4) *(@-20) "
	mov	eax, [bp-20]
	inc	dword [bp-20]
	jmp	L44
L47:
; RPN'ized expression: "descRecurso rindx + *u &u open -> *u dR open -> *u = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 56 + (@8) *(4) 56 + *(4) =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 56 push-ax + *(@8) 56 =(204) **sp *ax "
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
	add	eax, 56
	push	eax
	mov	eax, [bp+8]
	add	eax, 56
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
; RPN'ized expression: "descRecurso rindx + *u &u release -> *u dR release -> *u = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 60 + (@8) *(4) 60 + *(4) =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 60 push-ax + *(@8) 60 =(204) **sp *ax "
section .relod
	dd	L57
section .text
	db	0x66, 0xB8
L57:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 60
	push	eax
	mov	eax, [bp+8]
	add	eax, 60
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
; RPN'ized expression: "descRecurso rindx + *u &u read -> *u dR read -> *u = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 64 + (@8) *(4) 64 + *(4) =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 64 push-ax + *(@8) 64 =(204) **sp *ax "
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
	add	eax, 64
	push	eax
	mov	eax, [bp+8]
	add	eax, 64
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
; RPN'ized expression: "descRecurso rindx + *u &u aio_read -> *u dR aio_read -> *u = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 68 + (@8) *(4) 68 + *(4) =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 68 push-ax + *(@8) 68 =(204) **sp *ax "
section .relod
	dd	L59
section .text
	db	0x66, 0xB8
L59:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 68
	push	eax
	mov	eax, [bp+8]
	add	eax, 68
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
; RPN'ized expression: "descRecurso rindx + *u &u write -> *u dR write -> *u = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 72 + (@8) *(4) 72 + *(4) =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 72 push-ax + *(@8) 72 =(204) **sp *ax "
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
	push	eax
	mov	eax, [bp+8]
	add	eax, 72
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
; RPN'ized expression: "descRecurso rindx + *u &u aio_write -> *u dR aio_write -> *u = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 76 + (@8) *(4) 76 + *(4) =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 76 push-ax + *(@8) 76 =(204) **sp *ax "
section .relod
	dd	L61
section .text
	db	0x66, 0xB8
L61:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 76
	push	eax
	mov	eax, [bp+8]
	add	eax, 76
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
; RPN'ized expression: "descRecurso rindx + *u &u lseek -> *u dR lseek -> *u = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 80 + (@8) *(4) 80 + *(4) =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 80 push-ax + *(@8) 80 =(204) **sp *ax "
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
	add	eax, 80
	push	eax
	mov	eax, [bp+8]
	add	eax, 80
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
; RPN'ized expression: "descRecurso rindx + *u &u fcntl -> *u dR fcntl -> *u = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 84 + (@8) *(4) 84 + *(4) =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 84 push-ax + *(@8) 84 =(204) **sp *ax "
section .relod
	dd	L63
section .text
	db	0x66, 0xB8
L63:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 84
	push	eax
	mov	eax, [bp+8]
	add	eax, 84
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
; RPN'ized expression: "descRecurso rindx + *u &u ioctl -> *u dR ioctl -> *u = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 88 + (@8) *(4) 88 + *(4) =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 88 push-ax + *(@8) 88 =(204) **sp *ax "
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
	add	eax, 88
	push	eax
	mov	eax, [bp+8]
	add	eax, 88
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
; RPN'ized expression: "descRecurso rindx + *u &u eliminar -> *u dR eliminar -> *u = "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 92 + (@8) *(4) 92 + *(4) =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 92 push-ax + *(@8) 92 =(204) **sp *ax "
section .relod
	dd	L65
section .text
	db	0x66, 0xB8
L65:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 92
	push	eax
	mov	eax, [bp+8]
	add	eax, 92
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
; return
; RPN'ized expression: "rindx "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
L1:
	db	0x66
	leave
	retf
L66:

section .fxnsz noalloc
	dd	L66 - _crearRec

; glb crearFich : (
; prm     nombre : * char
; prm     rindx : int
; prm     menor : unsigned short
; prm     tipo : int
;     ) int
section .text
	global	_crearFich
_crearFich:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          4
; loc     nombre : (@8): * char
; loc     rindx : (@12): int
; loc     menor : (@16): unsigned short
; loc     tipo : (@20): int
; loc     dfs : (@-4): int
; if
; RPN'ized expression: "tipo flibre == "
; Expanded expression: "(@20) *(4) 0 == "
; Fused expression:    "== *(@20) 0 IF! "
	mov	eax, [bp+20]
	cmp	eax, 0
	jne	L69
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1  "
	mov	eax, -1
	jmp	L67
L69:
; if
; RPN'ized expression: "rindx 0 < rindx 14 < && "
; Expanded expression: "(@12) *(4) 0 < [sh&&->73] (@12) *(4) 14 < &&[73] "
; Fused expression:    "< *(@12) 0 [sh&&->73] < *(@12) 14 &&[73]  "
	mov	eax, [bp+12]
	cmp	eax, 0
	setl	al
	movzx	eax, al
; JumpIfZero
	test	eax, eax
	je	L73
	mov	eax, [bp+12]
	cmp	eax, 14
	setl	al
	movzx	eax, al
L73:
; JumpIfZero
	test	eax, eax
	je	L71
; return
; RPN'ized expression: "2 -u "
; Expanded expression: "-2 "
; Expression value: -2
; Fused expression:    "-2  "
	mov	eax, -2
	jmp	L67
L71:
; RPN'ized expression: "dfs c2cPFR DFOcupados + *u &u primero -> *u = "
; Expanded expression: "(@-4) c2cPFR 144 + 4 + *(4) =(4) "
; Fused expression:    "c2cPFR + ax 144 + ax 4 =(204) *(@-4) *ax "
section .relod
	dd	L74
section .text
	db	0x66, 0xB8
L74:
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
L75:
; Fused expression:    "c2cPFR + ax 144 + ax 8 != *(@-4) *ax IF! "
section .relod
	dd	L77
section .text
	db	0x66, 0xB8
L77:
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
	je	L76
; {
; if
; RPN'ized expression: "( nombre , descFichero dfs + *u &u nombre -> *u strcmp ) 0 == "
; Expanded expression: " (@8) *(4)  descFichero (@-4) *(4) 36 * + 4 +  strcmp ()8 0 == "
; Fused expression:    "( *(4) (@8) , descFichero push-ax * *(@-4) 36 + *sp ax + ax 4 , strcmp )8 == ax 0 IF! "
	push	dword [bp+8]
section .relod
	dd	L80
section .text
	db	0x66, 0xB8
L80:
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
	dd	L81
section .text
L81:
	dd	_strcmp
	sub	sp, -8
	cmp	eax, 0
	jne	L78
; return
; RPN'ized expression: "3 -u "
; Expanded expression: "-3 "
; Expression value: -3
; Fused expression:    "-3  "
	mov	eax, -3
	jmp	L67
L78:
; RPN'ized expression: "dfs c2cPFR DFOcupados + *u &u e -> *u dfs + *u &u sig -> *u = "
; Expanded expression: "(@-4) c2cPFR 144 + 12 + *(4) (@-4) *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "c2cPFR + ax 144 + ax 12 push-ax * *(@-4) 12 + **sp ax + ax 0 =(204) *(@-4) *ax "
section .relod
	dd	L82
section .text
	db	0x66, 0xB8
L82:
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
	jmp	L75
L76:
; if
; RPN'ized expression: "c2cPFR DFLibres + *u &u numElem -> *u 0 == "
; Expanded expression: "c2cPFR 128 + 0 + *(4) 0 == "
; Fused expression:    "c2cPFR + ax 128 + ax 0 == *ax 0 IF! "
section .relod
	dd	L85
section .text
	db	0x66, 0xB8
L85:
	dd	_c2cPFR
	add	eax, 128
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 0
	jne	L83
; return
; RPN'ized expression: "4 -u "
; Expanded expression: "-4 "
; Expression value: -4
; Fused expression:    "-4  "
	mov	eax, -4
	jmp	L67
L83:
; loc     <something> : * struct <something>
; RPN'ized expression: "dfs ( c2cPFR DFLibres + *u &u (something86) desencolarPC2c ) = "
; Expanded expression: "(@-4)  c2cPFR 128 +  desencolarPC2c ()4 =(4) "
; Fused expression:    "( c2cPFR + ax 128 , desencolarPC2c )4 =(204) *(@-4) ax "
section .relod
	dd	L87
section .text
	db	0x66, 0xB8
L87:
	dd	_c2cPFR
	add	eax, 128
	push	eax
	db	0x9A
section .relot
	dd	L88
section .text
L88:
	dd	_desencolarPC2c
	sub	sp, -4
	mov	[bp-4], eax
; loc     <something> : * struct <something>
; RPN'ized expression: "( c2cPFR DFOcupados + *u &u (something89) , dfs apilarPC2c ) "
; Expanded expression: " c2cPFR 144 +  (@-4) *(4)  apilarPC2c ()8 "
; Fused expression:    "( c2cPFR + ax 144 , *(4) (@-4) , apilarPC2c )8 "
section .relod
	dd	L90
section .text
	db	0x66, 0xB8
L90:
	dd	_c2cPFR
	add	eax, 144
	push	eax
	push	dword [bp-4]
	db	0x9A
section .relot
	dd	L91
section .text
L91:
	dd	_apilarPC2c
	sub	sp, -8
; loc     <something> : * struct <something>
; RPN'ized expression: "( descRecurso rindx + *u &u c2cFichRec -> *u &u (something92) , dfs apilarPC2c ) "
; Expanded expression: " descRecurso (@12) *(4) 96 * + 24 +  (@-4) *(4)  apilarPC2c ()8 "
; Fused expression:    "( descRecurso push-ax * *(@12) 96 + *sp ax + ax 24 , *(4) (@-4) , apilarPC2c )8 "
section .relod
	dd	L93
section .text
	db	0x66, 0xB8
L93:
	dd	_descRecurso
	push	eax
	mov	eax, [bp+12]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 24
	push	eax
	push	dword [bp-4]
	db	0x9A
section .relot
	dd	L94
section .text
L94:
	dd	_apilarPC2c
	sub	sp, -8
; RPN'ized expression: "( nombre , descFichero dfs + *u &u nombre -> *u strcpy ) "
; Expanded expression: " (@8) *(4)  descFichero (@-4) *(4) 36 * + 4 +  strcpy ()8 "
; Fused expression:    "( *(4) (@8) , descFichero push-ax * *(@-4) 36 + *sp ax + ax 4 , strcpy )8 "
	push	dword [bp+8]
section .relod
	dd	L95
section .text
	db	0x66, 0xB8
L95:
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
	dd	L96
section .text
L96:
	dd	_strcpy
	sub	sp, -8
; RPN'ized expression: "descFichero dfs + *u &u rindx -> *u rindx = "
; Expanded expression: "descFichero (@-4) *(4) 36 * + 16 + (@12) *(4) =(4) "
; Fused expression:    "descFichero push-ax * *(@-4) 36 + *sp ax + ax 16 =(204) *ax *(@12) "
section .relod
	dd	L97
section .text
	db	0x66, 0xB8
L97:
	dd	_descFichero
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 36
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 16
	mov	ebx, eax
	mov	eax, [bp+12]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "descFichero dfs + *u &u menor -> *u menor = "
; Expanded expression: "descFichero (@-4) *(4) 36 * + 20 + (@16) *(2) =(4) "
; Fused expression:    "descFichero push-ax * *(@-4) 36 + *sp ax + ax 20 =(202) *ax *(@16) "
section .relod
	dd	L98
section .text
	db	0x66, 0xB8
L98:
	dd	_descFichero
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 36
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 20
	mov	ebx, eax
	mov	ax, [bp+16]
	movzx	eax, ax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "descFichero dfs + *u &u tipo -> *u tipo = "
; Expanded expression: "descFichero (@-4) *(4) 36 * + 0 + (@20) *(4) =(4) "
; Fused expression:    "descFichero push-ax * *(@-4) 36 + *sp ax + ax 0 =(204) *ax *(@20) "
section .relod
	dd	L99
section .text
	db	0x66, 0xB8
L99:
	dd	_descFichero
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 36
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	eax, [bp+20]
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; return
; RPN'ized expression: "dfs "
; Expanded expression: "(@-4) *(4) "
; Fused expression:    "*(4) (@-4)  "
	mov	eax, [bp-4]
L67:
	db	0x66
	leave
	retf
L100:

section .fxnsz
	dd	L100 - _crearFich

; glb destruirFich : (
; prm     dfs : int
;     ) int
section .text
	global	_destruirFich
_destruirFich:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          8
; loc     dfs : (@8): int
; loc     rindx : (@-4): int
; loc     i : (@-8): int
; if
; RPN'ized expression: "dfs 0 < dfs 20 >= || "
; Expanded expression: "(@8) *(4) 0 < [sh||->105] (@8) *(4) 20 >= ||[105] "
; Fused expression:    "< *(@8) 0 [sh||->105] >= *(@8) 20 ||[105]  "
	mov	eax, [bp+8]
	cmp	eax, 0
	setl	al
	movzx	eax, al
; JumpIfNotZero
	test	eax, eax
	jne	L105
	mov	eax, [bp+8]
	cmp	eax, 20
	setge	al
	movzx	eax, al
L105:
; JumpIfZero
	test	eax, eax
	je	L103
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1  "
	mov	eax, -1
	jmp	L101
L103:
; RPN'ized expression: "rindx descFichero dfs + *u &u rindx -> *u = "
; Expanded expression: "(@-4) descFichero (@8) *(4) 36 * + 16 + *(4) =(4) "
; Fused expression:    "descFichero push-ax * *(@8) 36 + *sp ax + ax 16 =(204) *(@-4) *ax "
section .relod
	dd	L106
section .text
	db	0x66, 0xB8
L106:
	dd	_descFichero
	push	eax
	mov	eax, [bp+8]
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
	mov	[bp-4], eax
; RPN'ized expression: "i descRecurso rindx + *u &u c2cFichRec -> *u &u primero -> *u = "
; Expanded expression: "(@-8) descRecurso (@-4) *(4) 96 * + 24 + 4 + *(4) =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 24 + ax 4 =(204) *(@-8) *ax "
section .relod
	dd	L107
section .text
	db	0x66, 0xB8
L107:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 24
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-8], eax
; while
; RPN'ized expression: "i descRecurso rindx + *u &u c2cFichRec -> *u &u cabecera -> *u != "
; Expanded expression: "(@-8) *(4) descRecurso (@-4) *(4) 96 * + 24 + 8 + *(4) != "
L108:
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 24 + ax 8 != *(@-8) *ax IF! "
section .relod
	dd	L110
section .text
	db	0x66, 0xB8
L110:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 24
	add	eax, 8
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp-8]
	cmp	eax, ecx
	je	L109
; {
; if
; RPN'ized expression: "i dfs == "
; Expanded expression: "(@-8) *(4) (@8) *(4) == "
; Fused expression:    "== *(@-8) *(@8) IF! "
	mov	eax, [bp-8]
	cmp	eax, [bp+8]
	jne	L111
; break
	jmp	L109
L111:
; RPN'ized expression: "i descRecurso rindx + *u &u c2cFichRec -> *u &u e -> *u i + *u &u sig -> *u = "
; Expanded expression: "(@-8) descRecurso (@-4) *(4) 96 * + 24 + 12 + *(4) (@-8) *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 24 + ax 12 push-ax * *(@-8) 12 + **sp ax + ax 0 =(204) *(@-8) *ax "
section .relod
	dd	L113
section .text
	db	0x66, 0xB8
L113:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 24
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
	jmp	L108
L109:
; if
; RPN'ized expression: "i dfs != "
; Expanded expression: "(@-8) *(4) (@8) *(4) != "
; Fused expression:    "!= *(@-8) *(@8) IF! "
	mov	eax, [bp-8]
	cmp	eax, [bp+8]
	je	L114
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1  "
	mov	eax, -1
	jmp	L101
L114:
; if
; RPN'ized expression: "descFichero dfs + *u &u contAp_L -> *u 0 > descFichero dfs + *u &u contAp_E -> *u 0 > || "
; Expanded expression: "descFichero (@8) *(4) 36 * + 28 + *(4) 0 > [sh||->118] descFichero (@8) *(4) 36 * + 32 + *(4) 0 > ||[118] "
; Fused expression:    "descFichero push-ax * *(@8) 36 + *sp ax + ax 28 > *ax 0 [sh||->118] descFichero push-ax * *(@8) 36 + *sp ax + ax 32 > *ax 0 ||[118]  "
section .relod
	dd	L119
section .text
	db	0x66, 0xB8
L119:
	dd	_descFichero
	push	eax
	mov	eax, [bp+8]
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
	cmp	eax, 0
	setg	al
	movzx	eax, al
; JumpIfNotZero
	test	eax, eax
	jne	L118
section .relod
	dd	L120
section .text
	db	0x66, 0xB8
L120:
	dd	_descFichero
	push	eax
	mov	eax, [bp+8]
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
	cmp	eax, 0
	setg	al
	movzx	eax, al
L118:
; JumpIfZero
	test	eax, eax
	je	L116
; return
; RPN'ized expression: "2 -u "
; Expanded expression: "-2 "
; Expression value: -2
; Fused expression:    "-2  "
	mov	eax, -2
	jmp	L101
L116:
; loc     <something> : * struct <something>
; RPN'ized expression: "( descRecurso rindx + *u &u c2cFichRec -> *u &u (something121) , dfs eliminarPC2c ) "
; Expanded expression: " descRecurso (@-4) *(4) 96 * + 24 +  (@8) *(4)  eliminarPC2c ()8 "
; Fused expression:    "( descRecurso push-ax * *(@-4) 96 + *sp ax + ax 24 , *(4) (@8) , eliminarPC2c )8 "
section .relod
	dd	L122
section .text
	db	0x66, 0xB8
L122:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 24
	push	eax
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L123
section .text
L123:
	dd	_eliminarPC2c
	sub	sp, -8
; loc     <something> : * struct <something>
; RPN'ized expression: "( c2cPFR DFOcupados + *u &u (something124) , dfs eliminarPC2c ) "
; Expanded expression: " c2cPFR 144 +  (@8) *(4)  eliminarPC2c ()8 "
; Fused expression:    "( c2cPFR + ax 144 , *(4) (@8) , eliminarPC2c )8 "
section .relod
	dd	L125
section .text
	db	0x66, 0xB8
L125:
	dd	_c2cPFR
	add	eax, 144
	push	eax
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L126
section .text
L126:
	dd	_eliminarPC2c
	sub	sp, -8
; loc     <something> : * struct <something>
; RPN'ized expression: "( c2cPFR DFLibres + *u &u (something127) , dfs apilarPC2c ) "
; Expanded expression: " c2cPFR 128 +  (@8) *(4)  apilarPC2c ()8 "
; Fused expression:    "( c2cPFR + ax 128 , *(4) (@8) , apilarPC2c )8 "
section .relod
	dd	L128
section .text
	db	0x66, 0xB8
L128:
	dd	_c2cPFR
	add	eax, 128
	push	eax
	push	dword [bp+8]
	db	0x9A
section .relot
	dd	L129
section .text
L129:
	dd	_apilarPC2c
	sub	sp, -8
; loc     <something> : char
; RPN'ized expression: "descFichero dfs + *u &u nombre -> *u 0 + *u 0 (something130) = "
; Expanded expression: "descFichero (@8) *(4) 36 * + 4 + 0 =(-1) "
; Fused expression:    "descFichero push-ax * *(@8) 36 + *sp ax + ax 4 =(124) *ax 0 "
section .relod
	dd	L131
section .text
	db	0x66, 0xB8
L131:
	dd	_descFichero
	push	eax
	mov	eax, [bp+8]
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
; Expanded expression: "descFichero (@8) *(4) 36 * + 0 + 0 =(4) "
; Fused expression:    "descFichero push-ax * *(@8) 36 + *sp ax + ax 0 =(204) *ax 0 "
section .relod
	dd	L132
section .text
	db	0x66, 0xB8
L132:
	dd	_descFichero
	push	eax
	mov	eax, [bp+8]
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
; Expanded expression: "descFichero (@8) *(4) 36 * + 16 + -1 =(4) "
; Fused expression:    "descFichero push-ax * *(@8) 36 + *sp ax + ax 16 =(204) *ax -1 "
section .relod
	dd	L133
section .text
	db	0x66, 0xB8
L133:
	dd	_descFichero
	push	eax
	mov	eax, [bp+8]
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
; Expanded expression: "descFichero (@8) *(4) 36 * + 20 + 0 =(4) "
; Fused expression:    "descFichero push-ax * *(@8) 36 + *sp ax + ax 20 =(204) *ax 0 "
section .relod
	dd	L134
section .text
	db	0x66, 0xB8
L134:
	dd	_descFichero
	push	eax
	mov	eax, [bp+8]
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
; Expanded expression: "descFichero (@8) *(4) 36 * + 28 + 0 =(4) "
; Fused expression:    "descFichero push-ax * *(@8) 36 + *sp ax + ax 28 =(204) *ax 0 "
section .relod
	dd	L135
section .text
	db	0x66, 0xB8
L135:
	dd	_descFichero
	push	eax
	mov	eax, [bp+8]
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
; Expanded expression: "descFichero (@8) *(4) 36 * + 32 + 0 =(4) "
; Fused expression:    "descFichero push-ax * *(@8) 36 + *sp ax + ax 32 =(204) *ax 0 "
section .relod
	dd	L136
section .text
	db	0x66, 0xB8
L136:
	dd	_descFichero
	push	eax
	mov	eax, [bp+8]
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
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
L101:
	db	0x66
	leave
	retf
L137:

section .fxnsz
	dd	L137 - _destruirFich

; glb destruirRec : (
; prm     nombre : * char
;     ) int
section .text
	global	_destruirRec
_destruirRec:
	push	ebp
	movzx	ebp, sp
	 sub	sp,         32
; loc     nombre : (@8): * char
; loc     r : (@-4): int
; loc     rindx : (@-8): int
; loc     pindx : (@-12): int
; loc     dfs : (@-16): int
; loc     dfsSig : (@-20): int
; loc     nVInt : (@-24): unsigned char
; loc     j : (@-28): int
; loc     segmento : (@-32): unsigned short
; RPN'ized expression: "r c2cPFR DROcupados + *u &u primero -> *u = "
; Expanded expression: "(@-4) c2cPFR 176 + 4 + *(4) =(4) "
; Fused expression:    "c2cPFR + ax 176 + ax 4 =(204) *(@-4) *ax "
section .relod
	dd	L140
section .text
	db	0x66, 0xB8
L140:
	dd	_c2cPFR
	add	eax, 176
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-4], eax
; while
; RPN'ized expression: "r c2cPFR DROcupados + *u &u cabecera -> *u != "
; Expanded expression: "(@-4) *(4) c2cPFR 176 + 8 + *(4) != "
L141:
; Fused expression:    "c2cPFR + ax 176 + ax 8 != *(@-4) *ax IF! "
section .relod
	dd	L143
section .text
	db	0x66, 0xB8
L143:
	dd	_c2cPFR
	add	eax, 176
	add	eax, 8
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp-4]
	cmp	eax, ecx
	je	L142
; {
; if
; RPN'ized expression: "( nombre , descRecurso r + *u &u nombre -> *u strcmp ) 0 == "
; Expanded expression: " (@8) *(4)  descRecurso (@-4) *(4) 96 * + 0 +  strcmp ()8 0 == "
; Fused expression:    "( *(4) (@8) , descRecurso push-ax * *(@-4) 96 + *sp ax + ax 0 , strcmp )8 == ax 0 IF! "
	push	dword [bp+8]
section .relod
	dd	L146
section .text
	db	0x66, 0xB8
L146:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	push	eax
	db	0x9A
section .relot
	dd	L147
section .text
L147:
	dd	_strcmp
	sub	sp, -8
	cmp	eax, 0
	jne	L144
; {
; RPN'ized expression: "rindx r = "
; Expanded expression: "(@-8) (@-4) *(4) =(4) "
; Fused expression:    "=(204) *(@-8) *(@-4) "
	mov	eax, [bp-4]
	mov	[bp-8], eax
; break
	jmp	L142
; }
L144:
; RPN'ized expression: "r c2cPFR DROcupados + *u &u e -> *u r + *u &u sig -> *u = "
; Expanded expression: "(@-4) c2cPFR 176 + 12 + *(4) (@-4) *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "c2cPFR + ax 176 + ax 12 push-ax * *(@-4) 12 + **sp ax + ax 0 =(204) *(@-4) *ax "
section .relod
	dd	L148
section .text
	db	0x66, 0xB8
L148:
	dd	_c2cPFR
	add	eax, 176
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
	jmp	L141
L142:
; if
; RPN'ized expression: "r c2cPFR DROcupados + *u &u cabecera -> *u == "
; Expanded expression: "(@-4) *(4) c2cPFR 176 + 8 + *(4) == "
; Fused expression:    "c2cPFR + ax 176 + ax 8 == *(@-4) *ax IF! "
section .relod
	dd	L151
section .text
	db	0x66, 0xB8
L151:
	dd	_c2cPFR
	add	eax, 176
	add	eax, 8
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp-4]
	cmp	eax, ecx
	jne	L149
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1  "
	mov	eax, -1
	jmp	L138
L149:
; RPN'ized expression: "segmento descProceso descRecurso rindx + *u &u tindx -> *u + *u &u CSProc -> *u = "
; Expanded expression: "(@-32) descProceso descRecurso (@-8) *(4) 96 * + 20 + *(4) 292 * + 52 + *(2) =(2) "
; Fused expression:    "descProceso push-ax descRecurso push-ax * *(@-8) 96 + *sp ax + ax 20 * *ax 292 + *sp ax + ax 52 =(170) *(@-32) *ax "
section .relod
	dd	L152
section .text
	db	0x66, 0xB8
L152:
	dd	_descProceso
	push	eax
section .relod
	dd	L153
section .text
	db	0x66, 0xB8
L153:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 96
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
	imul	eax, eax, 292
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 52
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	mov	[bp-32], ax
	movzx	eax, ax
; RPN'ized expression: "r c2cPFR DROcupados + *u &u primero -> *u = "
; Expanded expression: "(@-4) c2cPFR 176 + 4 + *(4) =(4) "
; Fused expression:    "c2cPFR + ax 176 + ax 4 =(204) *(@-4) *ax "
section .relod
	dd	L154
section .text
	db	0x66, 0xB8
L154:
	dd	_c2cPFR
	add	eax, 176
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-4], eax
; while
; RPN'ized expression: "r c2cPFR DROcupados + *u &u cabecera -> *u != "
; Expanded expression: "(@-4) *(4) c2cPFR 176 + 8 + *(4) != "
L155:
; Fused expression:    "c2cPFR + ax 176 + ax 8 != *(@-4) *ax IF! "
section .relod
	dd	L157
section .text
	db	0x66, 0xB8
L157:
	dd	_c2cPFR
	add	eax, 176
	add	eax, 8
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp-4]
	cmp	eax, ecx
	je	L156
; {
; if
; loc         <something> : * struct <something>
; RPN'ized expression: "descRecurso r + *u &u ccb -> *u 0 (something160) != "
; Expanded expression: "descRecurso (@-4) *(4) 96 * + 16 + *(4) 0 != "
; Fused expression:    "descRecurso push-ax * *(@-4) 96 + *sp ax + ax 16 != *ax 0 IF! "
section .relod
	dd	L161
section .text
	db	0x66, 0xB8
L161:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
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
	mov	eax, [si]
	cmp	eax, 0
	je	L158
; RPN'ized expression: "( descRecurso r + *u &u ccb -> *u , segmento eliminarSegCcb ) "
; Expanded expression: " descRecurso (@-4) *(4) 96 * + 16 + *(4)  (@-32) *(2)  eliminarSegCcb ()8 "
; Fused expression:    "( descRecurso push-ax * *(@-4) 96 + *sp ax + ax 16 *(4) ax , *(2) (@-32) , eliminarSegCcb )8 "
section .relod
	dd	L162
section .text
	db	0x66, 0xB8
L162:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-4]
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
	mov	ax, [bp-32]
	movzx	eax, ax
	push	eax
	db	0x9A
section .relot
	dd	L163
section .text
L163:
	dd	_eliminarSegCcb
	sub	sp, -8
L158:
; RPN'ized expression: "r c2cPFR DROcupados + *u &u e -> *u r + *u &u sig -> *u = "
; Expanded expression: "(@-4) c2cPFR 176 + 12 + *(4) (@-4) *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "c2cPFR + ax 176 + ax 12 push-ax * *(@-4) 12 + **sp ax + ax 0 =(204) *(@-4) *ax "
section .relod
	dd	L164
section .text
	db	0x66, 0xB8
L164:
	dd	_c2cPFR
	add	eax, 176
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
	jmp	L155
L156:
; RPN'ized expression: "dfs descRecurso rindx + *u &u c2cFichRec -> *u &u primero -> *u = "
; Expanded expression: "(@-16) descRecurso (@-8) *(4) 96 * + 24 + 4 + *(4) =(4) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 24 + ax 4 =(204) *(@-16) *ax "
section .relod
	dd	L165
section .text
	db	0x66, 0xB8
L165:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 24
	add	eax, 4
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	mov	[bp-16], eax
; while
; RPN'ized expression: "dfs descRecurso rindx + *u &u c2cFichRec -> *u &u cabecera -> *u != "
; Expanded expression: "(@-16) *(4) descRecurso (@-8) *(4) 96 * + 24 + 8 + *(4) != "
L166:
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 24 + ax 8 != *(@-16) *ax IF! "
section .relod
	dd	L168
section .text
	db	0x66, 0xB8
L168:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 24
	add	eax, 8
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ecx, [si]
	mov	eax, [bp-16]
	cmp	eax, ecx
	je	L167
; {
; RPN'ized expression: "dfsSig descRecurso rindx + *u &u c2cFichRec -> *u &u e -> *u dfs + *u &u sig -> *u = "
; Expanded expression: "(@-20) descRecurso (@-8) *(4) 96 * + 24 + 12 + *(4) (@-16) *(4) 12 * + 0 + *(4) =(4) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 24 + ax 12 push-ax * *(@-16) 12 + **sp ax + ax 0 =(204) *(@-20) *ax "
section .relod
	dd	L169
section .text
	db	0x66, 0xB8
L169:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 24
	add	eax, 12
	push	eax
	mov	eax, [bp-16]
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
	mov	[bp-20], eax
; if
; RPN'ized expression: "descFichero dfs + *u &u contAp_L -> *u 0 > descFichero dfs + *u &u contAp_E -> *u 0 > || "
; Expanded expression: "descFichero (@-16) *(4) 36 * + 28 + *(4) 0 > [sh||->172] descFichero (@-16) *(4) 36 * + 32 + *(4) 0 > ||[172] "
; Fused expression:    "descFichero push-ax * *(@-16) 36 + *sp ax + ax 28 > *ax 0 [sh||->172] descFichero push-ax * *(@-16) 36 + *sp ax + ax 32 > *ax 0 ||[172]  "
section .relod
	dd	L173
section .text
	db	0x66, 0xB8
L173:
	dd	_descFichero
	push	eax
	mov	eax, [bp-16]
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
	cmp	eax, 0
	setg	al
	movzx	eax, al
; JumpIfNotZero
	test	eax, eax
	jne	L172
section .relod
	dd	L174
section .text
	db	0x66, 0xB8
L174:
	dd	_descFichero
	push	eax
	mov	eax, [bp-16]
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
	cmp	eax, 0
	setg	al
	movzx	eax, al
L172:
; JumpIfZero
	test	eax, eax
	je	L170
; return
; RPN'ized expression: "2 -u "
; Expanded expression: "-2 "
; Expression value: -2
; Fused expression:    "-2  "
	mov	eax, -2
	jmp	L138
	jmp	L171
L170:
; else
; if
; RPN'ized expression: "( dfs destruirFich ) 0 < "
; Expanded expression: " (@-16) *(4)  destruirFich ()4 0 < "
; Fused expression:    "( *(4) (@-16) , destruirFich )4 < ax 0 IF! "
	push	dword [bp-16]
	db	0x9A
section .relot
	dd	L177
section .text
L177:
	dd	_destruirFich
	sub	sp, -4
	cmp	eax, 0
	jge	L175
; return
; RPN'ized expression: "3 -u "
; Expanded expression: "-3 "
; Expression value: -3
; Fused expression:    "-3  "
	mov	eax, -3
	jmp	L138
L175:
L171:
; RPN'ized expression: "dfs dfsSig = "
; Expanded expression: "(@-16) (@-20) *(4) =(4) "
; Fused expression:    "=(204) *(@-16) *(@-20) "
	mov	eax, [bp-20]
	mov	[bp-16], eax
; }
	jmp	L166
L167:
; if
; RPN'ized expression: "descRecurso rindx + *u &u c2cFichRec -> *u &u numElem -> *u 0 > "
; Expanded expression: "descRecurso (@-8) *(4) 96 * + 24 + 0 + *(4) 0 > "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 24 + ax 0 > *ax 0 IF! "
section .relod
	dd	L180
section .text
	db	0x66, 0xB8
L180:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 24
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	eax, [si]
	cmp	eax, 0
	jle	L178
; return
; RPN'ized expression: "4 -u "
; Expanded expression: "-4 "
; Expression value: -4
; Fused expression:    "-4  "
	mov	eax, -4
	jmp	L138
L178:
; loc     <something> : char
; RPN'ized expression: "descRecurso rindx + *u &u nombre -> *u 0 + *u 0 (something181) = "
; Expanded expression: "descRecurso (@-8) *(4) 96 * + 0 + 0 =(-1) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 0 =(124) *ax 0 "
section .relod
	dd	L182
section .text
	db	0x66, 0xB8
L182:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
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
; Expanded expression: "descRecurso (@-8) *(4) 96 * + 12 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 12 =(204) *ax 0 "
section .relod
	dd	L183
section .text
	db	0x66, 0xB8
L183:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
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
; RPN'ized expression: "( descRecurso rindx + *u &u ccb -> *u vaciarCcb ) "
; Expanded expression: " descRecurso (@-8) *(4) 96 * + 16 + *(4)  vaciarCcb ()4 "
; Fused expression:    "( descRecurso push-ax * *(@-8) 96 + *sp ax + ax 16 *(4) ax , vaciarCcb )4 "
section .relod
	dd	L184
section .text
	db	0x66, 0xB8
L184:
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
	db	0x9A
section .relot
	dd	L185
section .text
L185:
	dd	_vaciarCcb
	sub	sp, -4
; RPN'ized expression: "pindx descRecurso rindx + *u &u tindx -> *u = "
; Expanded expression: "(@-12) descRecurso (@-8) *(4) 96 * + 20 + *(4) =(4) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 20 =(204) *(@-12) *ax "
section .relod
	dd	L186
section .text
	db	0x66, 0xB8
L186:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 96
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
	mov	[bp-12], eax
; RPN'ized expression: "descThread pindx + *u &u estado -> *u preparado = "
; Expanded expression: "descThread (@-12) *(4) 40 * + 4 + 1 =(4) "
; Fused expression:    "descThread push-ax * *(@-12) 40 + *sp ax + ax 4 =(204) *ax 1 "
section .relod
	dd	L187
section .text
	db	0x66, 0xB8
L187:
	dd	_descThread
	push	eax
	mov	eax, [bp-12]
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
; loc     <something> : * struct <something>
; RPN'ized expression: "( c2cPFR TPreparados + *u &u (something188) , pindx encolarPC2c ) "
; Expanded expression: " c2cPFR 64 +  (@-12) *(4)  encolarPC2c ()8 "
; Fused expression:    "( c2cPFR + ax 64 , *(4) (@-12) , encolarPC2c )8 "
section .relod
	dd	L189
section .text
	db	0x66, 0xB8
L189:
	dd	_c2cPFR
	add	eax, 64
	push	eax
	push	dword [bp-12]
	db	0x9A
section .relot
	dd	L190
section .text
L190:
	dd	_encolarPC2c
	sub	sp, -8
; loc     <something> : int
; RPN'ized expression: "descRecurso rindx + *u &u tindx -> *u 1 -u (something191) = "
; Expanded expression: "descRecurso (@-8) *(4) 96 * + 20 + -1 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 20 =(204) *ax -1 "
section .relod
	dd	L192
section .text
	db	0x66, 0xB8
L192:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
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
; for
; RPN'ized expression: "j 0 = "
; Expanded expression: "(@-28) 0 =(4) "
; Fused expression:    "=(204) *(@-28) 0 "
	mov	eax, 0
	mov	[bp-28], eax
L193:
; RPN'ized expression: "j descRecurso rindx + *u &u numVI -> *u < "
; Expanded expression: "(@-28) *(4) descRecurso (@-8) *(4) 96 * + 40 + *(1) < "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 40 < *(@-28) *ax IF! "
section .relod
	dd	L197
section .text
	db	0x66, 0xB8
L197:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 40
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	movzx	ecx, byte [si]
	mov	eax, [bp-28]
	cmp	eax, ecx
	jge	L196
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-28) ++p(4) "
; {
; RPN'ized expression: "nVInt descRecurso rindx + *u &u nVInt -> *u j + *u = "
; Expanded expression: "(@-24) descRecurso (@-8) *(4) 96 * + 41 + (@-28) *(4) + *(1) =(1) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 41 + ax *(@-28) =(153) *(@-24) *ax "
section .relod
	dd	L198
section .text
	db	0x66, 0xB8
L198:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 41
	add	eax, [bp-28]
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	al, [si]
	movzx	eax, al
	mov	[bp-24], al
	movzx	eax, al
; RPN'ized expression: "recVInt nVInt + *u 1 -u = "
; Expanded expression: "recVInt (@-24) *(1) 4 * + -1 =(4) "
; Fused expression:    "recVInt push-ax * *(@-24) 4 + *sp ax =(204) *ax -1 "
section .relod
	dd	L199
section .text
	db	0x66, 0xB8
L199:
	dd	_recVInt
	push	eax
	mov	al, [bp-24]
	movzx	eax, al
	imul	eax, eax, 4
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	mov	ebx, eax
	mov	eax, -1
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "( nVInt restablecerInt ) "
; Expanded expression: " (@-24) *(1)  restablecerInt ()4 "
; Fused expression:    "( *(1) (@-24) , restablecerInt )4 "
	mov	al, [bp-24]
	movzx	eax, al
	push	eax
	db	0x9A
section .relot
	dd	L200
section .text
L200:
	dd	_restablecerInt
	sub	sp, -4
; RPN'ized expression: "descRecurso rindx + *u &u nVInt -> *u j + *u 0 = "
; Expanded expression: "descRecurso (@-8) *(4) 96 * + 41 + (@-28) *(4) + 0 =(1) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 41 + ax *(@-28) =(156) *ax 0 "
section .relod
	dd	L201
section .text
	db	0x66, 0xB8
L201:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 41
	add	eax, [bp-28]
	mov	ebx, eax
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], al
	movzx	eax, al
; loc         <something> : * (void) void
; RPN'ized expression: "descRecurso rindx + *u &u isr -> *u j + *u 0 (something202) = "
; Expanded expression: "descRecurso (@-8) *(4) 96 * + 48 + (@-28) *(4) 4 * + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 48 push-ax * *(@-28) 4 + *sp ax =(204) *ax 0 "
section .relod
	dd	L203
section .text
	db	0x66, 0xB8
L203:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 96
	mov	ecx, eax
	pop	eax
	add	eax, ecx
	add	eax, 48
	push	eax
	mov	eax, [bp-28]
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
L194:
; Fused expression:    "++p(4) *(@-28) "
	mov	eax, [bp-28]
	inc	dword [bp-28]
	jmp	L193
L196:
; RPN'ized expression: "descRecurso rindx + *u &u numVI -> *u 0 = "
; Expanded expression: "descRecurso (@-8) *(4) 96 * + 40 + 0 =(1) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 40 =(156) *ax 0 "
section .relod
	dd	L204
section .text
	db	0x66, 0xB8
L204:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
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
; loc     <something> : * (
; prm         dfs : int
; prm         modo : unsigned short
;         ) int
; RPN'ized expression: "descRecurso rindx + *u &u open -> *u 0 (something205) = "
; Expanded expression: "descRecurso (@-8) *(4) 96 * + 56 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 56 =(204) *ax 0 "
section .relod
	dd	L206
section .text
	db	0x66, 0xB8
L206:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
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
; loc     <something> : * (
; prm         dfs : int
;         ) int
; RPN'ized expression: "descRecurso rindx + *u &u release -> *u 0 (something207) = "
; Expanded expression: "descRecurso (@-8) *(4) 96 * + 60 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 60 =(204) *ax 0 "
section .relod
	dd	L208
section .text
	db	0x66, 0xB8
L208:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
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
; loc     <something> : * (
; prm         dfs : int
; prm         dir : * unsigned char
; prm         nbytes : unsigned short
;         ) int
; RPN'ized expression: "descRecurso rindx + *u &u read -> *u 0 (something209) = "
; Expanded expression: "descRecurso (@-8) *(4) 96 * + 64 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 64 =(204) *ax 0 "
section .relod
	dd	L210
section .text
	db	0x66, 0xB8
L210:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
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
; loc     <something> : * (
; prm         dfs : int
; prm         dir : * unsigned char
; prm         nbytes : unsigned short
;         ) int
; RPN'ized expression: "descRecurso rindx + *u &u aio_read -> *u 0 (something211) = "
; Expanded expression: "descRecurso (@-8) *(4) 96 * + 68 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 68 =(204) *ax 0 "
section .relod
	dd	L212
section .text
	db	0x66, 0xB8
L212:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
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
; loc     <something> : * (
; prm         dfs : int
; prm         dir : * unsigned char
; prm         nbytes : unsigned short
;         ) int
; RPN'ized expression: "descRecurso rindx + *u &u write -> *u 0 (something213) = "
; Expanded expression: "descRecurso (@-8) *(4) 96 * + 72 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 72 =(204) *ax 0 "
section .relod
	dd	L214
section .text
	db	0x66, 0xB8
L214:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
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
; loc     <something> : * (
; prm         dfs : int
; prm         dir : * unsigned char
; prm         nbytes : unsigned short
;         ) int
; RPN'ized expression: "descRecurso rindx + *u &u aio_write -> *u 0 (something215) = "
; Expanded expression: "descRecurso (@-8) *(4) 96 * + 76 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 76 =(204) *ax 0 "
section .relod
	dd	L216
section .text
	db	0x66, 0xB8
L216:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
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
; loc     <something> : * (
; prm         dfs : int
; prm         pos : int
; prm         whence : unsigned short
;         ) int
; RPN'ized expression: "descRecurso rindx + *u &u lseek -> *u 0 (something217) = "
; Expanded expression: "descRecurso (@-8) *(4) 96 * + 80 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 80 =(204) *ax 0 "
section .relod
	dd	L218
section .text
	db	0x66, 0xB8
L218:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
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
; loc     <something> : * (
; prm         dfs : int
; prm         cmd : unsigned short
; prm         arg : unsigned short
;         ) int
; RPN'ized expression: "descRecurso rindx + *u &u fcntl -> *u 0 (something219) = "
; Expanded expression: "descRecurso (@-8) *(4) 96 * + 84 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 84 =(204) *ax 0 "
section .relod
	dd	L220
section .text
	db	0x66, 0xB8
L220:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
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
; loc     <something> : * (
; prm         dfs : int
; prm         request : unsigned short
; prm         arg : unsigned short
;         ) int
; RPN'ized expression: "descRecurso rindx + *u &u ioctl -> *u 0 (something221) = "
; Expanded expression: "descRecurso (@-8) *(4) 96 * + 88 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 88 =(204) *ax 0 "
section .relod
	dd	L222
section .text
	db	0x66, 0xB8
L222:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
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
; loc     <something> : * (
; prm         dfs : int
; prm         request : unsigned short
; prm         arg : unsigned short
;         ) int
; RPN'ized expression: "descRecurso rindx + *u &u eliminar -> *u 0 (something223) = "
; Expanded expression: "descRecurso (@-8) *(4) 96 * + 92 + 0 =(4) "
; Fused expression:    "descRecurso push-ax * *(@-8) 96 + *sp ax + ax 92 =(204) *ax 0 "
section .relod
	dd	L224
section .text
	db	0x66, 0xB8
L224:
	dd	_descRecurso
	push	eax
	mov	eax, [bp-8]
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
; loc     <something> : * struct <something>
; RPN'ized expression: "( c2cPFR DROcupados + *u &u (something225) , rindx eliminarPC2c ) "
; Expanded expression: " c2cPFR 176 +  (@-8) *(4)  eliminarPC2c ()8 "
; Fused expression:    "( c2cPFR + ax 176 , *(4) (@-8) , eliminarPC2c )8 "
section .relod
	dd	L226
section .text
	db	0x66, 0xB8
L226:
	dd	_c2cPFR
	add	eax, 176
	push	eax
	push	dword [bp-8]
	db	0x9A
section .relot
	dd	L227
section .text
L227:
	dd	_eliminarPC2c
	sub	sp, -8
; loc     <something> : * struct <something>
; RPN'ized expression: "( c2cPFR DRLibres + *u &u (something228) , rindx apilarPC2c ) "
; Expanded expression: " c2cPFR 160 +  (@-8) *(4)  apilarPC2c ()8 "
; Fused expression:    "( c2cPFR + ax 160 , *(4) (@-8) , apilarPC2c )8 "
section .relod
	dd	L229
section .text
	db	0x66, 0xB8
L229:
	dd	_c2cPFR
	add	eax, 160
	push	eax
	push	dword [bp-8]
	db	0x9A
section .relot
	dd	L230
section .text
L230:
	dd	_apilarPC2c
	sub	sp, -8
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0  "
	mov	eax, 0
L138:
	db	0x66
	leave
	retf
L231:

section .fxnsz
	dd	L231 - _destruirRec


	extern	_c2cPFR
	extern	_descRecurso
	extern	_strcmp
	extern	_recVInt
	extern	_desencolarPC2c
	extern	_apilarPC2c
	extern	_strcpy
	extern	_e2PFR
	extern	_inicializarPC2c
	extern	_redirigirIntHardware
	extern	_redirigirInt
	extern	_descFichero
	extern	_eliminarPC2c
	extern	_descProceso
	extern	_eliminarSegCcb
	extern	_vaciarCcb
	extern	_descThread
	extern	_encolarPC2c
	extern	_restablecerInt

; Syntax/declaration table/stack:
; Bytes used: 10350/40960


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
; Ident inicRecursos
; Ident crearRec
; Ident dR
; Ident crearFich
; Ident destruirFich
; Ident destruirRec
; Ident link_recurs
; Bytes used: 4072/16384

; Next label number: 232
; Compilation succeeded.
