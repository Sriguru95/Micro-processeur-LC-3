.ORIG x3000

LEA R1, STRING_ADDRESS    ; Adresse de début de la chaîne en R1
LD R2, CHAR_TO_FIND       ; Code du caractère à rechercher en R2
LD R0, STRING_LENGTH      

LOOP:
    BRz NOT_FOUND          

    ADD R3, R1, R0        
    LDR R3, R3, #0         ;

    ADD R4, R3, #-1        ; Vérifier si le caractère actuel est égal à CHAR_TO_FIND
    BRz FOUND              ; Si oui, sauter à l'étiquette FOUND

    ADD R0, R0, #-1        ; Décrémenter la longueur restante
    BRnzp LOOP             

FOUND:
    ADD R0, R1, R0         ; Calculer l'adresse de la dernière occurrence
    HALT

NOT_FOUND:
    LD R0, NOT_FOUND_VAL   ; Si le caractère n'a pas été trouvé, R0 est 0
    HALT

STRING_ADDRESS: .STRINGZ "Hello, LC-3!"  ; Exemple de chaîne
CHAR_TO_FIND: .FILL x006c               ; Code du caractère à rechercher ('l')
STRING_LENGTH: .FILL #13                ; Longueur de la chaîne

NOT_FOUND_VAL: .FILL #0                
.END
