kernel.bat:kernel.asm  write_vga.asm boot.bat
	./section.sh
	nasm kernel.asm -o kernel.bat
boot.bat:boot.asm
	nasm boot.asm -o boot.bat
write_vga.asm:write_vga.o
	objconv -fnasm  write_vga.o  -o write_vga.asm
write_vga.o:write_vga.c
	gcc -m32 -fno-asynchronous-unwind-tables -s -c -o  write_vga.o write_vga.c 

clean:
	rm -rf *.bat  write_vga.asm write_vga.o 
