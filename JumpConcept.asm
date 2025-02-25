.model small 
.stack 100h 
.data
msg1 db "Jump Concept $" 
msg2 db "Assembly Language $"
msg3 db "Completed $"
.code 
main proc 
    
    ;initail  the data sagment 
    mov ax , @data
    mov ds,ax
    
    
    mov dx , OFFSET msg1
    mov  ah ,9h
    int 21h 
    
    ;new line 
    mov  ah,2 
    mov dl ,10
    int 21h
    mov dl ,13 
    int  21h
    
    
    m:
    mov dx , offset msg2
    mov ah , 9h
    int 21h
    jmp n
    
    
   
    
    
    n: 
    ;new line 
    mov  ah,2 
    mov dl ,10
    int 21h
    mov dl ,13 
    int  21h
    
    mov dx , offset msg3
    mov ah , 9h
    int 21h
    jmp exit
     
    
    
    
    
    
    exit:
    mov ah ,4ch 
    int 21h
    main endp
end main