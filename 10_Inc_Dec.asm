
.model small
.stack 100
.data 

.code 
main proc 

;! Increment 
  mov dl, 3
  inc dl ; dl = dl + 1
  add dl, 48

  mov ah, 2h ; print character
  int 21h
;! Decrement
  mov dl, 3
  dec dl ; dec =-1
  add dl, 48

  mov ah, 2h 
  int 21h
endp
end main 