
org 100h

MOV SI, 0200H
MOV CX, 7D
MOV AX, 0001H
MOV DX, 0000H

here: 
MUL CX
LOOP here: 

MOV [SI], AX

ret




