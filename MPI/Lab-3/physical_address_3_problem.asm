
org 100h

; add your code here      

MOV AX, 0300H
MOV DS, AX

MOV CX, 4A3CH
MOV [3126H], CX  

MOV DX, 10H
MUL DX

ADD AX, 3126H

ret




