.model small
.stack 100
.data

.code 
main proc 

  Do: ; Doing an infinite loop
  mov dl, 5
  add dl, 48

  mov ah, 2h 
  int 21h

  jmp Do ; Doing an infinite loop
endp
end main