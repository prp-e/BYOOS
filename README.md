# BYOOS
## Build your own operating system.
BYOOS is a very simple bootloader OS that could be used for school projects or fun!

### Dependencies

* build-essential
* nasm
* genisoimage
* qemu-system

### Environment

I used Debian GNU/Linux derivative, Linux Mint 16 to build. You can use Ubuntu, Debian , Trisquel, etc.

### Build Script
You can use our build script to build your own iso. 

#### Assemble

`` 
 	$ sh build-script.sh asm
``

You will get "BYOOS.bin"

#### Floppy image
``
 	$ sh build-script.sh img
``

You will get "BYOOS.img"

#### ISO

``
    $ sh build-script.sh iso
``

IMPORTANT: You should move *.img to cdiso directory first. 

#### Simulation
``
    $ sh build-script.sh qemu
``

