	extern printf
	section data
	a: dq	5
fmt : db  "a=%ld, rax=%ld", 10, 0

section .text
	global main

main: ; two stacks from creation to end    
	mov edx, 0xfff
	push ecx
	mov ecx, msg
	mov ebx, 1
	mov eax, 4
	int 0x80
	pop ecx
	
	push ecx
	call icmnt
	mov eax, edi 
	mov edx, 0xffff
	mov ecx, icmnt
	mov eax, 4
	mov ebx, 1
	int 0x80
	pop ecx

	mov eax, 1
	int 0x80
	
icmnt:
	t db "t", 0xb
	mov cx, 0
	l1:
		mov eax, 4
		add cx, 1
		inc cx
	mov ax, [t]

test1:
	mov eax, edi
	add eax, 0xc
	xor eax, 0x1
	ret
test:	
	mov eax, edi
	msgl db "test", 0xa
	ret

section .data
	msg db "hello", 0xa
