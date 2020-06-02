opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 12 "C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\Main.c"
	psect config,class=CONFIG,delta=2 ;#
# 12 "C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\Main.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFFF & 0xFFFF & 0xFF7F & 0xFFFF & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_InitADC
	FNCALL	_main,_InitLCD
	FNCALL	_main,_GetADCValue
	FNCALL	_main,___lwtoft
	FNCALL	_main,_map
	FNCALL	_main,___fttol
	FNCALL	_main,___lwdiv
	FNCALL	_main,___wmul
	FNCALL	_main,_ClearLCDScreen
	FNCALL	_main,_WriteDataToLCD
	FNCALL	_ClearLCDScreen,_WriteCommandToLCD
	FNCALL	_InitLCD,_ToggleEpinOfLCD
	FNCALL	_InitLCD,_WriteCommandToLCD
	FNCALL	_WriteCommandToLCD,_ToggleEpinOfLCD
	FNCALL	_WriteDataToLCD,_ToggleEpinOfLCD
	FNCALL	_map,___ftneg
	FNCALL	_map,___ftadd
	FNCALL	_map,___ftdiv
	FNCALL	_map,___ftmul
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNROOT	_main
	global	_ADCON0
psect	text421,local,class=CODE,delta=2
global __ptext421
__ptext421:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTB
_PORTB	set	6
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_GO_nDONE
_GO_nDONE	set	250
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISA
_TRISA	set	133
	global	_TRISE
_TRISE	set	137
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISB1
_TRISB1	set	1073
	global	_TRISB4
_TRISB4	set	1076
	global	_TRISB5
_TRISB5	set	1077
	global	_TRISB6
_TRISB6	set	1078
	global	_TRISB7
_TRISB7	set	1079
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	file	"ADC.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	12
	global	main@digit4
main@digit4:	; 2 bytes @ 0xC
	ds	2
	global	main@digit3
main@digit3:	; 2 bytes @ 0xE
	ds	2
	global	main@ADC_value1
main@ADC_value1:	; 2 bytes @ 0x10
	ds	2
	global	main@ADC_value2
main@ADC_value2:	; 2 bytes @ 0x12
	ds	2
	global	main@ADC_value3
main@ADC_value3:	; 2 bytes @ 0x14
	ds	2
	global	main@ADC_value4
main@ADC_value4:	; 2 bytes @ 0x16
	ds	2
	global	main@ADC_value5
main@ADC_value5:	; 2 bytes @ 0x18
	ds	2
	global	main@ADC_value6
main@ADC_value6:	; 2 bytes @ 0x1A
	ds	2
	global	main@ADC_value7
main@ADC_value7:	; 2 bytes @ 0x1C
	ds	2
	global	main@ADC_value8
main@ADC_value8:	; 2 bytes @ 0x1E
	ds	2
	global	main@digit2
main@digit2:	; 2 bytes @ 0x20
	ds	2
	global	main@digit1
main@digit1:	; 2 bytes @ 0x22
	ds	2
	global	main@ADC_value
main@ADC_value:	; 2 bytes @ 0x24
	ds	2
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_InitADC
?_InitADC:	; 0 bytes @ 0x0
	global	??_InitADC
??_InitADC:	; 0 bytes @ 0x0
	global	?_InitLCD
?_InitLCD:	; 0 bytes @ 0x0
	global	?_ClearLCDScreen
?_ClearLCDScreen:	; 0 bytes @ 0x0
	global	?_WriteDataToLCD
?_WriteDataToLCD:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ToggleEpinOfLCD
?_ToggleEpinOfLCD:	; 0 bytes @ 0x0
	global	??_ToggleEpinOfLCD
??_ToggleEpinOfLCD:	; 0 bytes @ 0x0
	global	?_WriteCommandToLCD
?_WriteCommandToLCD:	; 0 bytes @ 0x0
	global	?_GetADCValue
?_GetADCValue:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	2
	global	??_GetADCValue
??_GetADCValue:	; 0 bytes @ 0x2
	global	??_WriteDataToLCD
??_WriteDataToLCD:	; 0 bytes @ 0x2
	global	??_WriteCommandToLCD
??_WriteCommandToLCD:	; 0 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	GetADCValue@Channel
GetADCValue@Channel:	; 1 bytes @ 0x4
	global	WriteCommandToLCD@Command
WriteCommandToLCD@Command:	; 1 bytes @ 0x4
	global	WriteDataToLCD@LCDChar
WriteDataToLCD@LCDChar:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	??_InitLCD
??_InitLCD:	; 0 bytes @ 0x5
	global	??_ClearLCDScreen
??_ClearLCDScreen:	; 0 bytes @ 0x5
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	ds	1
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x6
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x6
	ds	2
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	ds	2
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0xA
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xB
	ds	1
	global	??___lwtoft
??___lwtoft:	; 0 bytes @ 0xC
	ds	1
	global	??_map
??_map:	; 0 bytes @ 0xD
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___fttol
??___fttol:	; 0 bytes @ 0x0
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x4
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x5
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x9
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0xA
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0xA
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0xA
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0xA
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0xD
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x10
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x14
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x15
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x16
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x17
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x17
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x1A
	ds	3
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x1D
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x21
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x22
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x25
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x26
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x27
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x27
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x2A
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x2D
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x31
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x32
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x35
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x36
	ds	1
	global	?_map
?_map:	; 3 bytes @ 0x37
	global	map@value
map@value:	; 3 bytes @ 0x37
	ds	3
	global	map@x_min
map@x_min:	; 3 bytes @ 0x3A
	ds	3
	global	map@x_max
map@x_max:	; 3 bytes @ 0x3D
	ds	3
	global	map@y_min
map@y_min:	; 3 bytes @ 0x40
	ds	3
	global	map@y_max
map@y_max:	; 3 bytes @ 0x43
	ds	3
	global	_map$3459
