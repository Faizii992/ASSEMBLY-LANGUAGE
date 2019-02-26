INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.DATA

.CODE 

MAIN PROC
            
     MOV BX,100
     INT 21H
     
     
     CMP BX,100
     JGE IF1
     
     
         CMP BX,80
     JGE IF2
     
        CMP BX,60
     JGE IF3
       
         CMP BX,40
     JGE IF4         
           CMP BX,20
     JGE IF5  
     
     
     
     
     
     IF1:
     PRINTN "gREATER OR EQUAL TO 100"  
     
     JMP END_IF
      
     IF2:
     PRINTN "gREATER OR EQUAL TO 80"   
     
     
       JMP END_IF
      
          IF3:
     PRINTN "gREATER OR EQUAL TO 60"  
     
     
         JMP END_IF
     IF4:
     PRINTN "gREATER OR EQUAL TO 40"  
     
         JMP END_IF
     IF5:
     PRINTN "gREATER OR EQUAL TO 20"  
     
            JMP END_IF 
            
     END_IF:       
       MOV AH,2                        
       
       MOV AH,4CH
       INT 21H
    
    MAIN ENDP
END MAIN