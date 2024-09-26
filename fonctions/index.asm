.ORIG x3000
    LEA R1, STRING 
    LD R2, CHAR 
    AND R0, R0, #0 

LOOP
    LDR R3, R1, #0 
    BRz END 
    NOT R4, R2
    ADD R4, R4, R3
    BRz FOUND 
    ADD R1, R1, #1 
    BRnzp LOOP

FOUND
    ADD R0, R1, #0 

END
    HALT 

STRING .STRINGZ "Bonjour"
CHAR .FILL x61

    .END