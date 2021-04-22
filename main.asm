org 7c00h
cli
mov si, 7c00h
mov ah, 0eh
loop: lodsb
int 10h
cmp al, 0
jne loop