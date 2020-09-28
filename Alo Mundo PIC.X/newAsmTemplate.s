PROCESSOR 16F887    ;Alan Yeray Cárdenas Galeana
#include <xc.inc>   ;Ingeniería Mecatrónica 6° "B"

    ;Configuración Word 1
CONFIG FOSC = INTRC_NOCLKOUT
CONFIG WDTE = OFF
CONFIG PWRTE = ON
CONFIG MCLRE = OFF
CONFIG CP = OFF
CONFIG CPD = OFF
CONFIG BOREN = OFF
CONFIG IESO = OFF
CONFIG FCMEN = ON
CONFIG DEBUG = ON

    ;Configuración Word 2
CONFIG BOR4V=BOR40V
CONFIG WRT = OFF
PSECT udata

 ;Variables

abril:
    DS 1
mayo:
    DS 1
junio:
    DS 1
julio:
    DS 1

PSECT resetVec,class=CODE,delta=2
resetVec:
PAGESEL main
goto main
PSECT code
 main:
 bcf 0x03,6
 bcf 0x03,5
 movlw 0b10010010
 ANDLW 0b11111111
 movwf julio
 goto main
 END


