section .text
	global main

main:
   mov ecx,10
   mov eax, '5'

l1:   
   mov [num], eax
   mov eax, [num]
   sub eax, '0'
   dec eax
   add eax, '0'
   loop l1

   push ecx
   mov eax, 4
   mov ebx, 1
   mov ecx, num        
   mov edx, 0xff        
   int 0x80
   pop ecx

exit:
	mov eax, 1
	int 0x80
	pop ebp
	ret

section .data
	msg db "bruh", 0x1
section .bss
	num resb 1
