.model small
.stack 100h
.data
  displayString db "NAME : Pranto $"
  displaystring2 db "ID : 2233081405 $"
  NewLine db 13, 10, "$"
.code 

  main proc 

    mov ax, @data ; load data to accumulator 
    mov ds, ax ; move to accumator to data segment

  ;!  Displaying the Name
    mov ah, 9h ; print string 
    mov dx, offset displayString ; laod the string to dx
    int 21h ; execute

    ;! for line gape    
    mov dx, offset newline
    mov ah, 9h 
    int 21h 

  ;! Displaying the ID
    mov ah, 9h
    mov dx, offset displaystring2
    int 21h

    ;! for line gape
    mov dx, offset newline
    mov ah, 9h 
    int 21h 

  ;! Displaying the latter from Z to A
    mov cx, 26 ; count 26;
    mov al, 'Z' ;start from Z
  uppercase:
    mov dl, al ; move al to dl
    mov ah, 2h ; print character
    int 21h ; execute the program
    dec al; decrement al
    Loop uppercase ;start loop dorm 0 to 26
  ;! New line 
    mov dx ,offset newline 
    mov ah , 9h
    int 21h
  ;! Displaying the digit form 0 to 9
    mov cx, 10 ; count 10; 
    mov al, 0 ; start from 0
    add al, 48 ;convert to aschi
    digit: 
      mov dl ,al 
      mov ah, 2h 
      int 21h 
      inc al
      loop digit

    ;! New line
    mov dx, offset newline 
    mov ah, 9h  
    int 21h  

  ;! Displaying the latter from A to Z
    mov cx, 26 ; count 26; 
    mov al ,'a' ; start from a

    loweCase: 
      mov dl, al
      mov ah, 2h  
      int 21h 
      inc al 
      loop loweCase
endp 
end main