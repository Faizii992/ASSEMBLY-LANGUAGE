;Read a character and if it’s ‘y’ or ‘Y’ display it otherwise terminate the
;program.

INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.DATA
      
      
      N DB ? 
      SUM DB ?  
      CHAR DB ?
.CODE 

MAIN PROC
    
    
    MOV AX,@DATA
    MOV DS,AX
    
           PRINTN "ENTER A CHARACTER :"
           MOV AH,1
           INT 21H
                 MOV CHAR,AL
                 INT 21H
                 
                 
                 CMP CHAR,'y' 
                 cmp char,'Y'
                 
                 JE EQ1
                 JNE NEQ
                 
                 EQ1:
                 
                 PRINTN "IT MATCHES "
                 
                 
       NEQ:  
       
          
       MOV AH,2                        
       
       MOV AH,4CH
       INT 21H
    
    MAIN ENDP
END MAIN