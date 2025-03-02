.model small
.stack 100h
.data
a db 'Pranto Kumar Shil $'
b db '2233081405 $'
newline db 0Dh, 0Ah, '$'  ; Carriage return and line feed for new lines

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Display the string "Pranto Kumar Shil"
    mov ah, 09h
    lea dx, a
    int 21h

    ; Move to a new line
    lea dx, newline
    mov ah, 09h
    int 21h

    ; Display the string "2233081405"
    lea dx, b
    mov ah, 09h
    int 21h

    ; Move to a new line
    lea dx, newline
    mov ah, 09h
    int 21h

    ; Display all uppercase letters from 'Z' to 'A'
    mov cx, 26
    mov ah, 02h
    mov dl, 'Z'
    print_upper:
    int 21h
    dec dl
    loop print_upper

    ; Move to a new line
    lea dx, newline
    mov ah, 09h
    int 21h

    ; Display the digits from '0' to '9'
    mov cx, 10
    mov dl, '0'
    print_digits:
    mov ah, 02h
    int 21h
    inc dl
    loop print_digits

    ; Move to a new line
    lea dx, newline
    mov ah, 09h
    int 21h

    ; Display all lowercase letters from 'a' to 'z', each on a new line
    mov cx, 26
    mov dl, 'a'
    print_lower:
    mov ah, 02h
    int 21h
    ; Move to a new line
    lea dx, newline
    mov ah, 09h
    int 21h
    inc dl
    loop print_lower

    ; Exit the program
    mov ah, 4Ch
    int 21h
main endp
end main
