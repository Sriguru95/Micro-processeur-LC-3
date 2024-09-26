.ORIG x3000

LEA R1, DEST_STRING      ; Adresse de début de la chaîne destination en R1
LEA R2, SOURCE_STRING    ; Adresse de début de la chaîne source en R2
LD  R3, NUM_CHARACTERS   ; Nombre de caractères à concaténer en R3

; Trouver la fin de la chaîne destination
FIND_END:
    LDR R4, R1, #0        ; Charger le caractère actuel de la destination
    BRz CONCATENATE       
    ADD R1, R1, #1        
    BRnzp FIND_END       

CONCATENATE:
    ; Copier les n premiers caractères de la chaîne source à la fin de la chaîne destination
    COPY_LOOP:
        BRz CONCAT_DONE   
        LDR R5, R2, #0    
        STR R5, R1, #0    
        ADD R2, R2, #1    
        ADD R1, R1, #1    
        ADD R3, R3, #-1  
        BRnzp COPY_LOOP  

CONCAT_DONE:
    HALT

DEST_STRING:   .STRINGZ "Hello, "  ; Exemple de la chaîne destination
SOURCE_STRING: .STRINGZ "LC-3!"     ; Exemple de la chaîne source
NUM_CHARACTERS: .FILL #3            ; Nombre de caractères à concaténer

.END
