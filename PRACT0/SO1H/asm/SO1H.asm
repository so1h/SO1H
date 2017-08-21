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
; glb HWLIST_t : unsigned short
; glb KBDFLAGS_t : unsigned short
; glb KBDSTATUS_t : unsigned short
; glb VIDEOCONTROL_t : unsigned char
; glb DRECSTATUS_t : unsigned char
; glb DMOTORSTATUS_t : unsigned char
; glb FDOPSTATUS_t : unsigned char
; glb VIDEOSWITCHES_t : unsigned char
; glb VGAOPTIONS_t : unsigned char
; glb VIDEOSAVETBL_t : struct <something>
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
; RPN'ized expression: "25 "
; Expanded expression: "25 "
; Expression value: 25
; RPN'ized expression: "20 "
; Expanded expression: "20 "
; Expression value: 20
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
; glb VIDEOPARAM_t : struct <something>
; RPN'ized expression: "256 "
; Expanded expression: "256 "
; Expression value: 256
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
; RPN'ized expression: "3 "
; Expanded expression: "3 "
; Expression value: 3
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; RPN'ized expression: "3 "
; Expanded expression: "3 "
; Expression value: 3
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
; RPN'ized expression: "68 "
; Expanded expression: "68 "
; Expression value: 68
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
; glb BIOSAREA_t : struct <something>
; glb ptrBiosArea : * struct <something>
; glb ptrFechaBios : * unsigned char
; glb salvarPantallaInicial : (void) void
; glb restaurarPantallaInicial : (void) void
; glb puntoDeParada : (void) void
; glb assert : (
; prm     condicion : int
; prm     str : * char
;     ) void
; glb valorFlags : (void) unsigned short
; glb mostrarFlags : (void) void
; glb debug_parar : int
; glb inportb : (
; prm     port : unsigned short
;     ) unsigned char
; glb inport : (
; prm     port : unsigned short
;     ) unsigned short
; glb outport : (
; prm     port : unsigned short
; prm     val : unsigned short
;     ) void
; glb outportb : (
; prm     port : unsigned short
; prm     val : unsigned char
;     ) void
; glb inportb_r : (
; prm     port : unsigned char
;     ) unsigned char
; glb outportb_r : (
; prm     port : unsigned char
; prm     val : unsigned char
;     ) void
; glb contadorTimer0 : (void) unsigned short
; glb ptrTVI : * * (void) void
; glb valorIMR : (void) unsigned short
; glb establecerIMR : (
; prm     nuevoIMR : unsigned short
;     ) void
; glb mask_pic1 : (
; prm     irq : unsigned char
;     ) void
; glb mask_pic2 : (
; prm     irq : unsigned char
;     ) void
; glb unmask_pic1 : (
; prm     irq : unsigned char
;     ) void
; glb unmask_pic2 : (
; prm     irq : unsigned char
;     ) void
; glb get_pic1_isr : (void) unsigned char
; glb get_pic2_isr : (void) unsigned char
; glb set_pics : (
; prm     irq0 : unsigned char
; prm     irq8 : unsigned char
;     ) void
; glb pic_setup : (void) void
; glb enable_hwirq : (
; prm     hwirq : int
; prm     rti : * (void) void
;     ) void
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
%define SP0_SO1H 0x8000
%define SP0_Kernel  0xA000
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
; glb puntoDeParadaSO1 : (void) void
; glb leerScancodeListo : (void) unsigned char
; glb leerScancode : (void) unsigned char
; glb mirarLoQueHay : (
; prm     loQueHay : * unsigned short
;     ) void
; glb mostrarLoQueHay : (
; prm     loQueHay : unsigned short
;     ) void
; glb tirarS0 : (
; prm     loQueHay : unsigned short
;     ) void
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
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
; RPN'ized expression: "48 "
; Expanded expression: "48 "
; Expression value: 48
; glb tipoAdaptador_t : int
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
; RPN'ized expression: "14 "
; Expanded expression: "14 "
; Expression value: 14
; glb fontSize_t : int
; glb numFilas : unsigned char
; glb numColumnas : unsigned char
; glb ptrPant : * union <something>
; glb tipoAdaptador : int
; glb redimensionable : int
; glb fontSize : unsigned char
; glb visibilidad : unsigned char
; glb inicBiosCrt : (void) void
; glb finBiosCrt : (void) void
; glb getFontSize : (void) int
; glb getFilas : (void) unsigned char
; glb comprobarAdaptador : (
; prm     tipoAdaptador : int
;     ) int
; glb tipoDeAdaptador : (void) int
; glb setCursorVisibilidad : (
; prm     valorDeVisibilidad : int
;     ) unsigned char
; glb setFontSize : (
; prm     size : int
;     ) void
; glb set25x80 : (void) void
; glb redimensionar : (
; prm     nFilas : unsigned char
; prm     nCols : unsigned char
;     ) void
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
; glb createProcess : (
; prm     nombre : * char
; prm     comando : * char
;     ) int
; glb exec : (
; prm     nombre : * char
; prm     comando : * char
;     ) int
; glb waitpid : (
; prm     pid : int
; prm     statloc : * int
;     ) int
; glb kill : (
; prm     pid : int
;     ) int
; glb exit : (
; prm     status : int
;     ) void
; glb setuid : (
; prm     uid : int
;     ) int
; glb setgid : (
; prm     gid : int
;     ) int
; glb kill : (
; prm     pid : int
;     ) int
; glb open : (
; prm     nombre : * char
; prm     modoAp : unsigned short
;     ) int
; glb close : (
; prm     df : int
;     ) int
; glb write : (
; prm     df : int
; prm     dir : * unsigned char
; prm     nbytes : unsigned short
;     ) int
; glb tamBloqueMax : unsigned short
; glb listaLibres : * struct <something>
; glb k_buscarBloque : (
; prm     tam : unsigned short
;     ) unsigned short
; glb k_devolverBloque : (
; prm     segmento : unsigned short
; prm     tam : unsigned short
;     ) int
; glb rec_gm : int
; glb inicGM : (void) void
; glb mostrarListaLibres : (void) void
; glb link_gm_k : (void) void
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
; glb isr_SO1H : (void) void
; glb link_llamadas : (void) void
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
; glb demo_0 : (void) void
; glb main : (void) void
section .text
	global	_main
_main:
	push	ebp
	movzx	ebp, sp
	 sub	sp,          8
; loc     loQueHay : (@-4): unsigned short
cli
; if
; RPN'ized expression: "( modoSO1 ) modoSO1_Exe == "
; Expanded expression: " modoSO1 ()0 1 == "
; Fused expression:    "( modoSO1 )0 == ax 1 IF! "
	db	0x9A
section .relot
	dd	L5
section .text
L5:
	dd	_modoSO1
	cmp	eax, 1
	jne	L3
