.model small 
.stack 100h
.data 
msg1 db "#==== Loop Concept ====# $"

.code 
main proc
    mov  ax,@data
    mov ds,ax
    
    mov dx, OFFSET msg1
    mov ah ,9h
    int 21h  
    
    
    ;for  new line
    mov ah,2
    mov dl ,10
    int 21h
    mov dl,13
    int 21h
    
    ;for loop
    mov cx ,26
    mov ah ,2h
    mov  dl , "A"
    
    level1:
    int 21h 
    inc dl 
    loop level1
    
    exit:
    mov ah ,4ch  
    int 21h      
    main endp
end main
    
    