## Build the Rasberry Pi 4b image on aarch64

``` shell
bst build boards/raspberrypi-4/image.bst
bst checkout boards/raspberrypi-4/image.bst raspi-img

sudo dd if=raspi-img/sdcard.img of=$SDCARD status=progress bs=1M
```
