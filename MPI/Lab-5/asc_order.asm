org 100h 

MOV SI, 0500H
MOV CL, [SI]
DEC CL

L1:               
    MOV SI, 0500H
    MOV CH, [SI]
    DEC CH
    INC SI
L2:  
    MOV AL, [SI]
    INC SI
    CMP AL, [SI]
    JC L3
    XCHG AL, [SI]
    DEC SI
    XCHG AL, [SI]
    INC SI
L3: 
    DEC CH
    JNZ L2 
    DEC CL
    JNZ L1

HLT 
ret
