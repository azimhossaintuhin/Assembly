;User Name Print  By  taking Input
.model small
.stack 100h
.code 

main proc
     mov ah,1h
     int 21h
     
     mov dl,al
     mov ah,2h
     int 21h   
     main endp


end main