_map$3459:	; 3 bytes @ 0x46
	ds	3
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     73      73
;; BANK1           80     38      38
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?_GetADCValue	unsigned int  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___ftneg	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___lwtoft	float  size(1) Largest target is 0
;;
;; ?_map	float  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___lwdiv
;;   _ClearLCDScreen->_WriteCommandToLCD
;;   _InitLCD->_WriteCommandToLCD
;;   _WriteCommandToLCD->_ToggleEpinOfLCD
;;   _WriteDataToLCD->_ToggleEpinOfLCD
;;   _map->___lwtoft
;;   ___lwtoft->___fttol
;;   ___ftmul->___fttol
;;   ___ftdiv->___fttol
;;   ___ftadd->___fttol
;;   ___fttol->___ftpack
;;   ___lwdiv->___wmul
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_map
;;   _map->___ftmul
;;   ___lwtoft->___fttol
;;   ___ftmul->___ftdiv
;;   ___ftdiv->___ftadd
;;   ___ftadd->___fttol
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 12, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                38    38      0    3876
;;                                              0 BANK1     38    38      0
;;                            _InitADC
;;                            _InitLCD
;;                        _GetADCValue
;;                           ___lwtoft
;;                                _map
;;                            ___fttol
;;                            ___lwdiv
;;                             ___wmul
;;                     _ClearLCDScreen
;;                     _WriteDataToLCD
;; ---------------------------------------------------------------------------------
;; (1) _ClearLCDScreen                                       2     2      0      44
;;                                              5 COMMON     2     2      0
;;                  _WriteCommandToLCD
;; ---------------------------------------------------------------------------------
;; (1) _InitLCD                                              3     3      0      44
;;                                              5 COMMON     3     3      0
;;                    _ToggleEpinOfLCD
;;                  _WriteCommandToLCD
;; ---------------------------------------------------------------------------------
;; (2) _WriteCommandToLCD                                    3     3      0      44
;;                                              2 COMMON     3     3      0
;;                    _ToggleEpinOfLCD
;; ---------------------------------------------------------------------------------
;; (1) _WriteDataToLCD                                       3     3      0      44
;;                                              2 COMMON     3     3      0
;;                    _ToggleEpinOfLCD
;; ---------------------------------------------------------------------------------
;; (1) _map                                                 18     3     15    2295
;;                                             55 BANK0     18     3     15
;;                            ___ftneg
;;                            ___ftadd
;;                            ___ftdiv
;;                            ___ftmul
;;                           ___lwtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___lwtoft                                             4     1      3     231
;;                                             12 COMMON     1     1      0
;;                                             10 BANK0      3     0      3
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             16    10      6     535
;;                                             39 BANK0     16    10      6
;;                           ___ftpack
;;                            ___fttol (ARG)
;;                            ___ftdiv (ARG)
;;                            ___ftadd (ARG)
;;                            ___ftneg (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftdiv                                             16    10      6     489
;;                                             23 BANK0     16    10      6
;;                           ___ftpack
;;                            ___fttol (ARG)
;;                            ___ftadd (ARG)
;;                            ___ftneg (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftadd                                             13     7      6    1049
;;                                             10 BANK0     13     7      6
;;                           ___ftpack
;;                            ___fttol (ARG)
;;                            ___ftneg (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _ToggleEpinOfLCD                                      2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _GetADCValue                                          5     3      2      22
;;                                              0 COMMON     5     3      2
;; ---------------------------------------------------------------------------------
;; (2) ___ftneg                                              3     0      3      45
;;                                              0 COMMON     3     0      3
;; ---------------------------------------------------------------------------------
;; (1) ___fttol                                             14    10      4     252
;;                                              8 COMMON     4     0      4
;;                                              0 BANK0     10    10      0
;;                            ___ftneg (ARG)
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              8     4      4     162
;;                                              6 COMMON     8     4      4
;;                             ___wmul (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (1) _InitADC                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _InitADC
;;   _InitLCD
;;     _ToggleEpinOfLCD
;;     _WriteCommandToLCD
;;       _ToggleEpinOfLCD
;;   _GetADCValue
;;   ___lwtoft
;;     ___ftpack
;;     ___fttol (ARG)
;;       ___ftneg (ARG)
;;       ___ftpack (ARG)
;;   _map
;;     ___ftneg
;;     ___ftadd
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___ftneg (ARG)
;;     ___ftdiv
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___ftadd (ARG)
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___ftneg (ARG)
;;       ___ftneg (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___ftdiv (ARG)
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___ftadd (ARG)
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftneg (ARG)
;;             ___ftpack (ARG)
;;           ___ftneg (ARG)
;;         ___ftneg (ARG)
;;       ___ftadd (ARG)
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___ftneg (ARG)
;;       ___ftneg (ARG)
;;     ___lwtoft (ARG)
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftneg (ARG)
;;         ___ftpack (ARG)
;;     ___fttol (ARG)
;;       ___ftneg (ARG)
;;       ___ftpack (ARG)
;;   ___fttol
;;     ___ftneg (ARG)
;;     ___ftpack (ARG)
;;   ___lwdiv
;;     ___wmul (ARG)
;;   ___wmul
;;   _ClearLCDScreen
;;     _WriteCommandToLCD
;;       _ToggleEpinOfLCD
;;   _WriteDataToLCD
;;     _ToggleEpinOfLCD
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     49      49       5       91.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     26      26       7       47.5%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ADC_value       2   36[BANK1 ] unsigned int 
;;  digit1          2   34[BANK1 ] unsigned int 
;;  digit2          2   32[BANK1 ] unsigned int 
;;  ADC_value8      2   30[BANK1 ] unsigned int 
;;  ADC_value7      2   28[BANK1 ] unsigned int 
;;  ADC_value6      2   26[BANK1 ] unsigned int 
;;  ADC_value5      2   24[BANK1 ] unsigned int 
;;  ADC_value4      2   22[BANK1 ] unsigned int 
;;  ADC_value3      2   20[BANK1 ] unsigned int 
;;  ADC_value2      2   18[BANK1 ] unsigned int 
;;  ADC_value1      2   16[BANK1 ] unsigned int 
;;  digit3          2   14[BANK1 ] unsigned int 
;;  digit4          2   12[BANK1 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      26       0       0
;;      Temps:          0       0      12       0       0
;;      Totals:         0       0      38       0       0
;;Total ram usage:       38 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_InitADC
;;		_InitLCD
;;		_GetADCValue
;;		___lwtoft
;;		_map
;;		___fttol
;;		___lwdiv
;;		___wmul
;;		_ClearLCDScreen
;;		_WriteDataToLCD
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\Main.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l5018:	
;Main.c: 18: unsigned int ADC_value = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@ADC_value)^080h
	clrf	(main@ADC_value+1)^080h
	line	19
;Main.c: 19: unsigned int ADC_value1 = 0;
	clrf	(main@ADC_value1)^080h
	clrf	(main@ADC_value1+1)^080h
	line	20
;Main.c: 20: unsigned int ADC_value2 = 0;
	clrf	(main@ADC_value2)^080h
	clrf	(main@ADC_value2+1)^080h
	line	21
;Main.c: 21: unsigned int ADC_value3 = 0;
	clrf	(main@ADC_value3)^080h
	clrf	(main@ADC_value3+1)^080h
	line	22
;Main.c: 22: unsigned int ADC_value4 = 0;
	clrf	(main@ADC_value4)^080h
	clrf	(main@ADC_value4+1)^080h
	line	23
;Main.c: 23: unsigned int ADC_value5 = 0;
	clrf	(main@ADC_value5)^080h
	clrf	(main@ADC_value5+1)^080h
	line	24
;Main.c: 24: unsigned int ADC_value6 = 0;
	clrf	(main@ADC_value6)^080h
	clrf	(main@ADC_value6+1)^080h
	line	25
;Main.c: 25: unsigned int ADC_value7 = 0;
	clrf	(main@ADC_value7)^080h
	clrf	(main@ADC_value7+1)^080h
	line	26
;Main.c: 26: unsigned int ADC_value8 = 0;
	clrf	(main@ADC_value8)^080h
	clrf	(main@ADC_value8+1)^080h
	line	28
	
l5020:	
;Main.c: 27: unsigned int digit1, digit2, digit3, digit4;
;Main.c: 28: InitADC();
	fcall	_InitADC
	line	29
	
l5022:	
;Main.c: 29: InitLCD();
	fcall	_InitLCD
	goto	l5024
	line	31
;Main.c: 31: while(1)
	
l655:	
	line	34
	
l5024:	
;Main.c: 32: {
;Main.c: 34: ADC_value1 = GetADCValue(1);
	movlw	(01h)
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@ADC_value1+1)^080h
	addwf	(main@ADC_value1+1)^080h
	movf	(0+(?_GetADCValue)),w
	clrf	(main@ADC_value1)^080h
	addwf	(main@ADC_value1)^080h

	line	35
	
l5026:	
;Main.c: 35: ADC_value1=map(ADC_value1, 0, 1023, 0, 125);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_map)+0Ch
	movlw	0xfa
	movwf	1+(?_map)+0Ch
	movlw	0x42
	movwf	2+(?_map)+0Ch
	movlw	0x0
	movwf	0+(?_map)+09h
	movlw	0x0
	movwf	1+(?_map)+09h
	movlw	0x0
	movwf	2+(?_map)+09h
	movlw	0xc0
	movwf	0+(?_map)+06h
	movlw	0x7f
	movwf	1+(?_map)+06h
	movlw	0x44
	movwf	2+(?_map)+06h
	movlw	0x0
	movwf	0+(?_map)+03h
	movlw	0x0
	movwf	1+(?_map)+03h
	movlw	0x0
	movwf	2+(?_map)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@ADC_value1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@ADC_value1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	(?_map)
	movf	(1+(?___lwtoft)),w
	movwf	(?_map+1)
	movf	(2+(?___lwtoft)),w
	movwf	(?_map+2)
	fcall	_map
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_map)),w
	movwf	(?___fttol)
	movf	(1+(?_map)),w
	movwf	(?___fttol+1)
	movf	(2+(?_map)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@ADC_value1+1)^080h
	addwf	(main@ADC_value1+1)^080h
	movf	0+(((0+(?___fttol)))),w
	clrf	(main@ADC_value1)^080h
	addwf	(main@ADC_value1)^080h

	line	36
	
l5028:	
;Main.c: 36: ADC_value2 = GetADCValue(2);
	movlw	(02h)
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@ADC_value2+1)^080h
	addwf	(main@ADC_value2+1)^080h
	movf	(0+(?_GetADCValue)),w
	clrf	(main@ADC_value2)^080h
	addwf	(main@ADC_value2)^080h

	line	37
	
l5030:	
;Main.c: 37: ADC_value2=map(ADC_value2, 0, 1023, 0, 125);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_map)+0Ch
	movlw	0xfa
	movwf	1+(?_map)+0Ch
	movlw	0x42
	movwf	2+(?_map)+0Ch
	movlw	0x0
	movwf	0+(?_map)+09h
	movlw	0x0
	movwf	1+(?_map)+09h
	movlw	0x0
	movwf	2+(?_map)+09h
	movlw	0xc0
	movwf	0+(?_map)+06h
	movlw	0x7f
	movwf	1+(?_map)+06h
	movlw	0x44
	movwf	2+(?_map)+06h
	movlw	0x0
	movwf	0+(?_map)+03h
	movlw	0x0
	movwf	1+(?_map)+03h
	movlw	0x0
	movwf	2+(?_map)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@ADC_value2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@ADC_value2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	(?_map)
	movf	(1+(?___lwtoft)),w
	movwf	(?_map+1)
	movf	(2+(?___lwtoft)),w
	movwf	(?_map+2)
	fcall	_map
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_map)),w
	movwf	(?___fttol)
	movf	(1+(?_map)),w
	movwf	(?___fttol+1)
	movf	(2+(?_map)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@ADC_value2+1)^080h
	addwf	(main@ADC_value2+1)^080h
	movf	0+(((0+(?___fttol)))),w
	clrf	(main@ADC_value2)^080h
	addwf	(main@ADC_value2)^080h

	line	38
	
l5032:	
;Main.c: 38: ADC_value3 = GetADCValue(3);
	movlw	(03h)
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@ADC_value3+1)^080h
	addwf	(main@ADC_value3+1)^080h
	movf	(0+(?_GetADCValue)),w
	clrf	(main@ADC_value3)^080h
	addwf	(main@ADC_value3)^080h

	line	39
	
