# HellOS

An entire operating system (actually a boot sector) just to display: "Hello!" (Or anything else)

## Install dependencies

```sh
sudo apt update -y
sudo apt install qemu-system-x86 nasm -y # qemu is needed only for running the OS locally (as in the **Run the OS** section)
```

## Compile the OS

```sh
bash main.sh Hello! # Or use any other word, for some reason some will work and some won't
```

## Run the OS

```sh
qemu-system-x86_64 hello.bin
```
