
org 100h

; Register indexed addressing mode 

MOV AX, 3000H
MOV DS, AX

MOV AH, 78H

MOV BX, 1234H

MOV [BX + 0012H], AH

; address = 30000H + 1246H contains 78H
ret