l5034:	
;Main.c: 39: ADC_value3=map(ADC_value3, 0, 1023, 0, 125);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_map)+0Ch
	movlw	0xfa
	movwf	1+(?_map)+0Ch
	movlw	0x42
	movwf	2+(?_map)+0Ch
	movlw	0x0
	movwf	0+(?_map)+09h
	movlw	0x0
	movwf	1+(?_map)+09h
	movlw	0x0
	movwf	2+(?_map)+09h
	movlw	0xc0
	movwf	0+(?_map)+06h
	movlw	0x7f
	movwf	1+(?_map)+06h
	movlw	0x44
	movwf	2+(?_map)+06h
	movlw	0x0
	movwf	0+(?_map)+03h
	movlw	0x0
	movwf	1+(?_map)+03h
	movlw	0x0
	movwf	2+(?_map)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@ADC_value3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@ADC_value3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	(?_map)
	movf	(1+(?___lwtoft)),w
	movwf	(?_map+1)
	movf	(2+(?___lwtoft)),w
	movwf	(?_map+2)
	fcall	_map
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_map)),w
	movwf	(?___fttol)
	movf	(1+(?_map)),w
	movwf	(?___fttol+1)
	movf	(2+(?_map)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@ADC_value3+1)^080h
	addwf	(main@ADC_value3+1)^080h
	movf	0+(((0+(?___fttol)))),w
	clrf	(main@ADC_value3)^080h
	addwf	(main@ADC_value3)^080h

	line	40
	
l5036:	
;Main.c: 40: ADC_value4 = GetADCValue(4);
	movlw	(04h)
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@ADC_value4+1)^080h
	addwf	(main@ADC_value4+1)^080h
	movf	(0+(?_GetADCValue)),w
	clrf	(main@ADC_value4)^080h
	addwf	(main@ADC_value4)^080h

	line	41
	
l5038:	
;Main.c: 41: ADC_value4=map(ADC_value4, 0, 1023, 0, 125);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_map)+0Ch
	movlw	0xfa
	movwf	1+(?_map)+0Ch
	movlw	0x42
	movwf	2+(?_map)+0Ch
	movlw	0x0
	movwf	0+(?_map)+09h
	movlw	0x0
	movwf	1+(?_map)+09h
	movlw	0x0
	movwf	2+(?_map)+09h
	movlw	0xc0
	movwf	0+(?_map)+06h
	movlw	0x7f
	movwf	1+(?_map)+06h
	movlw	0x44
	movwf	2+(?_map)+06h
	movlw	0x0
	movwf	0+(?_map)+03h
	movlw	0x0
	movwf	1+(?_map)+03h
	movlw	0x0
	movwf	2+(?_map)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@ADC_value4+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@ADC_value4)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	(?_map)
	movf	(1+(?___lwtoft)),w
	movwf	(?_map+1)
	movf	(2+(?___lwtoft)),w
	movwf	(?_map+2)
	fcall	_map
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_map)),w
	movwf	(?___fttol)
	movf	(1+(?_map)),w
	movwf	(?___fttol+1)
	movf	(2+(?_map)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@ADC_value4+1)^080h
	addwf	(main@ADC_value4+1)^080h
	movf	0+(((0+(?___fttol)))),w
	clrf	(main@ADC_value4)^080h
	addwf	(main@ADC_value4)^080h

	line	42
	
l5040:	
;Main.c: 42: ADC_value5 = GetADCValue(5);
	movlw	(05h)
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@ADC_value5+1)^080h
	addwf	(main@ADC_value5+1)^080h
	movf	(0+(?_GetADCValue)),w
	clrf	(main@ADC_value5)^080h
	addwf	(main@ADC_value5)^080h

	line	43
	
l5042:	
;Main.c: 43: ADC_value5=map(ADC_value5, 0, 1023, 0, 125);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_map)+0Ch
	movlw	0xfa
	movwf	1+(?_map)+0Ch
	movlw	0x42
	movwf	2+(?_map)+0Ch
	movlw	0x0
	movwf	0+(?_map)+09h
	movlw	0x0
	movwf	1+(?_map)+09h
	movlw	0x0
	movwf	2+(?_map)+09h
	movlw	0xc0
	movwf	0+(?_map)+06h
	movlw	0x7f
	movwf	1+(?_map)+06h
	movlw	0x44
	movwf	2+(?_map)+06h
	movlw	0x0
	movwf	0+(?_map)+03h
	movlw	0x0
	movwf	1+(?_map)+03h
	movlw	0x0
	movwf	2+(?_map)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@ADC_value5+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@ADC_value5)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	(?_map)
	movf	(1+(?___lwtoft)),w
	movwf	(?_map+1)
	movf	(2+(?___lwtoft)),w
	movwf	(?_map+2)
	fcall	_map
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_map)),w
	movwf	(?___fttol)
	movf	(1+(?_map)),w
	movwf	(?___fttol+1)
	movf	(2+(?_map)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@ADC_value5+1)^080h
	addwf	(main@ADC_value5+1)^080h
	movf	0+(((0+(?___fttol)))),w
	clrf	(main@ADC_value5)^080h
	addwf	(main@ADC_value5)^080h

	line	44
	
l5044:	
;Main.c: 44: ADC_value6 = GetADCValue(6);
	movlw	(06h)
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@ADC_value6+1)^080h
	addwf	(main@ADC_value6+1)^080h
	movf	(0+(?_GetADCValue)),w
	clrf	(main@ADC_value6)^080h
	addwf	(main@ADC_value6)^080h

	line	45
	
l5046:	
;Main.c: 45: ADC_value6=map(ADC_value6, 0, 1023, 0, 125);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_map)+0Ch
	movlw	0xfa
	movwf	1+(?_map)+0Ch
	movlw	0x42
	movwf	2+(?_map)+0Ch
	movlw	0x0
	movwf	0+(?_map)+09h
	movlw	0x0
	movwf	1+(?_map)+09h
	movlw	0x0
	movwf	2+(?_map)+09h
	movlw	0xc0
	movwf	0+(?_map)+06h
	movlw	0x7f
	movwf	1+(?_map)+06h
	movlw	0x44
	movwf	2+(?_map)+06h
	movlw	0x0
	movwf	0+(?_map)+03h
	movlw	0x0
	movwf	1+(?_map)+03h
	movlw	0x0
	movwf	2+(?_map)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@ADC_value6+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@ADC_value6)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	(?_map)
	movf	(1+(?___lwtoft)),w
	movwf	(?_map+1)
	movf	(2+(?___lwtoft)),w
	movwf	(?_map+2)
	fcall	_map
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_map)),w
	movwf	(?___fttol)
	movf	(1+(?_map)),w
	movwf	(?___fttol+1)
	movf	(2+(?_map)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@ADC_value6+1)^080h
	addwf	(main@ADC_value6+1)^080h
	movf	0+(((0+(?___fttol)))),w
	clrf	(main@ADC_value6)^080h
	addwf	(main@ADC_value6)^080h

	line	46
	
l5048:	
;Main.c: 46: ADC_value7 = GetADCValue(7);
	movlw	(07h)
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@ADC_value7+1)^080h
	addwf	(main@ADC_value7+1)^080h
	movf	(0+(?_GetADCValue)),w
	clrf	(main@ADC_value7)^080h
	addwf	(main@ADC_value7)^080h

	line	47
	
l5050:	
;Main.c: 47: ADC_value7=map(ADC_value7, 0, 1023, 0, 125);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_map)+0Ch
	movlw	0xfa
	movwf	1+(?_map)+0Ch
	movlw	0x42
	movwf	2+(?_map)+0Ch
	movlw	0x0
	movwf	0+(?_map)+09h
	movlw	0x0
	movwf	1+(?_map)+09h
	movlw	0x0
	movwf	2+(?_map)+09h
	movlw	0xc0
	movwf	0+(?_map)+06h
	movlw	0x7f
	movwf	1+(?_map)+06h
	movlw	0x44
	movwf	2+(?_map)+06h
	movlw	0x0
	movwf	0+(?_map)+03h
	movlw	0x0
	movwf	1+(?_map)+03h
	movlw	0x0
	movwf	2+(?_map)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@ADC_value7+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@ADC_value7)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	(?_map)
	movf	(1+(?___lwtoft)),w
	movwf	(?_map+1)
	movf	(2+(?___lwtoft)),w
	movwf	(?_map+2)
	fcall	_map
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_map)),w
	movwf	(?___fttol)
	movf	(1+(?_map)),w
	movwf	(?___fttol+1)
	movf	(2+(?_map)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@ADC_value7+1)^080h
	addwf	(main@ADC_value7+1)^080h
	movf	0+(((0+(?___fttol)))),w
	clrf	(main@ADC_value7)^080h
	addwf	(main@ADC_value7)^080h

	line	48
	
l5052:	
;Main.c: 48: ADC_value8 = GetADCValue(0);
	movlw	(0)
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@ADC_value8+1)^080h
	addwf	(main@ADC_value8+1)^080h
	movf	(0+(?_GetADCValue)),w
	clrf	(main@ADC_value8)^080h
	addwf	(main@ADC_value8)^080h

	line	49
	
