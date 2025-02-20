.model small
.data
.code
main proc
  mov dl, 5 ; move 5 [decimal] into dl
  sub dl, 2 ; sbtract 2 [decimal] from dl

  mov ah, 2h  ; init output
  int 21h ; execute output
main endp
end  main