org 7c00h
hello db 0
cli
mov si, hello
mov ah, 0eh
.loop:
	lodsb
	test al, al
	jz halt
	int 10h
	jmp .loop
halt hlt