; A simple program to print the character 'A' on the screen

ORG 100h ; it tells that, the program wil laod into the video memory
        mov ax, 0B800h ;register the hexa value into the video memory, for text mode in color display
        mov DS, ax ;move the video memory into the [data_segment] point
        mov CL, 'A';store the A's Aschii value into the [Lower Register] as 41h [h = hexadecimal]
        mov CH, 1101_1111b;hold the binary value which is DFh.
        mov BX, 15Eh; holds the value;
        mov [BX],CX ; DS:BX (0B800:15E)
 ;[BX],[] means memory address;
 ; if BX = 100, then [BX] refers to 100
 ;here: CX = CH : CL
 ;   
 ;
RET ; Ends the program


;Summary : 
;The program sets up the video memory segment.
;It prepares the registers with specific values.
;It writes the character 'A' to the screen at
;a specific location with certain attributes.
;Finally, it returns to the operating system.       
          