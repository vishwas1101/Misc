
org 100h

MOV [0600H], 0AH


MOV AX, 0000H
MOV SI, 0500H
MOV [SI], AL
INC SI 
ADD AL, 01H
MOV [SI], AL
MOV CX, [0600H]
SUB CX, 0002H

label: 
    MOV AL, [SI-1]
    ADD AL, [SI]
    INC SI
    MOV [SI], AL
    LOOP Label
    
HLT
ret




