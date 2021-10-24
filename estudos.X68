*-----------------------------------------------------------
* Title      : Multiply
* Written by :  Maycon Carlete
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    MOVE.B      #1,$10D0
    MOVE.B      #1,$10D2
    MOVE.B      $10D0,d2
    MOVE.B      $10D2,d3
    
    jsr         AddNumber
    MOVE.B      #10,d5    
    ;CMP.W       d2,d3
    ;BEQ         IF
    
    LEA         MSG,a1
    MOVE.B      #14,d0
    TRAP        #15
    
AddNumber:
    ADD.W       d3,d4
    rts  
IF:
    LEA         MESSAGE,a1
    MOVE.B      #14,d0
    TRAP        #15
    RTS

    SIMHALT             ; halt simulator

* Put variables and constants here
MESSAGE DC.B     'ENTREI NO IF EM',0
MSG     DC.B     'SAI DO IF',0
    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
