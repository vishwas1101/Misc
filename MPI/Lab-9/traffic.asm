
#START=Traffic_Lights.exe#

name "traffic"

MOV AX, all_red
OUT 4, AX

MOV SI, offset situation
next:
        MOV AX, [SI]
        OUT 4, AX

MOV     CX, 1Eh
MOV     DX, 8480h          ; 4C4B40 is 50,00,000us = 5s
                           ; 1E8480 is 20,00,000us = 2s

MOV     AH, 86h
INT     15h

ADD SI, 2
CMP SI, sit_end
JB  next
MOV SI, offset situation
JMP next

situation        dw      0000_0011_0000_1100b
s1               dw      0000_0110_1001_1010b
s2               dw      0000_1000_0110_0001b
s3               dw      0000_1000_0110_0001b
s4               dw      0000_0100_1101_0011b
sit_end = $
all_red        equ     0000_0010_0100_1001b