; RPN'ized expression: "( salvarPantallaInicial ) "
; Expanded expression: " salvarPantallaInicial ()0 "
; Fused expression:    "( salvarPantallaInicial )0 "
	db	0x9A
section .relot
	dd	L6
section .text
L6:
	dd	_salvarPantallaInicial
	jmp	L4
L3:
; else
; if
; RPN'ized expression: "( modoSO1 ) modoSO1_Bin == "
; Expanded expression: " modoSO1 ()0 0 == "
; Fused expression:    "( modoSO1 )0 == ax 0 IF! "
	db	0x9A
section .relot
	dd	L9
section .text
L9:
	dd	_modoSO1
	cmp	eax, 0
	jne	L7
; RPN'ized expression: "( 0 scrollBIOS ) "
; Expanded expression: " 0  scrollBIOS ()4 "
; Fused expression:    "( 0 , scrollBIOS )4 "
	push	dword 0
	db	0x9A
section .relot
	dd	L10
section .text
L10:
	dd	_scrollBIOS
	sub	sp, -4
L7:
L4:
; RPN'ized expression: "( inicMemVideo ) "
; Expanded expression: " inicMemVideo ()0 "
; Fused expression:    "( inicMemVideo )0 "
	db	0x9A
section .relot
	dd	L11
section .text
L11:
	dd	_inicMemVideo
; RPN'ized expression: "( ocultaCursorBIOS ) "
; Expanded expression: " ocultaCursorBIOS ()0 "
; Fused expression:    "( ocultaCursorBIOS )0 "
	db	0x9A
section .relot
	dd	L12
section .text
L12:
	dd	_ocultaCursorBIOS
; loc     <something> : * unsigned short
; RPN'ized expression: "( loQueHay &u (something13) mirarLoQueHay ) "
; Expanded expression: " (@-4)  mirarLoQueHay ()4 "
; Fused expression:    "( (@-4) , mirarLoQueHay )4 "
	xor	eax, eax
	mov	ax, ss
	shl	eax, 4
	lea	eax, [ebp+eax-4]
	push	eax
	db	0x9A
section .relot
	dd	L14
section .text
L14:
	dd	_mirarLoQueHay
	sub	sp, -4
; RPN'ized expression: "( loQueHay mostrarLoQueHay ) "
; Expanded expression: " (@-4) *(2)  mostrarLoQueHay ()4 "
; Fused expression:    "( *(2) (@-4) , mostrarLoQueHay )4 "
	mov	ax, [bp-4]
	movzx	eax, ax
	push	eax
	db	0x9A
section .relot
	dd	L15
section .text
L15:
	dd	_mostrarLoQueHay
	sub	sp, -4
; switch
; RPN'ized expression: "( modoSO1 ) "
; Expanded expression: " modoSO1 ()0 "
; Fused expression:    "( modoSO1 )0  "
	db	0x9A
section .relot
	dd	L18
section .text
L18:
	dd	_modoSO1
	jmp	L17
; {
; case
; RPN'ized expression: "modoSO1_Bin "
; Expanded expression: "0 "
; Expression value: 0
L19:
; case
; RPN'ized expression: "modoSO1_Exe "
; Expanded expression: "1 "
; Expression value: 1
L20:
; RPN'ized expression: "( mostrarFlags ) "
; Expanded expression: " mostrarFlags ()0 "
; Fused expression:    "( mostrarFlags )0 "
	db	0x9A
section .relot
	dd	L21
section .text
L21:
	dd	_mostrarFlags

section .rodata
L22:
	db	"=> SO1H v 0.1.2 "
	times	1 db 0

section .text
; RPN'ized expression: "( L22 printStrVideo ) "
; Expanded expression: " L22  printStrVideo ()4 "
; Fused expression:    "( L22 , printStrVideo )4 "
section .relod
	dd	L23
section .text
	db	0x66, 0x68
L23:
	dd	L22
	db	0x9A
section .relot
	dd	L24
section .text
L24:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( printLnVideo ) "
; Expanded expression: " printLnVideo ()0 "
; Fused expression:    "( printLnVideo )0 "
	db	0x9A
section .relot
	dd	L25
section .text
L25:
	dd	_printLnVideo

section .rodata
L26:
	db	7,10," so1(): ERROR ints. no inhibidas"
	times	1 db 0

section .text
; RPN'ized expression: "( L26 , ( valorFlags ) 512 & 0 == assert ) "
; Expanded expression: " L26   valorFlags ()0 512 & 0 ==  assert ()8 "
; Fused expression:    "( L26 , ( valorFlags )0 & ax 512 == ax 0 , assert )8 "
section .relod
	dd	L27
section .text
	db	0x66, 0x68
L27:
	dd	L26
	db	0x9A
section .relot
	dd	L28
section .text
L28:
	dd	_valorFlags
	and	eax, 512
	cmp	eax, 0
	sete	al
	movzx	eax, al
	push	eax
	db	0x9A
section .relot
	dd	L29
section .text
L29:
	dd	_assert
	sub	sp, -8
; }
	jmp	L16
L17:
	cmp	eax, 0
	je	L19
	cmp	eax, 1
	je	L20
L16:
; RPN'ized expression: "( obtenerMapa ) "
; Expanded expression: " obtenerMapa ()0 "
; Fused expression:    "( obtenerMapa )0 "
	db	0x9A
section .relot
	dd	L30
section .text
L30:
	dd	_obtenerMapa

section .rodata
L31:
	db	10
	db	" CS_SO1H  RO_SO1H  DS_SO1H  BSS_SO1H  SS_SO1H  ",10
	db	" -------- -------- -------- --------- -------- ",10
	db	"   "
	times	1 db 0

section .text
; RPN'ized expression: "( L31 printStrVideo ) "
; Expanded expression: " L31  printStrVideo ()4 "
; Fused expression:    "( L31 , printStrVideo )4 "
section .relod
	dd	L32
section .text
	db	0x66, 0x68
L32:
	dd	L31
	db	0x9A
section .relot
	dd	L33
section .text
L33:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , CS_SO1H printHexVideo ) "
; Expanded expression: " 4  CS_SO1H *(2)  printHexVideo ()8 "
; Fused expression:    "( 4 , CS_SO1H *(2) ax , printHexVideo )8 "
	push	dword 4
section .relod
	dd	L34
section .text
	db	0x66, 0xB8
L34:
	dd	_CS_SO1H
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
	dd	L35
section .text
L35:
	dd	_printHexVideo
	sub	sp, -8

section .rodata
L36:
	db	"     "
	times	1 db 0

section .text
; RPN'ized expression: "( L36 printStrVideo ) "
; Expanded expression: " L36  printStrVideo ()4 "
; Fused expression:    "( L36 , printStrVideo )4 "
section .relod
	dd	L37
section .text
	db	0x66, 0x68
L37:
	dd	L36
	db	0x9A
