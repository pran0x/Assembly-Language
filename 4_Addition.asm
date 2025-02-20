.model small
.data
.code

main proc
  mov dl, 2 ; move 2 into dl
  add dl, 2 ; add 2 into the dl
  add dl, 48 ; again add 48 into dl
  mov ah, 2h ; init output
  int 21h ; Execute output
main endp 
end main