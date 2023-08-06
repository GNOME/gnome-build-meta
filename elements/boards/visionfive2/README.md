## Build the VisionFive 2 image

``` shell
docker run --privileged --rm -it -v $(pwd):$(pwd) -w $(pwd) buildstream/buildstream:latest

bst -o arch riscv64 build boards/visionfive2/image.bst
bst -o arch riscv64 checkout boards/visionfive2/image.bst vf2-img

sudo dd if=vf2-img/sdcard.img of=$SDCARD status=progress bs=1M
```
