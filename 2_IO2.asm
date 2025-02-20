.model small
.stack 100h
.data
  Var1 db ? ;? Define/Reserve a byte variable, Uninitialized
.code
main proc 
mov ax, @data ; Loda the variable into the data segment
mov ds, ax ;move the data segment into the data Register
;! AH and AL 
;!`AH` hold the function code for input
;! `AL` hold the result/Input into the register

;? Data Reading
  mov ah, 1h
;setting the interrupt for reading a character from the keyboard
  int 21h ; Dos interrupt to read a character from the keyboard
  ; the character is stored in the al register
  mov Var1, al ; move the input from al register to memory
  mov dl, al ; move the input from memory to dl register
;? Data Writing
  mov ah, 2h
  int 21h;
main endp
end main
