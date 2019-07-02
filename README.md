# Quick Start

```console
$ nix-shell     # On NixOS

$ cd grub/
$ git am ../patches/*.patch
$ ./autogen.sh
$ CFLAGS=-Wno-error ./configure
$ make -j5

$ cd ..
$ make
$ qemu-system-i386 -cdrom test.iso

grub> terminal_input khooy
```

# References

- https://github.com/rafaelffilho/RafaOS
- https://wiki.osdev.org/GRUB
