.MODEL small
.stack 100H

.DATA
   a DW 12
   b dW 12
   
.CODE



MAIN PROC
    
     CALL INDEC
     MOV BX,AX
     
     MOV AH,2
     MOV DL,0AH
     INT 21H
     MOV DL,0DH
     INT 21H
     
     MOV AX,BX
     CALL OUTDEC
     
     
     
    MOV AH,2
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP 

INCLUDE PGM_INDEC.ASM
INCLUDE PGM_OUTDEC.ASM
END MAIN
