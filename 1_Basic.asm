;!! 8086 CPU has 8 general purpose registers, each register has its own name:
; ?AX - the accumulator register (divided into AH / AL).
; ?BX - the base address register (divided into BH / BL).
; ?CX - the count register (divided into CH / CL).
; ?DX - the data register (divided into DH / DL).
; ?SI - source index register.
; ?DI - destination index register.
; ?BP - base pointer.
; ?SP - stack pointer.

.model small ; memory model limit to 64KB
.stack 100h ; stack size 100h = 256 bytes
.data ; data segment
  Var1 db "Revolver 0x90 $" ; ininit Variable end-with $ sign
.code ; code segment
main proc
  ;Connecting data
  mov ax, @data ; Load data segment 
  mov ds, ax ; move to data segment 

  ;Input the character
  mov ah, 1h; 1h is the code for input
  int 21h; execute


  ;Output the character
  mov dl, al ; move the input to the dl register
  mov ah, 2h ; 2h for output the character
  int 21h ; execute
  

  ;Adding new line
  mov dl, 10 ; move cursor to the next line
  int 21h
  mov dl, 13 ; move cursor to the beginning of the line
  int 21h

  ;Output the string
  mov ah, 9h ; 9h for output the string
  mov dx, offset Var1 ; laod the string into the Dx
  int 21h ; execute
main endp  ; end of the code
end main ; terminate the program