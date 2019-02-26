INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.DATA
      
      
      N DB ? 
      SUM DB ?
.CODE 

MAIN PROC
    
   MOV AX,@DATA
   MOV DS,AX
   
   PRINTN "ENTER N : "
   MOV AH,1
   INT 21H
   SUB AL,48
   MOV N,AL
   INT 21H
   
    MOV BL,N
   S:
   
   CMP BL,1
     JL EXIT
   
   ADD SUM,BL
   DEC BL
   JMP S
         
         
         
         EXIT:
         
        PRINTN "THE SUM IS "
        MOV AH,2 
        ADD SUM,48
        MOV DL,SUM
        INT 21H
            
       MOV AH,2                        
       
       MOV AH,4CH
       INT 21H
    
    MAIN ENDP
END MAIN