.ORIG x3000
    
    LD R0, NUM1
    
    LD R1, NUM2
    
    ADD R2, R0, R1 ; Additionner R0 et R1, stocker le résultat dans R2
    
    LD R3, MAX_VAL   ; Comparer la somme avec 2^15-1 (0x7FFF)
    NOT R3, R3          ; Complément à deux pour obtenir -2^15
    ADD R4, R2, R3      ; R4 = R2 - 2^15

HALT

NUM1    .FILL x0005    
NUM2    .FILL x8002     
MAX_VAL .FILL x7FFF

.END
