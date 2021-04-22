# HellOS

An entire operating system (actually a boot sector) just to display: "Hello!"

## Install dependencies

```sh
sudo apt update -y
sudo apt install qemu-system-x86 nasm -y
```

## Compile the OS

```sh
nasm -o hello.bin main.asm
n=$(stat -c%s hello.bin);while [ $n -lt 510 ];do n=$((n+1));echo -ne '\0';done >> hello.bin
printf '\125\252' >> hello.bin
```

## Run the OS

```sh
qemu-system-x86_64 hello.bin
```
