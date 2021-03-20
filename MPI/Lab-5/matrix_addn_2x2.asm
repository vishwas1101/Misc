
org 100h

MOV BX, 1300H
MOV BP, 1400H
MOV DI, 1500H
MOV SI, 0000H
MOV CL, 04H

L1: 
    MOV AL, [BX+SI]
    ADD AL, [BP+SI]
    MOV [DI], AL
    INC SI
    INC DI
    LOOP L1
hlt
ret




