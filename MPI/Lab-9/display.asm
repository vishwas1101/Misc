
#start=led_display.exe#

#make_bin#

NAME "led" 

MOV AX, -5
x1:
  OUT 199, AX  
  INC AX     
  CMP AX, 6
JL x1

HLT
