	extern printf
	section data
	a: dq	5
fmt : db  "a=%ld, rax=%ld", 10, 0

section .text
	global main

main:
   mov ecx,10
   mov eax, '1'

l1:   
   mov [num], eax
   mov eax, 4
   mov ebx, 1
   push ecx
	
   mov ecx, num        
   mov edx, 1        
   int 0x80
	
   mov eax, [num]
   sub eax, '0'
   inc eax
   add eax, '0'
   pop ecx
   loop l1

section .data
	msg db "hello", 0xa
section .bss
	num resb 1
