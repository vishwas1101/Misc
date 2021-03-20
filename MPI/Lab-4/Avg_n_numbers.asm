
org 100h

; average of N numbers

MOV AX, 0000H
MOV SI, 1100H
MOV CX, 0005H
MOV BX, 0000H  

MOV [SI], 0123H
MOV [SI+ 2H], 1234H
MOV [SI+ 4H], 1023H    
MOV [SI+ 6H], 1456H 
MOV [SI+ 8H], 2045H

lop: ADD AX, [SI] 
     INC SI 
     INC SI
     INC BX
     CMP CX, BX
JNZ lop    

DIV CX

MOV [1200H], AX

HLT

ret




