extern printf

section .data
	msg db "fuck " , 0

section .text
	global main
main:
	;xor rsi, rsi
	push rcx

	mov rax, 4
	mov rbx, 1
	mov rcx, msg
	mov rdx, 1
	int 80h
	pop rcx

	add rdi, 1
	cmp rdi, 10
	jle main

	push rcx
	mov rax, 1
	int 80h
	pop rcx

