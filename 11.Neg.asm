.model small
.stack 100
.data
.code 
  main proc 


    mov cl, 5
    add cl, 48
    mov dl, cl
    neg dl ; dl = -5
    mov ah, 2h
    int 21h
endp 
end main