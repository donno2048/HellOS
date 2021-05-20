# HellOS

An entire operating system (actually a boot sector) just to display: "Hello!" (Or anything else)

Inside the _Full_ folder there are the files needed to create an entire operating system (not only a boot sector) with cpp

## Clone the repo

```sh
git clone https://github.com/donno2048/HellOS
cd HellOS
```

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
