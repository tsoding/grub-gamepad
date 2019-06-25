# Quick Start

```console
$ nix-shell     # On NixOS

$ cd grub/
$ ./autogen.sh
$ CFLAGS=-Wno-error ./configure
$ make -j5

$ cd ..
$ make
$ qemu-system-i386 -cdrom test.iso
```

# References

- https://github.com/rafaelffilho/RafaOS
- https://wiki.osdev.org/GRUB
