.ORIG x0000

LEA R1, value0
LDR R2, R1, #1
BRnzp end

value0: .FILL x0022 

end: NOP
.END