l5054:	
;Main.c: 49: ADC_value8=map(ADC_value8, 0, 1023, 0, 125);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_map)+0Ch
	movlw	0xfa
	movwf	1+(?_map)+0Ch
	movlw	0x42
	movwf	2+(?_map)+0Ch
	movlw	0x0
	movwf	0+(?_map)+09h
	movlw	0x0
	movwf	1+(?_map)+09h
	movlw	0x0
	movwf	2+(?_map)+09h
	movlw	0xc0
	movwf	0+(?_map)+06h
	movlw	0x7f
	movwf	1+(?_map)+06h
	movlw	0x44
	movwf	2+(?_map)+06h
	movlw	0x0
	movwf	0+(?_map)+03h
	movlw	0x0
	movwf	1+(?_map)+03h
	movlw	0x0
	movwf	2+(?_map)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@ADC_value8+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@ADC_value8)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	(?_map)
	movf	(1+(?___lwtoft)),w
	movwf	(?_map+1)
	movf	(2+(?___lwtoft)),w
	movwf	(?_map+2)
	fcall	_map
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_map)),w
	movwf	(?___fttol)
	movf	(1+(?_map)),w
	movwf	(?___fttol+1)
	movf	(2+(?_map)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@ADC_value8+1)^080h
	addwf	(main@ADC_value8+1)^080h
	movf	0+(((0+(?___fttol)))),w
	clrf	(main@ADC_value8)^080h
	addwf	(main@ADC_value8)^080h

	line	50
	
l5056:	
;Main.c: 50: ADC_value=ADC_value1+ADC_value2+ADC_value3+ADC_value4+ADC_value5+ADC_value6+ADC_value7+ADC_value8;
	movf	(main@ADC_value2)^080h,w
	addwf	(main@ADC_value1)^080h,w
	movwf	(??_main+0)^080h+0
	movf	(main@ADC_value2+1)^080h,w
	skipnc
	incf	(main@ADC_value2+1)^080h,w
	addwf	(main@ADC_value1+1)^080h,w
	movwf	1+(??_main+0)^080h+0
	movf	(main@ADC_value3)^080h,w
	addwf	0+(??_main+0)^080h+0,w
	movwf	(??_main+2)^080h+0
	movf	(main@ADC_value3+1)^080h,w
	skipnc
	incf	(main@ADC_value3+1)^080h,w
	addwf	1+(??_main+0)^080h+0,w
	movwf	1+(??_main+2)^080h+0
	movf	(main@ADC_value4)^080h,w
	addwf	0+(??_main+2)^080h+0,w
	movwf	(??_main+4)^080h+0
	movf	(main@ADC_value4+1)^080h,w
	skipnc
	incf	(main@ADC_value4+1)^080h,w
	addwf	1+(??_main+2)^080h+0,w
	movwf	1+(??_main+4)^080h+0
	movf	(main@ADC_value5)^080h,w
	addwf	0+(??_main+4)^080h+0,w
	movwf	(??_main+6)^080h+0
	movf	(main@ADC_value5+1)^080h,w
	skipnc
	incf	(main@ADC_value5+1)^080h,w
	addwf	1+(??_main+4)^080h+0,w
	movwf	1+(??_main+6)^080h+0
	movf	(main@ADC_value6)^080h,w
	addwf	0+(??_main+6)^080h+0,w
	movwf	(??_main+8)^080h+0
	movf	(main@ADC_value6+1)^080h,w
	skipnc
	incf	(main@ADC_value6+1)^080h,w
	addwf	1+(??_main+6)^080h+0,w
	movwf	1+(??_main+8)^080h+0
	movf	(main@ADC_value7)^080h,w
	addwf	0+(??_main+8)^080h+0,w
	movwf	(??_main+10)^080h+0
	movf	(main@ADC_value7+1)^080h,w
	skipnc
	incf	(main@ADC_value7+1)^080h,w
	addwf	1+(??_main+8)^080h+0,w
	movwf	1+(??_main+10)^080h+0
	movf	(main@ADC_value8)^080h,w
	addwf	0+(??_main+10)^080h+0,w
	movwf	(main@ADC_value)^080h
	movf	(main@ADC_value8+1)^080h,w
	skipnc
	incf	(main@ADC_value8+1)^080h,w
	addwf	1+(??_main+10)^080h+0,w
	movwf	1+(main@ADC_value)^080h
	line	51
	
l5058:	
;Main.c: 51: digit1 = (unsigned int)(ADC_value/1000);
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(main@ADC_value+1)^080h,w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(main@ADC_value)^080h,w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@digit1+1)^080h
	addwf	(main@digit1+1)^080h
	movf	(0+(?___lwdiv)),w
	clrf	(main@digit1)^080h
	addwf	(main@digit1)^080h

	line	52
	
l5060:	
;Main.c: 52: digit2 = (unsigned int)((ADC_value - digit1*1000)/100);
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(main@digit1+1)^080h,w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(main@digit1)^080h,w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(03E8h)
	movwf	0+(?___wmul)+02h
	movlw	high(03E8h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	comf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	comf	(1+(?___wmul)),w
	movwf	((??_main+0)^080h+0+1)
	incf	(??_main+0)^080h+0,f
	skipnz
	incf	((??_main+0)^080h+0+1),f
	movf	(main@ADC_value)^080h,w
	addwf	0+(??_main+0)^080h+0,w
	movwf	0+(?___lwdiv)+02h
	movf	(main@ADC_value+1)^080h,w
	skipnc
	incf	(main@ADC_value+1)^080h,w
	addwf	1+(??_main+0)^080h+0,w
	movwf	1+0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@digit2+1)^080h
	addwf	(main@digit2+1)^080h
	movf	(0+(?___lwdiv)),w
	clrf	(main@digit2)^080h
	addwf	(main@digit2)^080h

	line	53
	
l5062:	
;Main.c: 53: digit3 = (unsigned int)((ADC_value - (digit1*1000+digit2*100))/10);
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(main@digit1+1)^080h,w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(main@digit1)^080h,w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(03E8h)
	movwf	0+(?___wmul)+02h
	movlw	high(03E8h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+?___wmul),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(1+?___wmul),w
	movwf	((??_main+0)^080h+0+1)
	movf	(main@digit2+1)^080h,w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(main@digit2)^080h,w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	0+(??_main+0)^080h+0,w
	movwf	(??_main+2)^080h+0
	movf	(1+(?___wmul)),w
	skipnc
	incf	(1+(?___wmul)),w
	addwf	1+(??_main+0)^080h+0,w
	movwf	1+(??_main+2)^080h+0
	comf	(??_main+2)^080h+0,f
	comf	(??_main+2)^080h+1,f
	incf	(??_main+2)^080h+0,f
	skipnz
	incf	(??_main+2)^080h+1,f
	movf	(main@ADC_value)^080h,w
	addwf	0+(??_main+2)^080h+0,w
	movwf	0+(?___lwdiv)+02h
	movf	(main@ADC_value+1)^080h,w
	skipnc
	incf	(main@ADC_value+1)^080h,w
	addwf	1+(??_main+2)^080h+0,w
	movwf	1+0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@digit3+1)^080h
	addwf	(main@digit3+1)^080h
	movf	(0+(?___lwdiv)),w
	clrf	(main@digit3)^080h
	addwf	(main@digit3)^080h

	line	54
	
l5064:	
;Main.c: 54: digit4 = (unsigned int)(ADC_value - (digit1*1000+digit2*100+digit3*10));
	movf	(main@digit1+1)^080h,w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(main@digit1)^080h,w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(03E8h)
	movwf	0+(?___wmul)+02h
	movlw	high(03E8h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+?___wmul),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(1+?___wmul),w
	movwf	((??_main+0)^080h+0+1)
	movf	(main@digit2+1)^080h,w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(main@digit2)^080h,w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	0+(??_main+0)^080h+0,w
	movwf	(??_main+2)^080h+0
	movf	(1+(?___wmul)),w
	skipnc
	incf	(1+(?___wmul)),w
	addwf	1+(??_main+0)^080h+0,w
	movwf	1+(??_main+2)^080h+0
	movf	(main@digit3+1)^080h,w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(main@digit3)^080h,w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	0+(??_main+2)^080h+0,w
	movwf	(??_main+4)^080h+0
	movf	(1+(?___wmul)),w
	skipnc
	incf	(1+(?___wmul)),w
	addwf	1+(??_main+2)^080h+0,w
	movwf	1+(??_main+4)^080h+0
	comf	(??_main+4)^080h+0,f
	comf	(??_main+4)^080h+1,f
	incf	(??_main+4)^080h+0,f
	skipnz
	incf	(??_main+4)^080h+1,f
	movf	(main@ADC_value)^080h,w
	addwf	0+(??_main+4)^080h+0,w
	movwf	(main@digit4)^080h
	movf	(main@ADC_value+1)^080h,w
	skipnc
	incf	(main@ADC_value+1)^080h,w
	addwf	1+(??_main+4)^080h+0,w
	movwf	1+(main@digit4)^080h
	line	55
	
l5066:	
;Main.c: 55: ClearLCDScreen();
	fcall	_ClearLCDScreen
	line	56
	
l5068:	
;Main.c: 56: WriteDataToLCD(digit1+0x30);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@digit1)^080h,w
	addlw	030h
	fcall	_WriteDataToLCD
	line	57
	
l5070:	
;Main.c: 57: WriteDataToLCD(digit2+0x30);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@digit2)^080h,w
	addlw	030h
	fcall	_WriteDataToLCD
	line	58
	
l5072:	
;Main.c: 58: WriteDataToLCD(digit3+0x30);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@digit3)^080h,w
	addlw	030h
	fcall	_WriteDataToLCD
	line	59
	
l5074:	
;Main.c: 59: WriteDataToLCD(digit4+0x30);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@digit4)^080h,w
	addlw	030h
	fcall	_WriteDataToLCD
	line	60
	
