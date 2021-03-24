	extern printf
	section data
	a: dq	5
fmt : db  "a=%ld, rax=%ld", 10, 0

section .text
	global main

main:   
	mov edi, 2
	call test1	
	
	push ebp

	mov edx, [a]
	add edx, 2
	mov edi, fmt
	mov edi, [a]
	mov edx, eax
	
	pop ebp	
	
	mov eax, 0
	;call printf
	mov eax, 4
	int 0x80
	mov eax, 1
	int 0x80

	ret
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
