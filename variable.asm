.model small 
.stack  100h
;variable stroe
.data          
msg1 db  2   
msg2 db  ?

;code sagement
.code       
main proc
    ;initaling the data segmant 
    
    mov ax,@data
    mov ds ,ax
    
    ;showing the data from the variabel
    mov ah,2h  
    add msg1,48      ; adding 48  from  asci to int
    mov dl , msg1
    int 21h 
    
    ;takinguser input and storing in the variabel          
    mov ah ,1h
    int 21h
    mov msg2,al 
  
    
    ;priniting new line 
    mov ah ,2h
    mov dl , 10 
    int 21h
    mov dl , 13
    int 21h
    
    ;showing the input
    mov ah,2h
    mov dl , msg2
    int 21h
    
           
    
  main endp
end main
