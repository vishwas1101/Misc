
org 100h

jmp start

var1 db 50D
var2 db ?

start:
                           
MOV CL, var1
MOV AL, 09D
IMUL CL

MOV CL, 05D
IDIV CL

ADD AL, 032D 

MOV var2, AL

ret




