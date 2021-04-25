An entire operating system (not only a boot sector) just to display: "Hello!" (Or anything else) with cpp.

## Install dependencies

```sh
sudo apt update -y
sudo apt install qemu-system-x86 nasm g++ -y # qemu is needed only for running the OS locally (as in the **Run the OS** section)
```

## Compile the OS

```sh
bash build.sh
```

## Run the OS

```sh
qemu-system-x86_64 os.bin
```
