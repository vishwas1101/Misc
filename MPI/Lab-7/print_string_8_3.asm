
ORG 100H

.DATA

MSG DB 'BITS-PILANI$'

.CODE

MOV AX, @DATA

MOV DS, AX

MOV DX, OFFSET MSG

MOV AH, 09H

INT 21H

HLT

RET



