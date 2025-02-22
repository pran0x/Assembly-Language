


mov ax, ah ;not possible cz both are 8 bit registers
mov ah, al ; this is possible cz both are 8 bit registers
mov ax, bx ;possible cz both are 16 bit registers

;Not possible cz both are memory locations
mov var1, var2 ; not possible cz both are memory locations
  
  ;Correct Method 
mov ax, var1
mov var2, ax 