.ORIG x3000

LEA R1, SOURCE_STRING    ; Adresse de début de la chaîne source en R1
LEA R2, DEST_STRING      ; Adresse de début de la chaîne destination en R2

COPY_LOOP:
    LDR R3, R1, #0       
    STR R3, R2, #0       
    ADD R1, R1, #1       
    ADD R2, R2, #1        
    BRz COPY_DONE        
    BRnzp COPY_LOOP       

COPY_DONE:
    HALT

SOURCE_STRING: .STRINGZ "Hello, LC-3!"  ; Exemple de la chaîne source
DEST_STRING:   .BLKW #20                 ; Espace pour la chaîne destination (assez grand pour contenir la source)

.END
