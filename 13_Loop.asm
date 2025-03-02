.model small
.stack 100 
.data
.code 
  main proc 
    mov cx , 5 ; count is 5;

    run:

      mov dl , 5
      add dl , 48


      mov ah ,2h 
      int 21h

      Loop run ; start form 0 to 5
      pranto kumar


endp
end main 