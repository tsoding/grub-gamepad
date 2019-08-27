[![Tsoding](https://img.shields.io/badge/twitch.tv-tsoding-purple?logo=twitch&style=for-the-badge)](https://www.twitch.tv/tsoding)
# Gamepad support for GRUB

- Development is done on https://twitch.tv/tsoding
- Archive of the streams: https://www.twitch.tv/collections/qhijEFrmqRUFvA

## Supported Gamepads

- Logitech Rumble Gamepad F510 in DirectInput mode

## Quick Start

```console
$ git clone --recursive git@github.com:tsoding/grub-gamepad.git
$ nix-shell     # On NixOS

$ cd grub/
$ ./bootstrap
$ ./configure
$ make -j5

$ cd ..
$ make -B
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
grub> insmod usb_gamepad
grub> terminal_input usb_gamepad
```

### QEMU

```console
$ lsusb
$ sudo qemu-system-i386 -usb -device usb-host,hostbus=<gamepad-bus>,hostaddr=<gamepad-addr> -cdrom test.iso # Alternatively, you can reference your device by its ids -device usb-host,vendorid=<gamepad-vendorid>,productid=<gamepad-productid> 
grub> nativedisk pata
grub> nativedisk uhci
grub> insmod usb_gamepad
grub> terminal_input usb_gamepad
```

## Architecture

### Adding New Module

TBD
<!-- TODO(#6): Adding New Module is not documented -->

### Registering New Terminal Input

TBD
<!-- TODO(#7): Registering New Terminal Input is not documented -->

### Attaching to a USB device

TBD
<!-- TODO(#8): Attaching to a USB device is not documented -->

## References

- https://steamcommunity.com/groups/steamuniverse/discussions/0/558751660797029626/
- https://github.com/rafaelffilho/RafaOS
- https://wiki.osdev.org/GRUB
- The Official GRUB repo: git://git.savannah.gnu.org/grub.git
- https://qemu.weilnetz.de/doc/qemu-doc.html#usb_005fdevices
- https://lists.gnu.org/archive/html/help-grub/2015-01/msg00011.html
- https://atariwiki.org/wiki/Wiki.jsp?page=How%2Bto%2Bwrite%2Ba%2BUSB%2BDriver
- https://github.com/krislig/rumblepad2py/blob/master/pad.py

## Support

You can support my work via

- Twitch channel: https://www.twitch.tv/subs/tsoding
- Patreon: https://www.patreon.com/tsoding
