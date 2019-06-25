test.iso: ./iso/boot/grub/grub.cfg ./grub/grub-mkrescue
	./grub/grub-mkrescue ./iso/ --directory ./grub/grub-core/ -o test.iso
