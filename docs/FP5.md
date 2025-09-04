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

Reboot the phone. When u-boot menu shows up, select "USB mass storage".

The different logical unit number (LUN) will appear as USB mass storage disks.
One of them has a partition 17 with name `userdata`. Delete that partition.

Download the [aarch64 iso](https://os.gnome.org/download/latest/live-aarch64.iso) for GNOME OS.

In the checkout of gnome-build-meta, add file
`utils/repart.raw.d/50-root.conf` with the following content (this
file is only to fix padding issues with existing partitions, but it will be skipped):

```
[Partition]
Type=root
```

If the disk is /dev/sda, then run:

```
sudo systemd-repart --architecture=arm64 --defer-partitions=root --definitions=utils/repart.raw.d/ --dry-run=yes --image=live.iso /dev/sda
```

If that looks ok, re-run with `--dry-run=no`.

## Known bugs, workaounds

### Selecting time zone in GNOME Initial Setup

Right now, the time zone selector for `gnome-initial-setup` isn't
responsive, and it's not possible to maximize, resize, or move the
window off-screen. When running GNOME OS on a phone, this means there
is no way to press the "Next" button. As a workaround, select your
time zone, press "Previous", then "Next", then press Enter on the
on-screen keyboard.
