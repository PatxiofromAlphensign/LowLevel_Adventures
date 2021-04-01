section .text
	global main

main:
   mov ecx,10
   mov eax, '0'

l1:   
   mov [num], eax
   mov eax, 4
   mov ebx, 1
   push ecx
	
   mov ecx, num        
   mov edx, 0xff        
   int 0x80
	
   mov eax, [num]
   sub eax, '0'
   dec eax
   add eax, '0'
   pop ecx
   loop l1

exit:
	mov eax, 1
	int 0x80
	pop ebp
	ret

section .data
	msg db "bruh", 0x1
section .bss
	num resb 1
