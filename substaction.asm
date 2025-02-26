.model small 
.stack 100h

.data
num01 db  "Enter The First Number : $"
num02 db  10,13, "Enter The Second Number: $"
reasult db 10,13, "Reasult: $" 


.code 
main proc       
    ;Init variables 
    mov ax , @data
    mov ds , ax 
    
    ;Taking Input First Number
    mov dx ,  offset num01
    mov  ah ,  9h
    int 21h
    
    
    mov ah , 1h
    int 21h
    mov bl , al
    
    
    ;Taking Input Second Number
    mov dx ,  offset num02
    mov  ah ,  9h
    int 21h
    
    
    mov ah , 1h
    int 21h
    mov bh , al
    
    
    ;subtraction  of this two  number
    mov dx , offset  reasult
    mov ah,9h 
    int  21h
    
    
    sub bl , bh 
    add bl, 48
    mov ah ,2h
    mov dl ,  bl 
    int 21h
  
    
    
    
    
    
    ;exit the dos  program 
    exit:                  
    mov ah , 4ch 
    int 21h
    main  endp
end main
