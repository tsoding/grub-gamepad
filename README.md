# Gamepad support for GRUB

- Development is done on https://twitch.tv/tsoding
- Archive of the streams: https://www.twitch.tv/collections/qhijEFrmqRUFvA

## Quick Start

```console
$ git clone --recursive git@github.com:tsoding/grub-gamepad.git
$ nix-shell     # On NixOS

$ cd grub/
$ ./autogen.sh
$ CFLAGS=-Wno-error ./configure
$ make -j5

$ cd ..
$ make
$ qemu-system-i386 -cdrom test.iso
```
## Setting up Testing Input

```
grub> terminal_input khooy
```

## Connecting Gamepad via USB

### VirtualBox

Connect Gamepad as an OHCI device.

```console
grub> nativedisk pata
grub> nativedisk ohci
```

### QEMU

```console
$ lsusb
$ sudo qemu-system-i386 -usb -device usb-host,hostbus=<gamepad-bus>,hostaddr=<gamepad-addr> -cdrom test.iso
```

## References

- https://github.com/rafaelffilho/RafaOS
- https://wiki.osdev.org/GRUB
- The Official GRUB repo: git://git.savannah.gnu.org/grub.git
- https://qemu.weilnetz.de/doc/qemu-doc.html#usb_005fdevices
- https://lists.gnu.org/archive/html/help-grub/2015-01/msg00011.html

## Support

You can support my work via

- Twitch channel: https://www.twitch.tv/subs/tsoding
- Patreon: https://www.patreon.com/tsoding