l5076:	
;Main.c: 60: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_main+0)^080h+0+2),f
movlw	175
movwf	((??_main+0)^080h+0+1),f
	movlw	193
movwf	((??_main+0)^080h+0),f
u3197:
	decfsz	((??_main+0)^080h+0),f
	goto	u3197
	decfsz	((??_main+0)^080h+0+1),f
	goto	u3197
	decfsz	((??_main+0)^080h+0+2),f
	goto	u3197
	clrwdt
opt asmopt_on

	goto	l5024
	line	66
	
l656:	
	line	31
	goto	l5024
	
l657:	
	line	67
	
l658:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ClearLCDScreen
psect	text422,local,class=CODE,delta=2
global __ptext422
__ptext422:

;; *************** function _ClearLCDScreen *****************
;; Defined at:
;;		line 99 in file "C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_WriteCommandToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text422
	file	"C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\LCD.c"
	line	99
	global	__size_of_ClearLCDScreen
	__size_of_ClearLCDScreen	equ	__end_of_ClearLCDScreen-_ClearLCDScreen
	
_ClearLCDScreen:	
	opt	stack 5
; Regs used in _ClearLCDScreen: [wreg+status,2+status,0+pclath+cstack]
	line	100
	
l5014:	
;LCD.c: 100: WriteCommandToLCD(0x01);
	movlw	(01h)
	fcall	_WriteCommandToLCD
	line	101
	
l5016:	
;LCD.c: 101: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_ClearLCDScreen+0)+0+1),f
	movlw	251
movwf	((??_ClearLCDScreen+0)+0),f
u3207:
	decfsz	((??_ClearLCDScreen+0)+0),f
	goto	u3207
	decfsz	((??_ClearLCDScreen+0)+0+1),f
	goto	u3207
	nop2
opt asmopt_on

	line	102
	
l1971:	
	return
	opt stack 0
GLOBAL	__end_of_ClearLCDScreen
	__end_of_ClearLCDScreen:
;; =============== function _ClearLCDScreen ends ============

	signat	_ClearLCDScreen,88
	global	_InitLCD
psect	text423,local,class=CODE,delta=2
global __ptext423
__ptext423:

;; *************** function _InitLCD *****************
;; Defined at:
;;		line 42 in file "C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ToggleEpinOfLCD
;;		_WriteCommandToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text423
	file	"C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\LCD.c"
	line	42
	global	__size_of_InitLCD
	__size_of_InitLCD	equ	__end_of_InitLCD-_InitLCD
	
_InitLCD:	
	opt	stack 5
; Regs used in _InitLCD: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l4974:	
;LCD.c: 44: RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	45
;LCD.c: 45: RB1 = 0;
	bcf	(49/8),(49)&7
	line	46
;LCD.c: 46: RB4 = 0;
	bcf	(52/8),(52)&7
	line	47
;LCD.c: 47: RB5 = 0;
	bcf	(53/8),(53)&7
	line	48
;LCD.c: 48: RB6 = 0;
	bcf	(54/8),(54)&7
	line	49
;LCD.c: 49: RB7 = 0;
	bcf	(55/8),(55)&7
	line	50
;LCD.c: 50: TRISB0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1072/8)^080h,(1072)&7
	line	51
;LCD.c: 51: TRISB1 = 0;
	bcf	(1073/8)^080h,(1073)&7
	line	52
;LCD.c: 52: TRISB4 = 0;
	bcf	(1076/8)^080h,(1076)&7
	line	53
;LCD.c: 53: TRISB5 = 0;
	bcf	(1077/8)^080h,(1077)&7
	line	54
;LCD.c: 54: TRISB6 = 0;
	bcf	(1078/8)^080h,(1078)&7
	line	55
;LCD.c: 55: TRISB7 = 0;
	bcf	(1079/8)^080h,(1079)&7
	line	58
	
l4976:	
;LCD.c: 58: _delay((unsigned long)((40)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_InitLCD+0)+0+2),f
movlw	4
movwf	((??_InitLCD+0)+0+1),f
	movlw	186
movwf	((??_InitLCD+0)+0),f
u3217:
	decfsz	((??_InitLCD+0)+0),f
	goto	u3217
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u3217
	decfsz	((??_InitLCD+0)+0+2),f
	goto	u3217
	clrwdt
opt asmopt_on

	line	60
	
