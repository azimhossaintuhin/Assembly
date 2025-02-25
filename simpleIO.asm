.model small
.stack 100h
; variable are assign here
.data                     

 ;main function and code start  here
.code                               
main proc
    mov ah,1h  ; Taking input form the user
    int 21h                                
     
    mov  bl , al ; storing first input
    
    mov  ah,1h  ; Taking input form the user again
    int 21h
    
    mov bh,al   ; string the second input
    
    ;output  first number
    mov ah,2h
    mov dl ,bl 
    int 21h
    
    ;output  second number
    mov ah ,2h 
    mov  dl , bh
    int 21h
    
    
    
    
    main endp
                 
end  main
