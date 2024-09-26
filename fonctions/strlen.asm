.ORIG x3000  

LEA R0, STR   
LEA R1, STR  

ADD R2, R1, #0 

LOOP:
    LDR R3, R0, #0 
    BRz ENDSTR        

    ADD R2, R2, #1 
    ADD R0, R0, #1 
    BRnzp LOOP     

ENDSTR:
    HALT            

STR .STRINGZ "Bonjour" 

.END       