l4978:	
;LCD.c: 60: PORTB &= 0x0F;
	movlw	(0Fh)
	movwf	(??_InitLCD+0)+0
	movf	(??_InitLCD+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	61
	
l4980:	
;LCD.c: 61: PORTB |= 0x30;
	movlw	(030h)
	movwf	(??_InitLCD+0)+0
	movf	(??_InitLCD+0)+0,w
	iorwf	(6),f	;volatile
	line	62
	
l4982:	
;LCD.c: 62: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	64
	
l4984:	
;LCD.c: 64: _delay((unsigned long)((6)*(20000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_InitLCD+0)+0+1),f
	movlw	245
movwf	((??_InitLCD+0)+0),f
u3227:
	decfsz	((??_InitLCD+0)+0),f
	goto	u3227
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u3227
opt asmopt_on

	line	66
	
l4986:	
;LCD.c: 66: PORTB &= 0x0F;
	movlw	(0Fh)
	movwf	(??_InitLCD+0)+0
	movf	(??_InitLCD+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	67
	
l4988:	
;LCD.c: 67: PORTB |= 0x30;
	movlw	(030h)
	movwf	(??_InitLCD+0)+0
	movf	(??_InitLCD+0)+0,w
	iorwf	(6),f	;volatile
	line	68
;LCD.c: 68: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	70
	
l4990:	
;LCD.c: 70: _delay((unsigned long)((300)*(20000000/4000000.0)));
	opt asmopt_off
movlw	214
movwf	(??_InitLCD+0)+0,f
u3237:
	nop2
	nop2
decfsz	(??_InitLCD+0)+0,f
	goto	u3237
	clrwdt
opt asmopt_on

	line	72
	
l4992:	
;LCD.c: 72: PORTB &= 0x0F;
	movlw	(0Fh)
	movwf	(??_InitLCD+0)+0
	movf	(??_InitLCD+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	73
	
l4994:	
;LCD.c: 73: PORTB |= 0x30;
	movlw	(030h)
	movwf	(??_InitLCD+0)+0
	movf	(??_InitLCD+0)+0,w
	iorwf	(6),f	;volatile
	line	74
	
l4996:	
;LCD.c: 74: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	76
;LCD.c: 76: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_InitLCD+0)+0+1),f
	movlw	251
movwf	((??_InitLCD+0)+0),f
u3247:
	decfsz	((??_InitLCD+0)+0),f
	goto	u3247
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u3247
	nop2
opt asmopt_on

	line	78
	
l4998:	
;LCD.c: 78: PORTB &= 0x0F;
	movlw	(0Fh)
	movwf	(??_InitLCD+0)+0
	movf	(??_InitLCD+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	79
	
l5000:	
;LCD.c: 79: PORTB |= 0x20;
	bsf	(6)+(5/8),(5)&7	;volatile
	line	80
	
l5002:	
;LCD.c: 80: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	82
	
l5004:	
;LCD.c: 82: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_InitLCD+0)+0+1),f
	movlw	251
movwf	((??_InitLCD+0)+0),f
u3257:
	decfsz	((??_InitLCD+0)+0),f
	goto	u3257
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u3257
	nop2
opt asmopt_on

	line	84
	
l5006:	
;LCD.c: 84: WriteCommandToLCD(0x28);
	movlw	(028h)
	fcall	_WriteCommandToLCD
	line	85
	
l5008:	
;LCD.c: 85: WriteCommandToLCD(0x0c);
	movlw	(0Ch)
	fcall	_WriteCommandToLCD
	line	86
	
l5010:	
;LCD.c: 86: WriteCommandToLCD(0x01);
	movlw	(01h)
	fcall	_WriteCommandToLCD
	line	87
	
l5012:	
;LCD.c: 87: WriteCommandToLCD(0x06);
	movlw	(06h)
	fcall	_WriteCommandToLCD
	line	88
	
l1962:	
	return
	opt stack 0
GLOBAL	__end_of_InitLCD
	__end_of_InitLCD:
;; =============== function _InitLCD ends ============

	signat	_InitLCD,88
	global	_WriteCommandToLCD
psect	text424,local,class=CODE,delta=2
global __ptext424
__ptext424:

;; *************** function _WriteCommandToLCD *****************
;; Defined at:
;;		line 14 in file "C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  Command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Command         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ToggleEpinOfLCD
;; This function is called by:
;;		_InitLCD
;;		_ClearLCDScreen
;; This function uses a non-reentrant model
;;
psect	text424
	file	"C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\LCD.c"
	line	14
	global	__size_of_WriteCommandToLCD
	__size_of_WriteCommandToLCD	equ	__end_of_WriteCommandToLCD-_WriteCommandToLCD
	
_WriteCommandToLCD:	
	opt	stack 5
; Regs used in _WriteCommandToLCD: [wreg+status,2+status,0+pclath+cstack]
;WriteCommandToLCD@Command stored from wreg
	movwf	(WriteCommandToLCD@Command)
	line	15
	
l4962:	
;LCD.c: 15: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	17
	
l4964:	
;LCD.c: 17: PORTB &= 0x0F;
	movlw	(0Fh)
	movwf	(??_WriteCommandToLCD+0)+0
	movf	(??_WriteCommandToLCD+0)+0,w
	andwf	(6),f	;volatile
	line	18
;LCD.c: 18: PORTB |= (Command&0xF0);
	movf	(WriteCommandToLCD@Command),w
	andlw	0F0h
	movwf	(??_WriteCommandToLCD+0)+0
	movf	(??_WriteCommandToLCD+0)+0,w
	iorwf	(6),f	;volatile
	line	19
	
l4966:	
;LCD.c: 19: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	21
	
l4968:	
;LCD.c: 21: PORTB &= 0x0F;
	movlw	(0Fh)
	movwf	(??_WriteCommandToLCD+0)+0
	movf	(??_WriteCommandToLCD+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	22
	
l4970:	
;LCD.c: 22: PORTB |= ((Command<<4)&0xF0);
	movf	(WriteCommandToLCD@Command),w
	movwf	(??_WriteCommandToLCD+0)+0
	movlw	(04h)-1
u3185:
	clrc
	rlf	(??_WriteCommandToLCD+0)+0,f
	addlw	-1
	skipz
	goto	u3185
	clrc
	rlf	(??_WriteCommandToLCD+0)+0,w
	andlw	0F0h
	movwf	(??_WriteCommandToLCD+1)+0
	movf	(??_WriteCommandToLCD+1)+0,w
	iorwf	(6),f	;volatile
	line	23
	
l4972:	
;LCD.c: 23: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	24
	
l1956:	
	return
	opt stack 0
GLOBAL	__end_of_WriteCommandToLCD
	__end_of_WriteCommandToLCD:
;; =============== function _WriteCommandToLCD ends ============

	signat	_WriteCommandToLCD,4216
	global	_WriteDataToLCD
psect	text425,local,class=CODE,delta=2
global __ptext425
__ptext425:

;; *************** function _WriteDataToLCD *****************
;; Defined at:
;;		line 28 in file "C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDChar         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDChar         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ToggleEpinOfLCD
;; This function is called by:
;;		_main
;;		_WriteStringToLCD
;; This function uses a non-reentrant model
;;
psect	text425
	file	"C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\LCD.c"
	line	28
	global	__size_of_WriteDataToLCD
	__size_of_WriteDataToLCD	equ	__end_of_WriteDataToLCD-_WriteDataToLCD
	
_WriteDataToLCD:	
	opt	stack 6
; Regs used in _WriteDataToLCD: [wreg+status,2+status,0+pclath+cstack]
;WriteDataToLCD@LCDChar stored from wreg
	movwf	(WriteDataToLCD@LCDChar)
	line	29
	
l4950:	
;LCD.c: 29: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	31
	
l4952:	
;LCD.c: 31: PORTB &= 0x0F;
	movlw	(0Fh)
	movwf	(??_WriteDataToLCD+0)+0
	movf	(??_WriteDataToLCD+0)+0,w
	andwf	(6),f	;volatile
	line	32
;LCD.c: 32: PORTB |= (LCDChar&0xF0);
	movf	(WriteDataToLCD@LCDChar),w
	andlw	0F0h
	movwf	(??_WriteDataToLCD+0)+0
	movf	(??_WriteDataToLCD+0)+0,w
	iorwf	(6),f	;volatile
	line	33
	
l4954:	
;LCD.c: 33: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	35
	
l4956:	
;LCD.c: 35: PORTB &= 0x0F;
	movlw	(0Fh)
	movwf	(??_WriteDataToLCD+0)+0
	movf	(??_WriteDataToLCD+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	36
	
l4958:	
;LCD.c: 36: PORTB |= ((LCDChar<<4)&0xF0);
	movf	(WriteDataToLCD@LCDChar),w
	movwf	(??_WriteDataToLCD+0)+0
	movlw	(04h)-1
u3175:
	clrc
	rlf	(??_WriteDataToLCD+0)+0,f
	addlw	-1
	skipz
	goto	u3175
	clrc
	rlf	(??_WriteDataToLCD+0)+0,w
	andlw	0F0h
	movwf	(??_WriteDataToLCD+1)+0
	movf	(??_WriteDataToLCD+1)+0,w
	iorwf	(6),f	;volatile
	line	37
	
l4960:	
;LCD.c: 37: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	38
	
l1959:	
	return
	opt stack 0
GLOBAL	__end_of_WriteDataToLCD
	__end_of_WriteDataToLCD:
;; =============== function _WriteDataToLCD ends ============

	signat	_WriteDataToLCD,4216
	global	_map
psect	text426,local,class=CODE,delta=2
global __ptext426
__ptext426:

;; *************** function _map *****************
;; Defined at:
;;		line 69 in file "C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\Main.c"
;; Parameters:    Size  Location     Type
;;  value           3   55[BANK0 ] unsigned char 
;;  x_min           3   58[BANK0 ] float 
;;  x_max           3   61[BANK0 ] float 
;;  y_min           3   64[BANK0 ] float 
;;  y_max           3   67[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   55[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0      15       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      18       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftneg
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text426
	file	"C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\Main.c"
	line	69
	global	__size_of_map
	__size_of_map	equ	__end_of_map-_map
	
_map:	
	opt	stack 5
; Regs used in _map: [wreg+status,2+status,0+pclath+cstack]
	line	70
	
l4946:	
;Main.c: 70: return (y_min + (((y_max - y_min)/(x_max - x_min)) * (value - x_min)));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(map@x_max),w
	movwf	(?___ftadd)
	movf	(map@x_max+1),w
	movwf	(?___ftadd+1)
	movf	(map@x_max+2),w
	movwf	(?___ftadd+2)
	movf	(map@x_min),w
	movwf	(?___ftneg)
	movf	(map@x_min+1),w
	movwf	(?___ftneg+1)
	movf	(map@x_min+2),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftneg)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftneg)),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftdiv+2)
	movf	(map@y_max),w
	movwf	(?___ftadd)
	movf	(map@y_max+1),w
	movwf	(?___ftadd+1)
	movf	(map@y_max+2),w
	movwf	(?___ftadd+2)
	movf	(map@y_min),w
	movwf	(?___ftneg)
	movf	(map@y_min+1),w
	movwf	(?___ftneg+1)
	movf	(map@y_min+2),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftneg)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftneg)),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___ftadd)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___ftadd)),w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftdiv)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftdiv)),w
	movwf	(?___ftmul+2)
	movf	(map@value),w
	movwf	(?___ftadd)
	movf	(map@value+1),w
	movwf	(?___ftadd+1)
	movf	(map@value+2),w
	movwf	(?___ftadd+2)
	movf	(map@x_min),w
	movwf	(?___ftneg)
	movf	(map@x_min+1),w
	movwf	(?___ftneg+1)
	movf	(map@x_min+2),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftneg)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftneg)),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___ftadd)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___ftadd)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_map$3459)
	movf	(1+(?___ftmul)),w
	movwf	(_map$3459+1)
	movf	(2+(?___ftmul)),w
	movwf	(_map$3459+2)
;Main.c: 70: return (y_min + (((y_max - y_min)/(x_max - x_min)) * (value - x_min)));
	movf	(map@y_min),w
	movwf	(?___ftadd)
	movf	(map@y_min+1),w
	movwf	(?___ftadd+1)
	movf	(map@y_min+2),w
	movwf	(?___ftadd+2)
	movf	(_map$3459),w
	movwf	0+(?___ftadd)+03h
	movf	(_map$3459+1),w
	movwf	1+(?___ftadd)+03h
	movf	(_map$3459+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?_map)
	movf	(1+(?___ftadd)),w
	movwf	(?_map+1)
	movf	(2+(?___ftadd)),w
	movwf	(?_map+2)
	goto	l661
	
l4948:	
	line	71
	
l661:	
	return
	opt stack 0
GLOBAL	__end_of_map
	__end_of_map:
;; =============== function _map ends ============

	signat	_map,20603
	global	___lwtoft
