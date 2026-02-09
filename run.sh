#!/usr/bin/bash

mkdir -p build/

file_name=$1

riscv64-linux-gnu-as ${file_name} -o build/${file_name::-2}.o
riscv64-linux-gnu-ld build/${file_name::-2}.o -o build/${file_name::-2}
qemu-riscv64 ./${file_name::-2}
