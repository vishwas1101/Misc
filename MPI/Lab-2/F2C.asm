
org 100h

JMP start

var1 db 122D

var2 db ?


start: 



MOV AL,var1
SUB AL,32D



MOV CL, 05D 
IMUL CL



MOV CL, 09D
IDIV CL



MOV var2, AL

ret