psect	text427,local,class=CODE,delta=2
global __ptext427
__ptext427:

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 29 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   10[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   10[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text427
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwtoft.c"
	line	29
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
	opt	stack 6
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l4942:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwtoft@c),w
	movwf	(?___ftpack)
	movf	(___lwtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l2837
	
l4944:	
	line	31
	
l2837:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
;; =============== function ___lwtoft ends ============

	signat	___lwtoft,4219
	global	___ftmul
psect	text428,local,class=CODE,delta=2
global __ptext428
__ptext428:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   39[BANK0 ] float 
;;  f2              3   42[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   50[BANK0 ] unsigned um
;;  sign            1   54[BANK0 ] unsigned char 
;;  cntr            1   53[BANK0 ] unsigned char 
;;  exp             1   49[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   39[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_map
;; This function uses a non-reentrant model
;;
psect	text428
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l4892:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l4898
u3030:
	line	57
	
l4894:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l2713
	
l4896:	
	goto	l2713
	
l2712:	
	line	58
	
l4898:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u3041
	goto	u3040
u3041:
	goto	l4904
u3040:
	line	59
	
l4900:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l2713
	
l4902:	
	goto	l2713
	
l2714:	
	line	60
	
l4904:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3055:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3050:
	addlw	-1
	skipz
	goto	u3055
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3065:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3060:
	addlw	-1
	skipz
	goto	u3065
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
l4906:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l4908:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l4910:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l4912:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l4914:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l4916
	line	70
	
l2715:	
	line	71
	
l4916:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3071
	goto	u3070
u3071:
	goto	l4920
u3070:
	line	72
	
l4918:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3081
	addwf	(___ftmul@f3_as_product+1),f
u3081:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3082
	addwf	(___ftmul@f3_as_product+2),f
u3082:

	goto	l4920
	
l2716:	
	line	73
	
l4920:	
	movlw	01h
u3095:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3095

	line	74
	
l4922:	
	movlw	01h
u3105:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3105
	line	75
	
l4924:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3111
	goto	u3110
u3111:
	goto	l4916
u3110:
	goto	l4926
	
l2717:	
	line	76
	
l4926:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l4928
	line	77
	
l2718:	
	line	78
	
l4928:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3121
	goto	u3120
u3121:
	goto	l4932
u3120:
	line	79
	
l4930:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3131
	addwf	(___ftmul@f3_as_product+1),f
u3131:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3132
	addwf	(___ftmul@f3_as_product+2),f
u3132:

	goto	l4932
	
l2719:	
	line	80
	
l4932:	
	movlw	01h
u3145:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3145

	line	81
	
l4934:	
	movlw	01h
u3155:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3155

	line	82
	
l4936:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3161
	goto	u3160
u3161:
	goto	l4928
u3160:
	goto	l4938
	
l2720:	
	line	83
	
l4938:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l2713
	
l4940:	
	line	84
	
l2713:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text429,local,class=CODE,delta=2
global __ptext429
__ptext429:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   23[BANK0 ] float 
;;  f1              3   26[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   34[BANK0 ] float 
;;  sign            1   38[BANK0 ] unsigned char 
;;  exp             1   37[BANK0 ] unsigned char 
;;  cntr            1   33[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   23[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_map
;; This function uses a non-reentrant model
;;
psect	text429
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l4850:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u2951
	goto	u2950
u2951:
	goto	l4856
u2950:
	line	56
	
l4852:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l2703
	
l4854:	
	goto	l2703
	
l2702:	
	line	57
	
l4856:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u2961
	goto	u2960
u2961:
	goto	l4862
u2960:
	line	58
	
l4858:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l2703
	
l4860:	
	goto	l2703
	
l2704:	
	line	59
	
l4862:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l4864:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l4866:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2975:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2970:
	addlw	-1
	skipz
	goto	u2975
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l4868:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2985:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2980:
	addlw	-1
	skipz
	goto	u2985
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l4870:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l4872:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l4874:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l4876
	line	69
	
l2705:	
	line	70
	
l4876:	
	movlw	01h
u2995:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u2995
	line	71
	
l4878:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3005
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3005
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3005:
	skipc
	goto	u3001
	goto	u3000
u3001:
	goto	l4884
u3000:
	line	72
	
l4880:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l4882:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l4884
	line	74
	
l2706:	
	line	75
	
l4884:	
	movlw	01h
u3015:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u3015
	line	76
	
l4886:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l4876
u3020:
	goto	l4888
	
l2707:	
	line	77
	
l4888:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l2703
	
l4890:	
	line	78
	
l2703:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text430,local,class=CODE,delta=2
global __ptext430
__ptext430:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   10[BANK0 ] float 
;;  f2              3   13[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   22[BANK0 ] unsigned char 
;;  exp2            1   21[BANK0 ] unsigned char 
;;  sign            1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   10[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_map
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text430
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 5
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l4780:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l4782:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2710
	goto	l4788
u2710:
	
l4784:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2721
	goto	u2720
u2721:
	goto	l4792
u2720:
	
l4786:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l4792
u2730:
	goto	l4788
	
l2660:	
	line	93
	
l4788:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l2661
	
l4790:	
	goto	l2661
	
l2658:	
	line	94
	
l4792:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2740
	goto	l2664
u2740:
	
l4794:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2751
	goto	u2750
u2751:
	goto	l4798
u2750:
	
l4796:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2761
	goto	u2760
u2761:
	goto	l4798
u2760:
	
l2664:	
	line	95
	goto	l2661
	
l2662:	
	line	96
	
l4798:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l4800:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l2665
u2770:
	line	98
	
l4802:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l2665:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l2666
u2780:
	line	100
	
l4804:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l2666:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l4806:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l4808:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2791
	goto	u2790
u2791:
	goto	l4820
u2790:
	goto	l4810
	line	109
	
l2668:	
	line	110
	
l4810:	
	movlw	01h
u2805:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u2805
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l4812:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2811
	goto	u2810
u2811:
	goto	l4818
u2810:
	
l4814:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l4810
u2820:
	goto	l4818
	
l2670:	
	goto	l4818
	
l2671:	
	line	113
	goto	l4818
	
l2673:	
	line	114
	
l4816:	
	movlw	01h
u2835:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u2835

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l4818
	line	116
	
l2672:	
	line	113
	
l4818:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2841
	goto	u2840
u2841:
	goto	l4816
u2840:
	goto	l2675
	
l2674:	
	line	117
	goto	l2675
	
l2667:	
	
l4820:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2851
	goto	u2850
u2851:
	goto	l2675
u2850:
	goto	l4822
	line	120
	
l2677:	
	line	121
	
l4822:	
	movlw	01h
u2865:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u2865
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l4824:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2871
	goto	u2870
u2871:
	goto	l4830
u2870:
	
l4826:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l4822
u2880:
	goto	l4830
	
l2679:	
	goto	l4830
	
l2680:	
	line	124
	goto	l4830
	
l2682:	
	line	125
	
l4828:	
	movlw	01h
u2895:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u2895

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l4830
	line	127
	
l2681:	
	line	124
	
l4830:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2901
	goto	u2900
u2901:
	goto	l4828
u2900:
	goto	l2675
	
l2683:	
	goto	l2675
	line	128
	
l2676:	
	line	129
	
l2675:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l4834
u2910:
	line	131
	
l4832:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l4834
	line	133
	
l2684:	
	line	134
	
l4834:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l4838
u2920:
	line	136
	
l4836:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l4838
	line	138
	
l2685:	
	line	139
	
l4838:	
	clrf	(___ftadd@sign)
	line	140
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2931
	addwf	(___ftadd@f2+1),f
u2931:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2932
	addwf	(___ftadd@f2+2),f
u2932:

	line	141
	
l4840:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l4846
u2940:
	line	142
	
l4842:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l4844:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l4846
	line	145
	
l2686:	
	line	146
	
l4846:	
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l2661
	
l4848:	
	line	148
	
l2661:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_ToggleEpinOfLCD
psect	text431,local,class=CODE,delta=2
global __ptext431
__ptext431:

;; *************** function _ToggleEpinOfLCD *****************
;; Defined at:
;;		line 5 in file "C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_WriteCommandToLCD
;;		_WriteDataToLCD
;;		_InitLCD
;; This function uses a non-reentrant model
;;
psect	text431
	file	"C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\LCD.c"
	line	5
	global	__size_of_ToggleEpinOfLCD
	__size_of_ToggleEpinOfLCD	equ	__end_of_ToggleEpinOfLCD-_ToggleEpinOfLCD
	
_ToggleEpinOfLCD:	
	opt	stack 6
; Regs used in _ToggleEpinOfLCD: [wreg]
	line	6
	
l4774:	
;LCD.c: 6: RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	7
	
l4776:	
;LCD.c: 7: _delay((unsigned long)((500)*(20000000/4000000.0)));
	opt asmopt_off
movlw	4
movwf	((??_ToggleEpinOfLCD+0)+0+1),f
	movlw	61
movwf	((??_ToggleEpinOfLCD+0)+0),f
u3267:
	decfsz	((??_ToggleEpinOfLCD+0)+0),f
	goto	u3267
	decfsz	((??_ToggleEpinOfLCD+0)+0+1),f
	goto	u3267
	nop2
opt asmopt_on

	line	8
	
l4778:	
;LCD.c: 8: RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	9
;LCD.c: 9: _delay((unsigned long)((500)*(20000000/4000000.0)));
	opt asmopt_off
movlw	4
movwf	((??_ToggleEpinOfLCD+0)+0+1),f
	movlw	61
movwf	((??_ToggleEpinOfLCD+0)+0),f
u3277:
	decfsz	((??_ToggleEpinOfLCD+0)+0),f
	goto	u3277
	decfsz	((??_ToggleEpinOfLCD+0)+0+1),f
	goto	u3277
	nop2
opt asmopt_on

	line	10
	
l1953:	
	return
	opt stack 0
GLOBAL	__end_of_ToggleEpinOfLCD
	__end_of_ToggleEpinOfLCD:
;; =============== function _ToggleEpinOfLCD ends ============

	signat	_ToggleEpinOfLCD,88
	global	_GetADCValue
psect	text432,local,class=CODE,delta=2
global __ptext432
__ptext432:

;; *************** function _GetADCValue *****************
;; Defined at:
;;		line 30 in file "C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\ADC.c"
;; Parameters:    Size  Location     Type
;;  Channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Channel         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text432
	file	"C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\ADC.c"
	line	30
	global	__size_of_GetADCValue
	__size_of_GetADCValue	equ	__end_of_GetADCValue-_GetADCValue
	
_GetADCValue:	
	opt	stack 7
; Regs used in _GetADCValue: [wreg+status,2+status,0+btemp+1]
;GetADCValue@Channel stored from wreg
	movwf	(GetADCValue@Channel)
	line	31
	
l4764:	
;ADC.c: 31: ADCON0 &= 0xc7;
	movlw	(0C7h)
	movwf	(??_GetADCValue+0)+0
	movf	(??_GetADCValue+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(31),f	;volatile
	line	33
;ADC.c: 33: ADCON0 |= (Channel<<3);
	movf	(GetADCValue@Channel),w
	movwf	(??_GetADCValue+0)+0
	movlw	(03h)-1
u2695:
	clrc
	rlf	(??_GetADCValue+0)+0,f
	addlw	-1
	skipz
	goto	u2695
	clrc
	rlf	(??_GetADCValue+0)+0,w
	movwf	(??_GetADCValue+1)+0
	movf	(??_GetADCValue+1)+0,w
	iorwf	(31),f	;volatile
	line	35
	
l4766:	
;ADC.c: 35: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_GetADCValue+0)+0+1),f
	movlw	238
movwf	((??_GetADCValue+0)+0),f
u3287:
	decfsz	((??_GetADCValue+0)+0),f
	goto	u3287
	decfsz	((??_GetADCValue+0)+0+1),f
	goto	u3287
	clrwdt
opt asmopt_on

	line	37
	
l4768:	
;ADC.c: 37: GO_nDONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	39
;ADC.c: 39: while(GO_nDONE);
	goto	l1307
	
l1308:	
	
l1307:	
	btfsc	(250/8),(250)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l1307
u2700:
	goto	l4770
	
l1309:	
	line	41
	
l4770:	
;ADC.c: 41: return ((ADRESH<<8)+ADRESL);
	movf	(30),w	;volatile
	movwf	(??_GetADCValue+0)+0
	clrf	(??_GetADCValue+0)+0+1
	movf	(??_GetADCValue+0)+0,w
	movwf	(??_GetADCValue+0)+1
	clrf	(??_GetADCValue+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	0+(??_GetADCValue+0)+0,w
	movwf	(?_GetADCValue)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_GetADCValue+0)+0,w
	movwf	1+(?_GetADCValue)
	goto	l1310
	
l4772:	
	line	42
	
l1310:	
	return
	opt stack 0
GLOBAL	__end_of_GetADCValue
	__end_of_GetADCValue:
;; =============== function _GetADCValue ends ============

	signat	_GetADCValue,4218
	global	___ftneg
psect	text433,local,class=CODE,delta=2
global __ptext433
__ptext433:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_map
;; This function uses a non-reentrant model
;;
psect	text433
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 6
; Regs used in ___ftneg: [wreg]
	line	17
	
l4714:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2621
	goto	u2620
u2621:
	goto	l4718
u2620:
	line	18
	
l4716:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l4718
	
l2777:	
	line	19
	
l4718:	
	goto	l2778
	
l4720:	
	line	20
	
l2778:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___fttol
psect	text434,local,class=CODE,delta=2
global __ptext434
__ptext434:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    5[BANK0 ] unsigned long 
;;  exp1            1    9[BANK0 ] unsigned char 
;;  sign1           1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         4      10       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text434
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 7
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l4650:	
	movf	(___fttol@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u2501
	goto	u2500
u2501:
	goto	l4656
u2500:
	line	50
	
l4652:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2724
	
l4654:	
	goto	l2724
	
l2723:	
	line	51
	
l4656:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2515:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2510:
	addlw	-1
	skipz
	goto	u2515
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l4658:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l4660:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l4662:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l4664:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l4666:	
	btfss	(___fttol@exp1),7
	goto	u2521
	goto	u2520
u2521:
	goto	l4676
u2520:
	line	57
	
l4668:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2531
	goto	u2530
u2531:
	goto	l4674
u2530:
	line	58
	
l4670:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2724
	
l4672:	
	goto	l2724
	
l2726:	
	goto	l4674
	line	59
	
l2727:	
	line	60
	
l4674:	
	movlw	01h
u2545:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2545

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l4674
u2550:
	goto	l4686
	
l2728:	
	line	62
	goto	l4686
	
l2725:	
	line	63
	
l4676:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l4684
u2560:
	line	64
	
l4678:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2724
	
l4680:	
	goto	l2724
	
l2730:	
	line	65
	goto	l4684
	
l2732:	
	line	66
	
l4682:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2575:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2575
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l4684
	line	68
	
l2731:	
	line	65
	
l4684:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2581
	goto	u2580
u2581:
	goto	l4682
u2580:
	goto	l4686
	
l2733:	
	goto	l4686
	line	69
	
l2729:	
	line	70
	
l4686:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2590
	goto	l4690
u2590:
	line	71
	
l4688:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l4690
	
l2734:	
	line	72
	
l4690:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l2724
	
l4692:	
	line	73
	
l2724:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text435,local,class=CODE,delta=2
global __ptext435
__ptext435:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;;		___lbtoft
;;		___abtoft
;;		___awtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text435
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l4614:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2390
	goto	l4618
u2390:
	
l4616:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2401
	goto	u2400
u2401:
	goto	l4624
u2400:
	goto	l4618
	
l2948:	
	line	65
	
l4618:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l2949
	
l4620:	
	goto	l2949
	
l2946:	
	line	66
	goto	l4624
	
l2951:	
	line	67
	
l4622:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2415:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2415

	goto	l4624
	line	69
	
l2950:	
	line	66
	
l4624:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2421
	goto	u2420
u2421:
	goto	l4622
u2420:
	goto	l2953
	
l2952:	
	line	70
	goto	l2953
	
l2954:	
	line	71
	
l4626:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l4628:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l4630:	
	movlw	01h
u2435:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2435

	line	74
	
l2953:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l4626
u2440:
	goto	l4634
	
l2955:	
	line	75
	goto	l4634
	
l2957:	
	line	76
	
l4632:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2455:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2455
	goto	l4634
	line	78
	
l2956:	
	line	75
	
l4634:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l4632
u2460:
	
l2958:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l2959
u2470:
	line	80
	
l4636:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l2959:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l4638:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2485:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2480:
	addlw	-1
	skipz
	goto	u2485
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l4640:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2490
	goto	l2960
u2490:
	line	84
	
l4642:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2960:	
	line	85
	line	86
	
l2949:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lwdiv
psect	text436,local,class=CODE,delta=2
global __ptext436
__ptext436:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[COMMON] unsigned int 
;;  dividend        2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   11[COMMON] unsigned int 
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text436
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 7
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l4588:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l4590:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2321
	goto	u2320
u2321:
	goto	l4610
u2320:
	line	11
	
l4592:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l4598
	
l2622:	
	line	13
	
l4594:	
	movlw	01h
	
u2335:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2335
	line	14
	
l4596:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l4598
	line	15
	
l2621:	
	line	12
	
l4598:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l4594
u2340:
	goto	l4600
	
l2623:	
	goto	l4600
	line	16
	
l2624:	
	line	17
	
l4600:	
	movlw	01h
	
u2355:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2355
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2365
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2365:
	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l4606
u2360:
	line	19
	
l4602:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l4604:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l4606
	line	21
	
l2625:	
	line	22
	
l4606:	
	movlw	01h
	
u2375:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2375
	line	23
	
l4608:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l4600
u2380:
	goto	l4610
	
l2626:	
	goto	l4610
	line	24
	
l2620:	
	line	25
	
l4610:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l2627
	
l4612:	
	line	26
	
l2627:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text437,local,class=CODE,delta=2
global __ptext437
__ptext437:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text437
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 7
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l4576:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l4578
	line	6
	
l2614:	
	line	7
	
l4578:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l2615
u2280:
	line	8
	
l4580:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l2615:	
	line	9
	movlw	01h
	
u2295:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2295
	line	10
	
l4582:	
	movlw	01h
	
u2305:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2305
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2311
	goto	u2310
u2311:
	goto	l4578
u2310:
	goto	l4584
	
l2616:	
	line	12
	
l4584:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l2617
	
l4586:	
	line	13
	
l2617:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_InitADC
psect	text438,local,class=CODE,delta=2
global __ptext438
__ptext438:

;; *************** function _InitADC *****************
;; Defined at:
;;		line 11 in file "C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\ADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text438
	file	"C:\Users\port\Downloads\PIC16F877 ADC Code\PIC16F877 ADC Code\Code\ADC.c"
	line	11
	global	__size_of_InitADC
	__size_of_InitADC	equ	__end_of_InitADC-_InitADC
	
_InitADC:	
	opt	stack 7
; Regs used in _InitADC: [wreg]
	line	12
	
l4566:	
;ADC.c: 12: ADCON1 = 0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	13
;ADC.c: 13: TRISA = 0x2f;
	movlw	(02Fh)
	movwf	(133)^080h	;volatile
	line	14
;ADC.c: 14: TRISE = 0x07;
	movlw	(07h)
	movwf	(137)^080h	;volatile
	line	15
;ADC.c: 15: ADCON0 = 0x81;
	movlw	(081h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	16
	
l1304:	
	return
	opt stack 0
GLOBAL	__end_of_InitADC
	__end_of_InitADC:
;; =============== function _InitADC ends ============

	signat	_InitADC,88
psect	text439,local,class=CODE,delta=2
global __ptext439
__ptext439:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
