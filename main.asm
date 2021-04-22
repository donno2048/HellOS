org 7c00h
hello db 0
cli
mov si, hello
mov ah, 0eh
loop:
	lodsb
	int 10h
	cmp al, 0
	jne loop
