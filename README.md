#### RinhaOS - A Operating System made just because of a compiler of the 'rinha' language

This Operating System code is shit, this is my first really operating system development for a purpose, the last OS that i developed was trash, so don't expect too much on this

### Building the OS

##### You're going to need a cross-compiler for the target 'i386-elf'
> To get this cross-compiler, use the instructions provided in [wiki.osdev.org](https://wiki.osdev.org/GCC_Cross-Compiler#Why_cross-compilers_are_necessary), and change the target to `i386-elf`

To build the binary, we're going to use Make.

```bash
$ make boot		# Build only the bootloader
$ make kernel		# Build only the kernel
$ make image		# Build a image to use in 'qemu'

# Or you can build all three together using the 'all' target
$ make			# You don't need to specify 'all'
```

### Running the OS

##### To run the Operating System, you need the qemu-system-i386 command
 - To get this command in your linux distro (or WSL), you can use one of the commands below to install

> Void Linux:
```terminal
# xbps-install qemu
```
> Debian-based distros:
```terminal
# apt install qemu-system-x86	# or qemu-system if the package doesn't exist
```
> Alpine Linux:
```terminal
# apk add qemu
```
> MacOS (brew):
```terminal
% brew install qemu
```

To run the OS in QEMU, use
```terminal
$ make run
```
