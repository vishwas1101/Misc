
org 100h
                                          
; direct addressing
 
MOV AX, 3000H

MOV DS, AX

MOV CX, 4ECBH

MOV [171EH], CX

MOV BX, [171EH]
 
                                             
ret




