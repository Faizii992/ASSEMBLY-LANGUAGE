 INCLUDE 'EMU8086.INC'
.MODEL SMALL  

.STACK 100H

.DATA

.CODE

MAIN PROC
         
         MOV BX,0
         MOV CX,5
         
         START:
         
         CMP BX,CX 
         PRINTN "hERE"
         DEC CX
         JNE START
           JE END
           
           
           END:
           
           PRINTN "oUT"
    
    
    
            MOV AH,2
            MOV AH,4CH
            INT 21H
    MAIN ENDP
END MAIN