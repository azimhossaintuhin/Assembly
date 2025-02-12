.model small
.stack 100h
.code 
main proc
    mov ah,1h
    int 21h
   
    
    mov ah,2h
    mov dl , bl 
    int 21h
    
    main endp
end main
     
    