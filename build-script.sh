#!/bin/bash

case $1 in
   asm)
   nasm -f bin -o BYOOS.bin BYOOS.asm
   ;;
   img)
   dd status=noxfer conv=notruc if=BYOOS.bin of=BYOOS.img
   ;;
   iso)
   mkisofs -o BYOOS.iso -b BYOOS.img -no-emul-boot cdiso/
   ;;
   iso-help)
   echo "You need to move BYOOS.img to cdiso first!"
   ;;
   qemu)
   qemu-system-i386 -cdrom BYOOS.iso
esac
