
_main:

;PRO2.c,16 :: 		void main()
;PRO2.c,18 :: 		TRISB.F0=1;
	BSF        TRISB+0, 0
;PRO2.c,19 :: 		TRISB.F1=0;
	BCF        TRISB+0, 1
;PRO2.c,20 :: 		TRISB.F2=0;
	BCF        TRISB+0, 2
;PRO2.c,21 :: 		TRISB.F3=0;
	BCF        TRISB+0, 3
;PRO2.c,22 :: 		TRISB.F4=0;
	BCF        TRISB+0, 4
;PRO2.c,23 :: 		PORTB.F1=1;
	BSF        PORTB+0, 1
;PRO2.c,24 :: 		PORTB.F2=1;
	BSF        PORTB+0, 2
;PRO2.c,25 :: 		PORTB.F3=1;
	BSF        PORTB+0, 3
;PRO2.c,26 :: 		PORTB.F4=1;
	BSF        PORTB+0, 4
;PRO2.c,27 :: 		Lcd_Init();                        // Initialize LCD
	CALL       _Lcd_Init+0
;PRO2.c,28 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;PRO2.c,29 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;PRO2.c,30 :: 		Lcd_Out(1,1,"Wait...");        // Write text'Hello World' in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_PRO2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PRO2.c,31 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
;PRO2.c,32 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;PRO2.c,33 :: 		while (1)
L_main1:
;PRO2.c,36 :: 		Lcd_Out(1,1,"HumadityS:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_PRO2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PRO2.c,37 :: 		Lcd_Out(2,1,"Pump:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_PRO2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PRO2.c,38 :: 		if(PORTB.F0==0)
	BTFSC      PORTB+0, 0
	GOTO       L_main3
;PRO2.c,40 :: 		Lcd_Out(1,11,"Wet");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_PRO2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PRO2.c,41 :: 		Lcd_Out(2,6,"OFF");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_PRO2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PRO2.c,42 :: 		PORTB.F1=1;
	BSF        PORTB+0, 1
;PRO2.c,43 :: 		PORTB.F3=1;
	BSF        PORTB+0, 3
;PRO2.c,44 :: 		PORTB.F2=0;
	BCF        PORTB+0, 2
;PRO2.c,45 :: 		PORTB.F4=0;
	BCF        PORTB+0, 4
;PRO2.c,46 :: 		x=1;
	MOVLW      1
	MOVWF      _x+0
	MOVLW      0
	MOVWF      _x+1
;PRO2.c,47 :: 		}else
	GOTO       L_main4
L_main3:
;PRO2.c,49 :: 		Lcd_Out(1,11,"Dry");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_PRO2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PRO2.c,50 :: 		Lcd_Out(2,6,"ON ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_PRO2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;PRO2.c,51 :: 		PORTB.F1=0;
	BCF        PORTB+0, 1
;PRO2.c,52 :: 		PORTB.F3=0;
	BCF        PORTB+0, 3
;PRO2.c,53 :: 		PORTB.F2=1;
	BSF        PORTB+0, 2
;PRO2.c,55 :: 		if(x==1){
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main15
	MOVLW      1
	XORWF      _x+0, 0
L__main15:
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;PRO2.c,56 :: 		PORTB.F4=1;
	BSF        PORTB+0, 4
;PRO2.c,57 :: 		delay_ms(7000);
	MOVLW      72
	MOVWF      R11+0
	MOVLW      6
	MOVWF      R12+0
	MOVLW      159
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;PRO2.c,58 :: 		PORTB.F4=0;
	BCF        PORTB+0, 4
;PRO2.c,59 :: 		x=0;
	CLRF       _x+0
	CLRF       _x+1
;PRO2.c,60 :: 		}
L_main5:
;PRO2.c,61 :: 		}
L_main4:
;PRO2.c,63 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;PRO2.c,66 :: 		}
	GOTO       L_main1
;PRO2.c,67 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_MSDelay:

;PRO2.c,69 :: 		void MSDelay(unsigned int itime)  {
;PRO2.c,72 :: 		for(i=0;i<itime;i++) {
	CLRF       R1+0
	CLRF       R1+1
L_MSDelay8:
	MOVF       FARG_MSDelay_itime+1, 0
	SUBWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__MSDelay17
	MOVF       FARG_MSDelay_itime+0, 0
	SUBWF      R1+0, 0
L__MSDelay17:
	BTFSC      STATUS+0, 0
	GOTO       L_MSDelay9
;PRO2.c,73 :: 		for(j=0;j<165;j++); }
	CLRF       R3+0
L_MSDelay11:
	MOVLW      165
	SUBWF      R3+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_MSDelay12
	INCF       R3+0, 1
	GOTO       L_MSDelay11
L_MSDelay12:
;PRO2.c,72 :: 		for(i=0;i<itime;i++) {
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;PRO2.c,73 :: 		for(j=0;j<165;j++); }
	GOTO       L_MSDelay8
L_MSDelay9:
;PRO2.c,74 :: 		}
L_end_MSDelay:
	RETURN
; end of _MSDelay
