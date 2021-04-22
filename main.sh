nasm -o hello.bin main.asm
sed -i "1s/^/$1\x00/" hello.bin
n=$(stat -c%s hello.bin);while [ $n -lt 510 ];do n=$((n+1));echo -ne '\0';done >> hello.bin
printf '\125\252' >> hello.bin