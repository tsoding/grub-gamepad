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

## Connecting Gamepad via USB

### VirtualBox

- Create Virtual Machine with 256MB of RAM and no HDD
- Attach the `test.iso` as Live CD
- Connect a Gamepad as an OHCI device.
- Start the machine to load into GRUB

```console
grub> nativedisk pata
grub> nativedisk ohci
grub> insmod khooy
grub> terminal_input khooy
```

### QEMU

```console
$ lsusb
$ sudo qemu-system-i386 -usb -device usb-host,hostbus=<gamepad-bus>,hostaddr=<gamepad-addr> -cdrom test.iso
grub> nativedisk pata
grub> nativedisk uhci
grub> insmod khooy
grub> terminal_input khooy
```

## Architecture

### Adding New Module

TBD
<!-- TODO(#6): Adding New Module is not documented -->

### Registering New Terminal Input

TBD
<!-- TODO: Registering New Terminal Input is not documented -->

### Attaching to a USB device

TBD
<!-- TODO: Attaching to a USB device is not documented -->

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
