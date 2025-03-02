.model small
.stack 100h 
.data
  displayString db "Name : Pranto $"
  displayString2 db "ID : 2233081405 $"
  NewLine db 13, 10, "$"
  PromptText1 db "Enter first number : $"
  PromptText2 db "Enter second number : $"
  UserInput db ? 
  UserInput2 db ?
  NumAdd db ?
  NumSub db ?
  DisplayAdd db "Addition : $"
  DisplaySub db "Substraction : $"
.code  
  main proc 
  mov ax, @data
  mov ds, ax 

  ;! Displaying Name
  mov ah, 9h 
  mov dx, offset displayString ;showin name
  int 21h

  mov ah, 9h
  mov dx, offset newline
  int 21h  

  mov dx, offset displayString2 ; Showing ID
  mov ah, 9h 
  int 21h 


  mov ah, 9h
  mov dx, offset newline
  int 21h 

  ;! ADDITION
  ;! User prompt
  mov ah, 9h
  mov dx, offset PromptText1
  int 21h

  ;! User Input 
  mov ah, 1h 
  int 21h
  sub al, 30h
  mov  userInput, al

  mov ah, 9h 
  mov dx, offset newline 
  int 21h

  ;! User Prompt2
  mov ah,9h 
  mov dx, offset PromptText2 
  int 21h

  ;!User Input
  mov ah, 1h  
  int 21h
  sub al, 30h 
  mov  UserInput2, al  

  mov ah, 9h 
  mov dx, offset newline 
  int 21h  

;! Addition and store data
  mov al, UserInput
  add al, userInput2
  mov NumAdd, al
  ;! Displaying Addition prompt
  mov ah, 9h 
  mov dx, offset DisplayAdd 
  int 21h  
  ;! showing addition
  mov al, NumAdd
  add al, 30h
  mov dl, al
  mov ah, 2h 
  int 21h

  mov dx, offset newline
  mov ah, 9h  
  int 21h 

  ;!SUBTRACTION 
  ;! User prompt
  mov ah, 9h 
  mov dx, offset PromptText1 
  int 21h 

  ;! User Input
  mov ah, 1h 
  int 21h 
  sub al ,30h
  mov UserInput, al
  ;! Newline
  mov dx, offset newline 
  mov ah, 9h 
  int 21h 

  ;! User Prompt2
  mov ah, 9h 
  mov dx, offset PromptText2 
  int 21h 

  ;! User Input
  mov ah, 1h  
  int 21h  
  sub al, 30h 
  mov UserInput2, al 

  ;! Newline
  mov ah, 9h
  mov dx, offset newline
  int 21h 
  
  ;! Substraction and store data
  mov al, userInput
  sub al, userInput2
  mov NumSub, al
  ;! Displaying Substraction prompt
  mov ah, 9h 
  mov dx, offset displaySub 
  int 21h 

  ;! Showing Substraction
  mov al, NumSub
  add al, 30h
  mov dl, al
  mov ah, 2h 
  int 21h 

  ;! newLine
  mov ah, 9h 
  mov dx, offset newline
  int 21h
;! Terminate program
mov ah, 4ch 
int 21h
endp 
end main