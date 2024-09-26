.ORIG x0000

LEA R4, dest
LD R5, source
STR R5, R4, #0
BRnzp end

source: .FILL x0044 
dest: .FILL x0055 

end: NOP
.END
