# Quick Start

```console
$ nix-shell     # On NixOS

$ cd grub/
$ ./autogen.sh
$ CFLAGS=-Wno-error ./configure
$ make -j5

$ cd ..
$ ./grub/grub-mkrescue --directory ./grub/grub-core/ -o test.iso
$ qemu-system-i386 -cdrom test.iso
```