section .relot
	dd	L38
section .text
L38:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , RO_SO1H printHexVideo ) "
; Expanded expression: " 4  RO_SO1H *(2)  printHexVideo ()8 "
; Fused expression:    "( 4 , RO_SO1H *(2) ax , printHexVideo )8 "
	push	dword 4
section .relod
	dd	L39
section .text
	db	0x66, 0xB8
L39:
	dd	_RO_SO1H
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
	dd	L40
section .text
L40:
	dd	_printHexVideo
	sub	sp, -8

section .rodata
L41:
	db	"     "
	times	1 db 0

section .text
; RPN'ized expression: "( L41 printStrVideo ) "
; Expanded expression: " L41  printStrVideo ()4 "
; Fused expression:    "( L41 , printStrVideo )4 "
section .relod
	dd	L42
section .text
	db	0x66, 0x68
L42:
	dd	L41
	db	0x9A
section .relot
	dd	L43
section .text
L43:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , DS_SO1H printHexVideo ) "
; Expanded expression: " 4  DS_SO1H *(2)  printHexVideo ()8 "
; Fused expression:    "( 4 , DS_SO1H *(2) ax , printHexVideo )8 "
	push	dword 4
section .relod
	dd	L44
section .text
	db	0x66, 0xB8
L44:
	dd	_DS_SO1H
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
	dd	L45
section .text
L45:
	dd	_printHexVideo
	sub	sp, -8

section .rodata
L46:
	db	"     "
	times	1 db 0

section .text
; RPN'ized expression: "( L46 printStrVideo ) "
; Expanded expression: " L46  printStrVideo ()4 "
; Fused expression:    "( L46 , printStrVideo )4 "
section .relod
	dd	L47
section .text
	db	0x66, 0x68
L47:
	dd	L46
	db	0x9A
section .relot
	dd	L48
section .text
L48:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , BSS_SO1H printHexVideo ) "
; Expanded expression: " 4  BSS_SO1H *(2)  printHexVideo ()8 "
; Fused expression:    "( 4 , BSS_SO1H *(2) ax , printHexVideo )8 "
	push	dword 4
section .relod
	dd	L49
section .text
	db	0x66, 0xB8
L49:
	dd	_BSS_SO1H
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
	dd	L50
section .text
L50:
	dd	_printHexVideo
	sub	sp, -8

section .rodata
L51:
	db	"      "
	times	1 db 0

section .text
; RPN'ized expression: "( L51 printStrVideo ) "
; Expanded expression: " L51  printStrVideo ()4 "
; Fused expression:    "( L51 , printStrVideo )4 "
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
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , SS_SO1H printHexVideo ) "
; Expanded expression: " 4  SS_SO1H *(2)  printHexVideo ()8 "
; Fused expression:    "( 4 , SS_SO1H *(2) ax , printHexVideo )8 "
	push	dword 4
section .relod
	dd	L54
section .text
	db	0x66, 0xB8
L54:
	dd	_SS_SO1H
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
	dd	L55
section .text
L55:
	dd	_printHexVideo
	sub	sp, -8
; RPN'ized expression: "( printLnVideo ) "
; Expanded expression: " printLnVideo ()0 "
; Fused expression:    "( printLnVideo )0 "
	db	0x9A
section .relot
	dd	L56
section .text
L56:
	dd	_printLnVideo
; RPN'ized expression: "( mostrarSecciones ) "
; Expanded expression: " mostrarSecciones ()0 "
; Fused expression:    "( mostrarSecciones )0 "
	db	0x9A
section .relot
	dd	L57
section .text
L57:
	dd	_mostrarSecciones
; RPN'ized expression: "( leerScancode ) "
; Expanded expression: " leerScancode ()0 "
; Fused expression:    "( leerScancode )0 "
	db	0x9A
section .relot
	dd	L58
section .text
L58:
	dd	_leerScancode
; RPN'ized expression: "( leerScancode ) "
; Expanded expression: " leerScancode ()0 "
; Fused expression:    "( leerScancode )0 "
	db	0x9A
section .relot
	dd	L59
section .text
L59:
	dd	_leerScancode
; {

section .rodata
L60:
	db	10," "
	times	1 db 0

section .text
; RPN'ized expression: "( L60 printStrVideo ) "
; Expanded expression: " L60  printStrVideo ()4 "
; Fused expression:    "( L60 , printStrVideo )4 "
section .relod
	dd	L61
section .text
	db	0x66, 0x68
L61:
	dd	L60
	db	0x9A
section .relot
	dd	L62
section .text
L62:
	dd	_printStrVideo
	sub	sp, -4

section .rodata
L63:
	db	"inicProcesos()"
	times	1 db 0

section .text
; RPN'ized expression: "( L63 printStrVideo ) "
; Expanded expression: " L63  printStrVideo ()4 "
; Fused expression:    "( L63 , printStrVideo )4 "
section .relod
	dd	L64
section .text
	db	0x66, 0x68
L64:
	dd	L63
	db	0x9A
section .relot
	dd	L65
section .text
L65:
	dd	_printStrVideo
	sub	sp, -4

section .rodata
L66:
	db	" ... "
	times	1 db 0

section .text
; RPN'ized expression: "( L66 printStrVideo ) "
; Expanded expression: " L66  printStrVideo ()4 "
; Fused expression:    "( L66 , printStrVideo )4 "
section .relod
	dd	L67
section .text
	db	0x66, 0x68
L67:
	dd	L66
	db	0x9A
section .relot
	dd	L68
section .text
L68:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( inicProcesos ) "
; Expanded expression: " inicProcesos ()0 "
; Fused expression:    "( inicProcesos )0 "
	db	0x9A
section .relot
	dd	L69
section .text
L69:
	dd	_inicProcesos
; }
; RPN'ized expression: "descProceso indProcesoActual + *u &u uid -> *u 0 = "
; Expanded expression: "descProceso indProcesoActual *(4) 292 * + 284 + 0 =(4) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 284 =(204) *ax 0 "
section .relod
	dd	L70
section .text
	db	0x66, 0xB8
L70:
	dd	_descProceso
	push	eax
section .relod
	dd	L71
section .text
	db	0x66, 0xB8
