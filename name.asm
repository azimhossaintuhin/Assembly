;Program  for  priniting  name  with  charecter
.model small 
.stack 100h
.data
;for adding variable 

.code 
main proc
    mov  dl, "T"
    mov ah,2
    int 21h
    
    mov  dl, "u"
    mov ah,2
    int 21h      
    
    
    mov  dl, "h"
    mov ah,2
    int 21h
    
    mov  dl, "i"
    mov ah,2
    int 21h
    
    mov  dl, "n"
    mov ah,2
    int 21h
    
    main endp
end main