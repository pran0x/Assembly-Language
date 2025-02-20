;? [name] directive initializer [,initializer]
;? i.e count1 DB 1 ; 1 byte variable 16bit

.model small
.stack 100h
.data 
    count1 db 2

.code 
main proc 
    mov ax, @data ; load data 
    mov ds, ax  ; mode toh data segment
    mov dl, count1 ; load count1 to dl
    add dl, 48 ; convert to ascii sum 48 to dl
    mov ah, 2h ;print char
    int 21h  ;execute

main endp
end main