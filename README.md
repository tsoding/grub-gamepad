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

grub> terminal_input khooy
```

## References

- https://github.com/rafaelffilho/RafaOS
- https://wiki.osdev.org/GRUB
- The Official GRUB repo: git://git.savannah.gnu.org/grub.git

## Support

You can support my work via

- Twitch channel: https://www.twitch.tv/subs/tsoding
- Patreon: https://www.patreon.com/tsoding
