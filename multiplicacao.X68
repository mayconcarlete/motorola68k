*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:
    MOVE.B #0,d0
    MOVE.B #3,d1
    MOVE.B #2,d2
    JMP    WHILE
    
    ;JMP  START 
WHILE:
    CMP.W  #0,d2
    BNE    MULT
    JSR    MULT
    CMP.W  #0,d2
    BNE    MULT
    JMP    WHILE
MULT:
    ADD.B d1,d0
    SUB.B #1,d2
    RTS
    
* Put program code here

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
