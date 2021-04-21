org 7c00h
start:
	hello db 48h, 65h, 6ch, 6ch, 6fh, 21h, 0
	cli
	mov si, hello
	mov ah, 0eh
	.loop:
		lodsb
		or al, al
		jz halt
		int 10h
		jmp .loop
halt hlt
times (200h + $$ - 2 - $) db 0
dw 0xaa55
