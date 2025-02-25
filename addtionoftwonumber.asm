.model small 
.stack  100h

.data
num1 db "Enter the First Number: $"
num2 db  "Enter The Second  Number: $"
res db "The addition of two  number is: $"


.code
main proc 
    
   ;initialize the variable 
   mov  ax , @data
   mov ds,  ax
   
   ;taking the first  input
   mov dx , OFFSET num1
   mov  ah, 9h
   int 21h              
   
   mov ah,1
   int 21h 
   mov bh,al 
   
   ;new line 
    mov  ah,2 
    mov dl ,10
    int 21h
    mov dl ,13 
    int  21h  
    
    ;taking the second  input
   mov dx , OFFSET num2
   mov  ah, 9h
   int 21h              
   
   mov ah,1
   int 21h 
   mov bl,al 
   
   ;new line 
    mov  ah,2 
    mov dl ,10
    int 21h
    mov dl ,13 
    int  21h
    
    
   ;print the reasult
   mov dx , OFFSET res
   mov ah , 9h
   int 21h
   
   mov ah ,2h
   add bl,bh   
   sub bl,48
   mov dl , bl 
   int 21h
   
    
    
   
   
    
    
    
    
    exit:
    mov ah ,4ch 
    int 21h
    main endp

end main
         