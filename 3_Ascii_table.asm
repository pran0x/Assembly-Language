.model small
.data
.code
main proc
  mov dl, 9h ; move hexa 9h int odl; 
  add dl, 30h ; add 30h to dl 30+9=39h refers to 9 in Ascii Table
  mov ah, 2h
  int 21h
main endp
end main


;! Ascii table link : https://upload.wikimedia.org/wikipedia/commons/1/1b/ASCII-Table-wide.svg