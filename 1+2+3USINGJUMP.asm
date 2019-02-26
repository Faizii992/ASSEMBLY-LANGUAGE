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
    
            MOV AH,1
            INT 21H
            SUB AL,48
            MOV N,AL
            
          MOV BL,1
         
        
          
          
          S:
              CMP BL,N  
              JG EXIT
          
          ADD SUM,BL
          INC BL
          JMP S  
          
          
             
             EXIT:
             PRINTN " tHE SUM IS "
             MOV AH,2
             INT 21H  
             ADD SUM,48
             MOV DL,SUM
             INT 21H
             
       MOV AH,2                        
       
       MOV AH,4CH
       INT 21H
    
    MAIN ENDP
END MAIN