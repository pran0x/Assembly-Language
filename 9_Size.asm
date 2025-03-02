.model small
.stack 100
.data
  var1 dw 1
.code 
main proc 
  mov eax, 0 ;eax = 32bit register;
  mov ax, var1 ; ax = 16 bit
  ;moving var1 to ax, dw = 16bit

endp
end main