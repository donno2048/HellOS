section .boot
bits 16
global boot
boot:
	mov ax, 0x3
	int 0x10
	mov [disk],dl
	mov ah, 0x2
	mov cl, 2
	mov bx, main
	int 0x13
	lgdt [gdt_pointer]
	mov cr0, eax
	mov ax, gdt_pointer - gdt_start
	jmp gdt_code - gdt_start: main
gdt_start dq 0x0
gdt_code:
	dw 0xFFFF
	dw 0x0
	db 0x0
	db 10011010b
	db 11001111b
	db 0x0
gdt_pointer:
	dw gdt_pointer - gdt_start
	dd gdt_start
disk db 0x0
times 510 - ($ - $$) db 0
dw 0xaa55
bits 32
main:
	extern kmain
	call kmain
	cli
hlt