L71:
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
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; RPN'ized expression: "descProceso indProcesoActual + *u &u gid -> *u 0 = "
; Expanded expression: "descProceso indProcesoActual *(4) 292 * + 288 + 0 =(4) "
; Fused expression:    "descProceso push-ax indProcesoActual * *ax 292 + *sp ax + ax 288 =(204) *ax 0 "
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
	mov	eax, 0
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], eax
; {

section .rodata
L74:
	db	10," "
	times	1 db 0

section .text
; RPN'ized expression: "( L74 printStrVideo ) "
; Expanded expression: " L74  printStrVideo ()4 "
; Fused expression:    "( L74 , printStrVideo )4 "
section .relod
	dd	L75
section .text
	db	0x66, 0x68
L75:
	dd	L74
	db	0x9A
section .relot
	dd	L76
section .text
L76:
	dd	_printStrVideo
	sub	sp, -4

section .rodata
L77:
	db	"inicGM()"
	times	1 db 0

section .text
; RPN'ized expression: "( L77 printStrVideo ) "
; Expanded expression: " L77  printStrVideo ()4 "
; Fused expression:    "( L77 , printStrVideo )4 "
section .relod
	dd	L78
section .text
	db	0x66, 0x68
L78:
	dd	L77
	db	0x9A
section .relot
	dd	L79
section .text
L79:
	dd	_printStrVideo
	sub	sp, -4

section .rodata
L80:
	db	" ... "
	times	1 db 0

section .text
; RPN'ized expression: "( L80 printStrVideo ) "
; Expanded expression: " L80  printStrVideo ()4 "
; Fused expression:    "( L80 , printStrVideo )4 "
section .relod
	dd	L81
section .text
	db	0x66, 0x68
L81:
	dd	L80
	db	0x9A
section .relot
	dd	L82
section .text
L82:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( inicGM ) "
; Expanded expression: " inicGM ()0 "
; Fused expression:    "( inicGM )0 "
	db	0x9A
section .relot
	dd	L83
section .text
L83:
	dd	_inicGM
; }

section .rodata
L84:
	db	10
	db	10
	db	" tamBloqueMax = "
	times	1 db 0

section .text
; RPN'ized expression: "( L84 printStrVideo ) "
; Expanded expression: " L84  printStrVideo ()4 "
; Fused expression:    "( L84 , printStrVideo )4 "
section .relod
	dd	L85
section .text
	db	0x66, 0x68
L85:
	dd	L84
	db	0x9A
section .relot
	dd	L86
section .text
L86:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 1 , tamBloqueMax printDecVideo ) "
; Expanded expression: " 1  tamBloqueMax *(2)  printDecVideo ()8 "
; Fused expression:    "( 1 , tamBloqueMax *(2) ax , printDecVideo )8 "
	push	dword 1
section .relod
	dd	L87
section .text
	db	0x66, 0xB8
L87:
	dd	_tamBloqueMax
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
	dd	L88
section .text
L88:
	dd	_printDecVideo
	sub	sp, -8

section .rodata
L89:
	db	" paragrafos ("
	times	1 db 0

section .text
; RPN'ized expression: "( L89 printStrVideo ) "
; Expanded expression: " L89  printStrVideo ()4 "
; Fused expression:    "( L89 , printStrVideo )4 "
section .relod
	dd	L90
section .text
	db	0x66, 0x68
L90:
	dd	L89
	db	0x9A
section .relot
	dd	L91
section .text
L91:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , tamBloqueMax printHexVideo ) "
; Expanded expression: " 4  tamBloqueMax *(2)  printHexVideo ()8 "
; Fused expression:    "( 4 , tamBloqueMax *(2) ax , printHexVideo )8 "
	push	dword 4
section .relod
	dd	L92
section .text
	db	0x66, 0xB8
L92:
	dd	_tamBloqueMax
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
	dd	L93
section .text
L93:
	dd	_printHexVideo
	sub	sp, -8

section .rodata
L94:
	db	") = "
	times	1 db 0

section .text
; RPN'ized expression: "( L94 printStrVideo ) "
; Expanded expression: " L94  printStrVideo ()4 "
; Fused expression:    "( L94 , printStrVideo )4 "
section .relod
	dd	L95
section .text
	db	0x66, 0x68
L95:
	dd	L94
	db	0x9A
section .relot
	dd	L96
section .text
L96:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 1 , tamBloqueMax 1024 16 / / printDecVideo ) "
; Expanded expression: " 1  tamBloqueMax *(2) 64 /  printDecVideo ()8 "
; Fused expression:    "( 1 , tamBloqueMax / *ax 64 , printDecVideo )8 "
	push	dword 1
section .relod
	dd	L97
section .text
	db	0x66, 0xB8
L97:
	dd	_tamBloqueMax
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	cdq
	mov	ecx, 64
	idiv	ecx
	push	eax
	db	0x9A
section .relot
	dd	L98
section .text
L98:
	dd	_printDecVideo
	sub	sp, -8

section .rodata
L99:
	db	" KBytes"
	times	1 db 0

section .text
; RPN'ized expression: "( L99 printStrVideo ) "
; Expanded expression: " L99  printStrVideo ()4 "
; Fused expression:    "( L99 , printStrVideo )4 "
section .relod
	dd	L100
section .text
	db	0x66, 0x68
L100:
	dd	L99
	db	0x9A
section .relot
	dd	L101
section .text
L101:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( printLnVideo ) "
; Expanded expression: " printLnVideo ()0 "
; Fused expression:    "( printLnVideo )0 "
	db	0x9A
section .relot
	dd	L102
section .text
L102:
	dd	_printLnVideo
; RPN'ized expression: "( mostrarListaLibres ) "
; Expanded expression: " mostrarListaLibres ()0 "
; Fused expression:    "( mostrarListaLibres )0 "
	db	0x9A
section .relot
	dd	L103
section .text
L103:
	dd	_mostrarListaLibres

section .rodata
L104:
	db	10
	db	" SS_Kernel = "
	times	1 db 0

section .text
; RPN'ized expression: "( L104 printStrVideo ) "
; Expanded expression: " L104  printStrVideo ()4 "
; Fused expression:    "( L104 , printStrVideo )4 "
section .relod
	dd	L105
section .text
	db	0x66, 0x68
L105:
	dd	L104
	db	0x9A
section .relot
	dd	L106
section .text
L106:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , SS_Kernel printHexVideo ) "
; Expanded expression: " 4  SS_Kernel *(2)  printHexVideo ()8 "
; Fused expression:    "( 4 , SS_Kernel *(2) ax , printHexVideo )8 "
	push	dword 4
section .relod
	dd	L107
section .text
	db	0x66, 0xB8
L107:
	dd	_SS_Kernel
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
	dd	L108
section .text
L108:
	dd	_printHexVideo
	sub	sp, -8

section .rodata
L109:
	db	" SP0_Kernel = "
	times	1 db 0

section .text
; RPN'ized expression: "( L109 printStrVideo ) "
; Expanded expression: " L109  printStrVideo ()4 "
; Fused expression:    "( L109 , printStrVideo )4 "
section .relod
	dd	L110
section .text
	db	0x66, 0x68
L110:
	dd	L109
	db	0x9A
section .relot
	dd	L111
section .text
L111:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , 40960 printHexVideo ) "
; Expanded expression: " 4  40960  printHexVideo ()8 "
; Fused expression:    "( 4 , 40960 , printHexVideo )8 "
	push	dword 4
	push	dword 40960
	db	0x9A
