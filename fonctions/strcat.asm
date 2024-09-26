.ORIG x3000

LEA R1, DEST_STRING      ; Adresse de début de la chaîne destination en R1
LEA R2, SOURCE_STRING    ; Adresse de début de la chaîne source en R2

; Trouver la fin de la chaîne destination
FIND_END:
    LDR R3, R1, #0        ; Charger le caractère actuel de la destination
    BRz CONCATENATE       
    ADD R1, R1, #1        
    BRnzp FIND_END      

CONCATENATE:
    ; Copier la chaîne source à la fin de la chaîne destination
    COPY_LOOP:
        LDR R4, R2, #0    
        STR R4, R1, #0    
        ADD R2, R2, #1    
        ADD R1, R1, #1    
        BRz CONCAT_DONE   
        BRnzp COPY_LOOP 

CONCAT_DONE:
    HALT

DEST_STRING:   .STRINGZ "Hello, "  
SOURCE_STRING: .STRINGZ "LC-3!"     

.END
