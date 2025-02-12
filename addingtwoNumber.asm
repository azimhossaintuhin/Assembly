;Adding  two  number
.model  small
.stack 100h
.code 
main proc
    mov bl,4
    mov cl,2 
    
    add bl,cl
    add bl,48 
    
    mov dl,bl
    mov ah,2h
    int 21h
    
    main endp
end main

                      