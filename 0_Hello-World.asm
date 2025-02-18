.model small  ; code for a tiny program  that size <= 65KB 
.code; code Segment
org 100h ; Directive to video memory 100h
main proc 
  mov ah, 09h ; Display string 
  mov dx, offset txt ; laod the string into the dx Register ; DX = Data Segment : offset 
  int 21h ; to intrrupt the program 


  mov ah, 4ch ; To exit the program
  xor al,al ; clear the al register or return 0 as short;
  int 21h ; terminate the program

main endp ; close the program
txt db "Hello world XD!!! Revovler oX90 $"
end main ; end the program 