
ORG 100H
    
; 8.1 Ans: The value is stored in ASCII  

     
MOV AH, 01H    
INT 21H
MOV [0501H], AL
  
 
; 8.2 Ans: character input without echo    
; 8.3 Ans: get system date 
    ; return: 
    ; CX = year (1980-2099).
    ; DH = month. DL = day.
    ; AL = day of week (00h=Sunday)

RET




