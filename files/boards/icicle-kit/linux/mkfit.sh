#!/bin/sh

# data = /incbin/("linux/arch/riscv/boot/Image");
# data = /incbin/("linux/arch/riscv/boot/dts/microchip/icicle-kit-es-a000-microchip.dtb");

echo "Compressing kernel build objects"
# compess the kernel and dtb (kernel the biggest, dtb not so useful?)
lzma -z -9 < ./arch/riscv/boot/Image > kernel.lzma
lzma -z -9 < ./arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dtb > dtb.lzma

mkimage -f fit-image.its -A riscv -O linux -T flat_dt output.fit