section .relot
	dd	L112
section .text
L112:
	dd	_printHexVideo
	sub	sp, -8
; RPN'ized expression: "( printLnVideo ) "
; Expanded expression: " printLnVideo ()0 "
; Fused expression:    "( printLnVideo )0 "
	db	0x9A
section .relot
	dd	L113
section .text
L113:
	dd	_printLnVideo
; RPN'ized expression: "( mostrarListaLibres ) "
; Expanded expression: " mostrarListaLibres ()0 "
; Fused expression:    "( mostrarListaLibres )0 "
	db	0x9A
section .relot
	dd	L114
section .text
L114:
	dd	_mostrarListaLibres
; RPN'ized expression: "( leerScancode ) "
; Expanded expression: " leerScancode ()0 "
; Fused expression:    "( leerScancode )0 "
	db	0x9A
section .relot
	dd	L115
section .text
L115:
	dd	_leerScancode
; RPN'ized expression: "( leerScancode ) "
; Expanded expression: " leerScancode ()0 "
; Fused expression:    "( leerScancode )0 "
	db	0x9A
section .relot
	dd	L116
section .text
L116:
	dd	_leerScancode
; if
; RPN'ized expression: "( modoSO1 ) modoSO1_Bin == ( modoSO1 ) modoSO1_Bs == || "
; Expanded expression: " modoSO1 ()0 0 == [sh||->119]  modoSO1 ()0 2 == ||[119] "
; Fused expression:    "( modoSO1 )0 == ax 0 [sh||->119] ( modoSO1 )0 == ax 2 ||[119]  "
	db	0x9A
section .relot
	dd	L120
section .text
L120:
	dd	_modoSO1
	cmp	eax, 0
	sete	al
	movzx	eax, al
; JumpIfNotZero
	test	eax, eax
	jne	L119
	db	0x9A
section .relot
	dd	L121
section .text
L121:
	dd	_modoSO1
	cmp	eax, 2
	sete	al
	movzx	eax, al
L119:
; JumpIfZero
	test	eax, eax
	je	L117
; {

section .rodata
L122:
	db	10," unidadBIOS = 0x"
	times	1 db 0

section .text
; RPN'ized expression: "( L122 printStrVideo ) "
; Expanded expression: " L122  printStrVideo ()4 "
; Fused expression:    "( L122 , printStrVideo )4 "
section .relod
	dd	L123
section .text
	db	0x66, 0x68
L123:
	dd	L122
	db	0x9A
section .relot
	dd	L124
section .text
L124:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 2 , ( unidadBIOS ) printHexVideo ) "
; Expanded expression: " 2   unidadBIOS ()0  printHexVideo ()8 "
; Fused expression:    "( 2 , ( unidadBIOS )0 , printHexVideo )8 "
	push	dword 2
	db	0x9A
section .relot
	dd	L125
section .text
L125:
	dd	_unidadBIOS
	push	eax
	db	0x9A
section .relot
	dd	L126
section .text
L126:
	dd	_printHexVideo
	sub	sp, -8
; RPN'ized expression: "( printLnVideo ) "
; Expanded expression: " printLnVideo ()0 "
; Fused expression:    "( printLnVideo )0 "
	db	0x9A
section .relot
	dd	L127
section .text
L127:
	dd	_printLnVideo
; }
L117:
; RPN'ized expression: "IMRInicial ( valorIMR ) = "
; Expanded expression: "IMRInicial  valorIMR ()0 =(2) "
; Fused expression:    "IMRInicial push-ax ( valorIMR )0 =(172) **sp ax "
section .relod
	dd	L128
section .text
	db	0x66, 0xB8
L128:
	dd	_IMRInicial
	push	eax
	db	0x9A
section .relot
	dd	L129
section .text
L129:
	dd	_valorIMR
	pop	ebx
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	[si], ax
	movzx	eax, ax
; {

section .rodata
L130:
	db	10," "
	times	1 db 0

section .text
; RPN'ized expression: "( L130 printStrVideo ) "
; Expanded expression: " L130  printStrVideo ()4 "
; Fused expression:    "( L130 , printStrVideo )4 "
section .relod
	dd	L131
section .text
	db	0x66, 0x68
L131:
	dd	L130
	db	0x9A
section .relot
	dd	L132
section .text
L132:
	dd	_printStrVideo
	sub	sp, -4

section .rodata
L133:
	db	"inicTVI()"
	times	1 db 0

section .text
; RPN'ized expression: "( L133 printStrVideo ) "
; Expanded expression: " L133  printStrVideo ()4 "
; Fused expression:    "( L133 , printStrVideo )4 "
section .relod
	dd	L134
section .text
	db	0x66, 0x68
L134:
	dd	L133
	db	0x9A
section .relot
	dd	L135
section .text
L135:
	dd	_printStrVideo
	sub	sp, -4

section .rodata
L136:
	db	" ... "
	times	1 db 0

section .text
; RPN'ized expression: "( L136 printStrVideo ) "
; Expanded expression: " L136  printStrVideo ()4 "
; Fused expression:    "( L136 , printStrVideo )4 "
section .relod
	dd	L137
section .text
	db	0x66, 0x68
L137:
	dd	L136
	db	0x9A
section .relot
	dd	L138
section .text
L138:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( inicTVI ) "
; Expanded expression: " inicTVI ()0 "
; Fused expression:    "( inicTVI )0 "
	db	0x9A
section .relot
	dd	L139
section .text
L139:
	dd	_inicTVI
; }

section .rodata
L140:
	db	10," valorIMR() = "
	times	1 db 0

section .text
; RPN'ized expression: "( L140 printStrVideo ) "
; Expanded expression: " L140  printStrVideo ()4 "
; Fused expression:    "( L140 , printStrVideo )4 "
section .relod
	dd	L141
section .text
	db	0x66, 0x68
L141:
	dd	L140
	db	0x9A
section .relot
	dd	L142
section .text
L142:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , ( valorIMR ) printHexVideo ) "
; Expanded expression: " 4   valorIMR ()0  printHexVideo ()8 "
; Fused expression:    "( 4 , ( valorIMR )0 , printHexVideo )8 "
	push	dword 4
	db	0x9A
section .relot
	dd	L143
section .text
L143:
	dd	_valorIMR
	push	eax
	db	0x9A
section .relot
	dd	L144
section .text
L144:
	dd	_printHexVideo
	sub	sp, -8

section .rodata
L145:
	db	" = "
	times	1 db 0

section .text
; RPN'ized expression: "( L145 printStrVideo ) "
; Expanded expression: " L145  printStrVideo ()4 "
; Fused expression:    "( L145 , printStrVideo )4 "
section .relod
	dd	L146
section .text
	db	0x66, 0x68
L146:
	dd	L145
	db	0x9A
