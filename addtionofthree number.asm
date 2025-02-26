.model small 
.stack  100h
.data
num01 db "Enter the first number: $"
num02 db 10,13,"Enter the second number: $"
num03 db 10,13, "Enter The third  number: $"
res db 10,13, "Addition of three number is : $"

.code
main proc
    
   ;inital variable 
   mov ax , @data
   mov ds, ax
   
   ;taking first input 
   mov dx , offset num01 
   mov ah , 9h
   int 21h
   
   mov ah , 1h
   int 21h    
   mov bl , al 
   
  ;taking second input 
   mov dx , offset num02 
   mov ah , 9h
   int 21h
   
   mov ah , 1h
   int 21h    
   mov bh, al   
   
   
  ;taking third input 
   mov dx , offset num03
   mov ah , 9h
   int 21h
   
   mov ah , 1h
   int 21h    
   mov cl , al     
   
   
   
   ;addition operation     
   mov dx,offset res
   mov ah ,9h
   int 21h
   
   
   
   add  bl , bh 
   sub bl , 48
   add bl,cl
   sub bl,48
  
   mov ah , 2h
   mov  dl , bl
   int  21h
   
   

    
    exit:
    mov ah ,  4ch 
    int 21h
    main endp
end main