INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.DATA

.CODE 

MAIN PROC
            
           MOV BX,10
           
            
            CMP BX,0
            
            JGE POS  
             JL NEGA
             
            POS:
            
            PRINTN "pOSITIVE"
               INT 21H
           
             NEGA:
             PRINTN "NEGATIVE"
    
    
       MOV AH,2
       MOV AH,4CH
       INT 21H
    
    MAIN ENDP
END MAIN