section .relot
	dd	L147
section .text
L147:
	dd	_printStrVideo
	sub	sp, -4
; for
; loc     i : (@-8): int
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-8) 0 =(4) "
; Fused expression:    "=(204) *(@-8) 0 "
	mov	eax, 0
	mov	[bp-8], eax
L148:
; RPN'ized expression: "i 4 < "
; Expanded expression: "(@-8) *(4) 4 < "
; Fused expression:    "< *(@-8) 4 IF! "
	mov	eax, [bp-8]
	cmp	eax, 4
	jge	L151
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-8) ++p(4) "
; {
; RPN'ized expression: "( 4 , ( valorIMR ) 12 i 4 * - >> 15 & printBinVideo ) "
; Expanded expression: " 4   valorIMR ()0 12 (@-8) *(4) 4 * - >> 15 &  printBinVideo ()8 "
; Fused expression:    "( 4 , ( valorIMR )0 push-ax * *(@-8) 4 - 12 ax >> *sp ax & ax 15 , printBinVideo )8 "
	push	dword 4
	db	0x9A
section .relot
	dd	L152
section .text
L152:
	dd	_valorIMR
	push	eax
	mov	eax, [bp-8]
	imul	eax, eax, 4
	mov	ecx, eax
	mov	eax, 12
	sub	eax, ecx
	mov	ecx, eax
	pop	eax
	sar	eax, cl
	and	eax, 15
	push	eax
	db	0x9A
section .relot
	dd	L153
section .text
L153:
	dd	_printBinVideo
	sub	sp, -8

section .rodata
L154:
	db	" "
	times	1 db 0

section .text
; RPN'ized expression: "( L154 printStrVideo ) "
; Expanded expression: " L154  printStrVideo ()4 "
; Fused expression:    "( L154 , printStrVideo )4 "
section .relod
	dd	L155
section .text
	db	0x66, 0x68
L155:
	dd	L154
	db	0x9A
section .relot
	dd	L156
section .text
L156:
	dd	_printStrVideo
	sub	sp, -4
; }
L149:
; Fused expression:    "++p(4) *(@-8) "
	mov	eax, [bp-8]
	inc	dword [bp-8]
	jmp	L148
L151:
; RPN'ized expression: "( printLnVideo ) "
; Expanded expression: " printLnVideo ()0 "
; Fused expression:    "( printLnVideo )0 "
	db	0x9A
section .relot
	dd	L157
section .text
L157:
	dd	_printLnVideo

section .rodata
L158:
	db	10," redirigirInt(nVIntSO1H, isr_SO1H)"
	times	1 db 0

section .text
; RPN'ized expression: "( L158 printStrVideo ) "
; Expanded expression: " L158  printStrVideo ()4 "
; Fused expression:    "( L158 , printStrVideo )4 "
section .relod
	dd	L159
section .text
	db	0x66, 0x68
L159:
	dd	L158
	db	0x9A
section .relot
	dd	L160
section .text
L160:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( isr_SO1H , 96 redirigirInt ) "
; Expanded expression: " isr_SO1H  96  redirigirInt ()8 "
; Fused expression:    "( isr_SO1H , 96 , redirigirInt )8 "
section .relod
	dd	L161
section .text
	db	0x66, 0x68
L161:
	dd	_isr_SO1H
	push	dword 96
	db	0x9A
section .relot
	dd	L162
section .text
L162:
	dd	_redirigirInt
	sub	sp, -8

section .rodata
L163:
	db	" nVIntSO1H = 0x"
	times	1 db 0

section .text
; RPN'ized expression: "( L163 printStrVideo ) "
; Expanded expression: " L163  printStrVideo ()4 "
; Fused expression:    "( L163 , printStrVideo )4 "
section .relod
	dd	L164
section .text
	db	0x66, 0x68
L164:
	dd	L163
	db	0x9A
section .relot
	dd	L165
section .text
L165:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 2 , 96 printHexVideo ) "
; Expanded expression: " 2  96  printHexVideo ()8 "
; Fused expression:    "( 2 , 96 , printHexVideo )8 "
	push	dword 2
	push	dword 96
	db	0x9A
section .relot
	dd	L166
section .text
L166:
	dd	_printHexVideo
	sub	sp, -8

section .rodata
L167:
	db	" isr_SO1H = 0x"
	times	1 db 0

section .text
; RPN'ized expression: "( L167 printStrVideo ) "
; Expanded expression: " L167  printStrVideo ()4 "
; Fused expression:    "( L167 , printStrVideo )4 "
section .relod
	dd	L168
section .text
	db	0x66, 0x68
L168:
	dd	L167
	db	0x9A
section .relot
	dd	L169
section .text
L169:
	dd	_printStrVideo
	sub	sp, -4
; loc     <something> : unsigned
; RPN'ized expression: "( 5 , isr_SO1H (something170) printLHexVideo ) "
; Expanded expression: " 5  isr_SO1H  printLHexVideo ()8 "
; Fused expression:    "( 5 , isr_SO1H , printLHexVideo )8 "
	push	dword 5
section .relod
	dd	L171
section .text
	db	0x66, 0x68
L171:
	dd	_isr_SO1H
	db	0x9A
section .relot
	dd	L172
section .text
L172:
	dd	_printLHexVideo
	sub	sp, -8

section .rodata
L173:
	db	10," Pulse una tecla para continuar ... "
	times	1 db 0

section .text
; RPN'ized expression: "( L173 printStrVideo ) "
; Expanded expression: " L173  printStrVideo ()4 "
; Fused expression:    "( L173 , printStrVideo )4 "
section .relod
	dd	L174
section .text
	db	0x66, 0x68
L174:
	dd	L173
	db	0x9A
section .relot
	dd	L175
section .text
L175:
	dd	_printStrVideo
	sub	sp, -4

section .rodata
L176:
	db	"       U N I V E R S I D A D _ P O L I T E C N I C A _ D E _  M A D R I D      "
	times	1 db 0

section .text
; RPN'ized expression: "( 79 , 21 , 0 , 3 , L176 demo_5 ) "
; Expanded expression: " 79  21  0  3  L176  demo_5 ()20 "
; Fused expression:    "( 79 , 21 , 0 , 3 , L176 , demo_5 )20 "
	push	dword 79
	push	dword 21
	push	dword 0
	push	dword 3
section .relod
	dd	L177
section .text
	db	0x66, 0x68
L177:
	dd	L176
	db	0x9A
section .relot
	dd	L178
section .text
L178:
	dd	_demo_5
	sub	sp, -20
; RPN'ized expression: "( leerScancode ) "
; Expanded expression: " leerScancode ()0 "
; Fused expression:    "( leerScancode )0 "
	db	0x9A
section .relot
	dd	L179
section .text
L179:
	dd	_leerScancode
