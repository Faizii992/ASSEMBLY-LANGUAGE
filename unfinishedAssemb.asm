.MODEL small
.stack 100H

.DATA

.CODE



MAIN PROC
    
     MOV bx,0
        
        INPUTLOOP:
     MOV AH,1
     INT 21H  
   PUSH aX
   INC bx
        CMP AL,0DH
        JE EXIT:
        JMP INPUTLOOP
    
        
            
        EXIT:  
        
                  
    
    
            MOV AH,2
            MOV dl,0DH
            INT 21H
           
            MOV dl,0AH
            INT 21H 
        
        
          ;MOV AH,2 
        ; ADD CL,48
         ; MOV DL,CL
          ;INT 21H
        
        
        STACKK: 
        
      cmp bx,0
      jle exit
    mov ah,2 
    pop bx
    mov dx,bx
    int 21h    
    jmp stackk
        
        
     EXITT:   
    MOV AH,2
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
