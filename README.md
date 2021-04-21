# HelOS

An entire operating system (actually a boot sector) just to display: "Hello!"

## Install dependencies

```sh
sudo apt update -y
sudo apt install qemu-system-x86 nasm -y
```

## Compile the OS

```sh
nasm -o hello.bin main.asm
```

## Run the OS

```sh
qemu-system-x86_64 hello.bin
```