; RPN'ized expression: "( leerScancode ) "
; Expanded expression: " leerScancode ()0 "
; Fused expression:    "( leerScancode )0 "
	db	0x9A
section .relot
	dd	L180
section .text
L180:
	dd	_leerScancode
; {

section .rodata
L181:
	db	10
	times	1 db 0

section .text
; RPN'ized expression: "( L181 printStrVideo ) "
; Expanded expression: " L181  printStrVideo ()4 "
; Fused expression:    "( L181 , printStrVideo )4 "
section .relod
	dd	L182
section .text
	db	0x66, 0x68
L182:
	dd	L181
	db	0x9A
section .relot
	dd	L183
section .text
L183:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( mostrarListaLibres ) "
; Expanded expression: " mostrarListaLibres ()0 "
; Fused expression:    "( mostrarListaLibres )0 "
	db	0x9A
section .relot
	dd	L184
section .text
L184:
	dd	_mostrarListaLibres

section .rodata
L185:
	db	10
	db	10
	db	" tamBloqueMax = "
	times	1 db 0

section .text
; RPN'ized expression: "( L185 printStrVideo ) "
; Expanded expression: " L185  printStrVideo ()4 "
; Fused expression:    "( L185 , printStrVideo )4 "
section .relod
	dd	L186
section .text
	db	0x66, 0x68
L186:
	dd	L185
	db	0x9A
section .relot
	dd	L187
section .text
L187:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 1 , tamBloqueMax printDecVideo ) "
; Expanded expression: " 1  tamBloqueMax *(2)  printDecVideo ()8 "
; Fused expression:    "( 1 , tamBloqueMax *(2) ax , printDecVideo )8 "
	push	dword 1
section .relod
	dd	L188
section .text
	db	0x66, 0xB8
L188:
	dd	_tamBloqueMax
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
	dd	L189
section .text
L189:
	dd	_printDecVideo
	sub	sp, -8

section .rodata
L190:
	db	" paragrafos ("
	times	1 db 0

section .text
; RPN'ized expression: "( L190 printStrVideo ) "
; Expanded expression: " L190  printStrVideo ()4 "
; Fused expression:    "( L190 , printStrVideo )4 "
section .relod
	dd	L191
section .text
	db	0x66, 0x68
L191:
	dd	L190
	db	0x9A
section .relot
	dd	L192
section .text
L192:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 4 , tamBloqueMax printHexVideo ) "
; Expanded expression: " 4  tamBloqueMax *(2)  printHexVideo ()8 "
; Fused expression:    "( 4 , tamBloqueMax *(2) ax , printHexVideo )8 "
	push	dword 4
section .relod
	dd	L193
section .text
	db	0x66, 0xB8
L193:
	dd	_tamBloqueMax
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
	dd	L194
section .text
L194:
	dd	_printHexVideo
	sub	sp, -8

section .rodata
L195:
	db	") = "
	times	1 db 0

section .text
; RPN'ized expression: "( L195 printStrVideo ) "
; Expanded expression: " L195  printStrVideo ()4 "
; Fused expression:    "( L195 , printStrVideo )4 "
section .relod
	dd	L196
section .text
	db	0x66, 0x68
L196:
	dd	L195
	db	0x9A
section .relot
	dd	L197
section .text
L197:
	dd	_printStrVideo
	sub	sp, -4
; RPN'ized expression: "( 1 , tamBloqueMax 1024 16 / / printDecVideo ) "
; Expanded expression: " 1  tamBloqueMax *(2) 64 /  printDecVideo ()8 "
; Fused expression:    "( 1 , tamBloqueMax / *ax 64 , printDecVideo )8 "
	push	dword 1
section .relod
	dd	L198
section .text
	db	0x66, 0xB8
L198:
	dd	_tamBloqueMax
	mov	ebx, eax
	mov	esi, ebx
	ror	esi, 4
	mov	ds, si
	shr	esi, 28
	mov	ax, [si]
	movzx	eax, ax
	cdq
	mov	ecx, 64
	idiv	ecx
	push	eax
	db	0x9A
section .relot
	dd	L199
section .text
L199:
	dd	_printDecVideo
	sub	sp, -8

section .rodata
L200:
	db	" KBytes"
	times	1 db 0

section .text
; RPN'ized expression: "( L200 printStrVideo ) "
; Expanded expression: " L200  printStrVideo ()4 "
; Fused expression:    "( L200 , printStrVideo )4 "
section .relod
	dd	L201
section .text
	db	0x66, 0x68
L201:
	dd	L200
	db	0x9A
section .relot
	dd	L202
section .text
L202:
	dd	_printStrVideo
	sub	sp, -4
; }
; RPN'ized expression: "( leerScancode ) "
; Expanded expression: " leerScancode ()0 "
; Fused expression:    "( leerScancode )0 "
	db	0x9A
section .relot
	dd	L203
section .text
L203:
	dd	_leerScancode
; RPN'ized expression: "( leerScancode ) "
; Expanded expression: " leerScancode ()0 "
; Fused expression:    "( leerScancode )0 "
	db	0x9A
section .relot
	dd	L204
section .text
L204:
	dd	_leerScancode
; RPN'ized expression: "( IMRInicial establecerIMR ) "
; Expanded expression: " IMRInicial *(2)  establecerIMR ()4 "
; Fused expression:    "( IMRInicial *(2) ax , establecerIMR )4 "
section .relod
	dd	L205
section .text
	db	0x66, 0xB8
L205:
	dd	_IMRInicial
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
	dd	L206
section .text
L206:
	dd	_establecerIMR
	sub	sp, -4
; RPN'ized expression: "( loQueHay tirarS0 ) "
; Expanded expression: " (@-4) *(2)  tirarS0 ()4 "
; Fused expression:    "( *(2) (@-4) , tirarS0 )4 "
	mov	ax, [bp-4]
	movzx	eax, ax
	push	eax
	db	0x9A
section .relot
	dd	L207
section .text
L207:
	dd	_tirarS0
	sub	sp, -4
; Fused expression:    "0  "
	mov	eax, 0
L1:
	db	0x66
	leave
	retf
L208:

section .fxnsz noalloc
	dd	L208 - _main


	extern	_modoSO1
	extern	_salvarPantallaInicial
	extern	_scrollBIOS
	extern	_inicMemVideo
	extern	_ocultaCursorBIOS
	extern	_mirarLoQueHay
	extern	_mostrarLoQueHay
	extern	_mostrarFlags
	extern	_printStrVideo
	extern	_printLnVideo
	extern	_valorFlags
	extern	_assert
	extern	_obtenerMapa
	extern	_CS_SO1H
	extern	_printHexVideo
	extern	_RO_SO1H
	extern	_DS_SO1H
	extern	_BSS_SO1H
	extern	_SS_SO1H
	extern	_mostrarSecciones
	extern	_leerScancode
	extern	_inicProcesos
	extern	_descProceso
	extern	_indProcesoActual
	extern	_inicGM
	extern	_tamBloqueMax
	extern	_printDecVideo
	extern	_mostrarListaLibres
	extern	_SS_Kernel
	extern	_unidadBIOS
	extern	_IMRInicial
	extern	_valorIMR
	extern	_inicTVI
	extern	_printBinVideo
	extern	_isr_SO1H
	extern	_redirigirInt
	extern	_printLHexVideo
	extern	_demo_5
	extern	_establecerIMR
	extern	_tirarS0

