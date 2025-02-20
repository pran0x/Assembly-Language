.model small ;Define memory Model
.data ; Data Segment
.code ; Code Segment

main proc
  mov ah, 1h ; Ready for input
  int 21h ; Read input from user

  mov dl, al ; move data to the data register 
  mov ah, 2h; Ready for output
  int 21h ;out the data
main endp
end main
