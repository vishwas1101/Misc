
org 100h

; average of N numbers

MOV AX, 0000H
MOV SI, 1100H
MOV CX, 0004H
MOV DX, 0000H  

MOV [SI], 03H
MOV [SI+1H], 04H
MOV [SI+2H], 05H    
MOV [SI+3H], 08H

lop: ADD AL, [SI] 
     INC SI
     INC DX
     CMP CX, DX
JNZ lop
DIV CL

MOV [1200H], AX

HLT

ret




