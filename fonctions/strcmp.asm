.ORIG x3000

LEA R1, STR1           ; Adresse de début de la première chaîne en R1
LEA R2, STR2           ; Adresse de début de la deuxième chaîne en R2

; Comparaison des caractères des deux chaînes
LOOP:
    LDR R3, R1, #0      ; Charger le caractère actuel de la première chaîne
    LDR R4, R2, #0      ; Charger le caractère actuel de la deuxième chaîne

    ADD R5, R3, #-1     ; Comparer les caractères
    ADD R6, R4, #-1

    NOT R5, R5          ; Inverser les bits de R5
    ADD R5, R5, #1      ; Ajouter 1 à R5 pour obtenir le complément à deux

    ADD R0, R5, R6      ; Calculer la différence entre les caractères
    BRz NEXT_CHAR       ; Passer au caractère suivant si les caractères sont égaux
    HALT

; Passer au caractère suivant
NEXT_CHAR:
    BRz BOTH_EQ         ; Si les deux chaînes sont terminées, elles sont égales
    BRn FIRST_LT        ; Si le caractère de la première chaîne est plus petit, terminer
    BRp SECOND_LT       ; Si le caractère de la deuxième chaîne est plus petit, terminer

; Les chaînes sont égales
BOTH_EQ:
    LD R0, #0
    HALT

; La première chaîne est plus petite
FIRST_LT:
    LD R0, #1
    HALT

; La deuxième chaîne est plus petite
SECOND_LT:
    LD R0, #-1
    HALT

STR1: .STRINGZ "Hello, LC-3!"   ; Exemple de la première chaîne
STR2: .STRINGZ "Hello, World!"  ; Exemple de la deuxième chaîne

.END
