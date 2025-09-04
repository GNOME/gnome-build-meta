# Install GNOME OS on FP5

## Installation

Build the boot.img (on aarch64):
```
bst build boards/fp5/boot-img.bst
bst artifact checkout boards/fp5/boot-img.bst --directory boot-img
```

On the phone:
* Make sure to update you update current OS
* Enable developer mode, and enable OEM unlocking
* Unplug from USB, hold volume down, and plug the usb. Wait for fasboot mode.

On a computer:
* Get fastboot from Android SDK
* Plug to the phone
* `fastboot oem unlock`

```
fastboot flash boot boot-img/boot.img
```

(FIXME: I think we need to remove dtbo.)

Download the [aarch64 iso](https://os.gnome.org/download/latest/live-aarch64.iso) for GNOME OS.

Create the disk to flash with:

```
sudo systemd-repart --empty=create --size=auto --sector-size=4096 --architecture=arm64 --definitions=utils/repart.raw.d/ --image=live.iso userdata.img
```

Then flash it:

```
fastboot flash userdata userdata.img
```

Then  reboot the phone:

```
fastboot reboot
```
