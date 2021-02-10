
org 100h

; Base Indexed addressing mode

  

MOV AX, 3000H
MOV DS, AX 

MOV [2246H], 64H 

MOV SI, 1234H

MOV BX, 1000H

MOV AL, [BX+SI+0012H]

ret




