.MODEL small
.stack 100H

.DATA
   a DW 12
   b dW 12
   
.CODE



MAIN PROC
    
      mov ax,@data
      mov ds,ax
        
     MUL B,12
     MUL A,5
     MOV AX,A     
         MOV BX,B 
         
      MOV AH,2   
    SUB AX,BX 
    MOV DX,AX
    INT 21H
        
     
    MOV AH,2
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