; Syntax/declaration table/stack:
; Bytes used: 18000/40960


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
; Ident HWLIST_t
; Ident KBDFLAGS_t
; Ident KBDSTATUS_t
; Ident VIDEOCONTROL_t
; Ident DRECSTATUS_t
; Ident DMOTORSTATUS_t
; Ident FDOPSTATUS_t
; Ident VIDEOSWITCHES_t
; Ident VGAOPTIONS_t
; Ident VIDEO_paramtbl
; Ident VIDEO_dynsavearea
; Ident VIDEO_text_charset
; Ident VIDEO_graph_charset
; Ident VIDEO_savetbl2
; Ident VIDEOSAVETBL_t
; Ident VPARAM_width
; Ident VPARAM_height
; Ident VPARAM_hchar
; Ident VPARAM_pagesize
; Ident VPARAM_SEQC
; Ident VPARAM_MISC
; Ident VPARAM_CRTC
; Ident VPARAM_ATC
; Ident VPARAM_GRC
; Ident VIDEOPARAM_t
; Ident IVT
; Ident COM_base
; Ident LPT_base
; Ident XBDA_seg
; Ident HW_list
; Ident relleno1
; Ident basemem_K
; Ident relleno2
; Ident KBD_flags
; Ident relleno3
; Ident KBD_bufhead
; Ident KBD_buftail
; Ident KBD_buffer
; Ident dRecStatus
; Ident dMotorStatus
; Ident motorShutoffCounter
; Ident fdOpStatus
; Ident relleno4
; Ident VIDEO_mode
; Ident VIDEO_width
; Ident VIDEO_pagesize
; Ident VIDEO_pageoff
; Ident CURSOR_pos
; Ident CURSOR_shape
; Ident VIDEO_pagActiva
; Ident CRTC_base
; Ident CRT_MODE
; Ident CRT_PALETTE
; Ident relleno5
; Ident BIOS_timer
; Ident BIOS_overflow
; Ident BIOS_ctrlbreak
; Ident BIOS_POSTreset
; Ident relleno6
; Ident BIOS_HD_cnt
; Ident relleno7
; Ident LPT_timeout
; Ident BIOS_4B_flags
; Ident COM_timeout
; Ident KBD_start
; Ident KBD_end1
; Ident VIDEO_lastrow
; Ident VIDEO_hchar
; Ident VIDEO_control
; Ident VIDEO_switches
; Ident VGA_options
; Ident VGA_DCC_index
; Ident relleno8
; Ident KBD_status
; Ident TIMER_waitflag
; Ident TIMER_waitmks
; Ident TIMER_active
; Ident relleno9
; Ident VIDEO_ptrtable
; Ident relleno10
; Ident IAC
; Ident BIOSAREA_t
; Ident ptrBiosArea
; Ident ptrFechaBios
; Ident salvarPantallaInicial
; Ident restaurarPantallaInicial
; Ident puntoDeParada
; Ident assert
; Ident condicion
; Ident valorFlags
; Ident mostrarFlags
; Ident debug_parar
; Ident inportb
; Ident port
; Ident inport
; Ident outport
; Ident val
; Ident outportb
; Ident inportb_r
; Ident outportb_r
; Ident contadorTimer0
; Ident ptrTVI
; Ident valorIMR
; Ident establecerIMR
; Ident nuevoIMR
; Ident mask_pic1
; Ident irq
; Ident mask_pic2
; Ident unmask_pic1
; Ident unmask_pic2
; Ident get_pic1_isr
; Ident get_pic2_isr
; Ident set_pics
; Ident irq0
; Ident irq8
; Ident pic_setup
; Ident enable_hwirq
; Ident hwirq
; Ident rti
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
; Ident puntoDeParadaSO1
; Ident leerScancodeListo
; Ident leerScancode
; Ident mirarLoQueHay
; Ident loQueHay
; Ident mostrarLoQueHay
; Ident tirarS0
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
; Ident _NONE
; Ident _MDA
; Ident _CGA
; Ident _EGACOLOR
; Ident _EGAMONO
; Ident _VGACOLOR
; Ident _VGAMONO
; Ident _MCGACOLOR
; Ident _MCGAMONO
; Ident _MDS_GENIUS
; Ident tipoAdaptador_t
; Ident _FONT08
; Ident _FONT14
; Ident _FONT15
; Ident _FONT16
; Ident fontSize_t
; Ident numColumnas
; Ident ptrPant
; Ident tipoAdaptador
; Ident redimensionable
; Ident fontSize
; Ident visibilidad
; Ident inicBiosCrt
; Ident finBiosCrt
; Ident getFontSize
; Ident getFilas
; Ident comprobarAdaptador
; Ident tipoDeAdaptador
; Ident setCursorVisibilidad
; Ident valorDeVisibilidad
; Ident setFontSize
; Ident size
; Ident set25x80
; Ident redimensionar
; Ident nFilas
; Ident nCols
; Ident printLnVideo
; Ident printStrVideo
; Ident printStrHastaVideo
; Ident printDecVideo
; Ident printLDecVideo
; Ident printIntVideo
; Ident printLIntVideo
; Ident printHexVideo
; Ident printLHexVideo
; Ident printBinVideo
; Ident printLBinVideo
; Ident printPtrVideo
; Ident printByteVideo
; Ident printWordVideo
; Ident printCadVideo
; Ident createProcess
; Ident exec
; Ident waitpid
; Ident statloc
; Ident kill
; Ident exit
; Ident setuid
; Ident setgid
; Ident close
; Ident df
; Ident tamBloqueMax
; Ident listaLibres
; Ident k_buscarBloque
; Ident k_devolverBloque
; Ident rec_gm
; Ident inicGM
; Ident mostrarListaLibres
; Ident link_gm_k
; Ident VIOrg
; Ident recVInt
; Ident redirigirInt
; Ident redirigirIntHardware
; Ident restablecerInt
; Ident inicTVI
; Ident link_ints
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
; Ident isr_SO1H
; Ident link_llamadas
; Ident inicRecursos
; Ident crearRec
; Ident dR
; Ident crearFich
; Ident destruirFich
; Ident destruirRec
; Ident link_recurs
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
; Ident demo_0
; Ident main
; Bytes used: 8183/16384

; Next label number: 209
; Compilation succeeded.
