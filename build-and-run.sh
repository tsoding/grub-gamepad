#!/bin/sh

set -xe

# Rebuild GRUB
# The grub project should be prebuilt manually before using this script
pushd grub/
make -j5
popd

# Rebuild ISO
make -B

# Run QEMU
sudo qemu-system-i386 -usb -device usb-host,vendorid=0x046d,productid=0xc218 -cdrom test.iso
