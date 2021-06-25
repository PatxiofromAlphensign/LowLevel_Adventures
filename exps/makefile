exes:=$(shell find ! -name .git -executable -type f)
$(shell echo $(exes) >> exes.txt)
random = randomp  example random
src=examples64

# .PHONY:
# 	example.o

$(src): 
	nasm -f elf64 $(@).asm 
	ld -m elf_x86_64 -s -o $@ $(@).o 
# always-recompile.o:
# 	nasm -f elf examples.asm 
# 	ld -m elf_i386 -s -o $@ examples.o 
linked: $(exes)
	nasm -f elf random.asm 
	ld -m elf_i386 -s -o $@ random.o 
	rm -rf $^
make_safe:
	nasm -f elf random_safe.asm 
	ld -m elf_i386 -s -o hello_safe random_safe.o 
clear:
	rm -f *.o $(random) || true
	rm -f *.o $(src) || true
clear_: clear
	#./dechmod "-"
re:	
	./dechmod "+"


