; !Problem Statement: The objective of this lab exercise is to write an 8086 assembly language 
; program that performs the following tasks: 
; 1. Takes a single-digit input from the user. 
; 2. Stores the input character in a variable. 
; 3. Prints a predefined number (9) stored in memory. 
; 4. Displays both the user input and the predefined number sequentially.

.model small
.stack 100h
.data 
  Predef db "9$" ; predefined variable
  userInput db ? ; user input variable
  EnterMsg db "Enter a number: $"
  EnterMsg2 db "User Number is : $"
  EnterMsg3 db "Predefined number is : $"
.code 

main proc 
  mov ax, @data ;load data to Accumulator Register  
  mov ds, ax ;move to data segment

  ;Output string
  mov ah, 9h ; 9h for string output
  mov dx , offset EnterMsg ; Load full string in Dx register
  int 21h ; execute 

  ;User Input
  mov ah,1h   ; 1h for input
  int 21h 
  mov userInput, al  ; store in variable
  int 21h 

  ;user output
  mov ah, 9h   
  mov dx , offset EnterMsg2  
  int 21h 

  mov dl, userInput ; load user input
  mov ah, 2h  
  int 21h 

  ;Line Break
  mov dl, 13 ; Carriage return
  int 21h 
  mov dl, 10 ; Line feed
  int 21h 

  ;predefined output
  mov ah, 9h 
  mov dx, offset EnterMsg3
  int 21h 

  mov dl, Predef ; load predef number from variable
  mov ah, 2h
  int 21h 

main endp  ; terminate program
end main ; end program