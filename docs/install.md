# Installation Guide

> [!warning]
> **Experimental software**
>
> You can run GNOME OS on real hardware now, with a few caveats: Hardware support is limited, there is no dedicated security team and some features are missing.
> This is bleeding edge, in-development software, and not recommended for daily usage if you're not a developer.

## Prepare USB Drive

The standard GNOME OS Nightly ISO can be installed and should just work on many computers, depending on how well the hardware components are supported by Linux. We keep a public document of [hardware support](https://pad.gnome.org/L6jFCDo8TiKpojF3eq8xBw) submitted by users, you can consult it to see if your hardware is supported or help us expand it. We want to improve our hardware support, so if you run into issues with your hardware please [report them here](https://gitlab.gnome.org/GNOME/gnome-build-meta/-/issues/new).

1. Download the latest [GNOME OS ISO](https://os.gnome.org/)
2. Plug in a USB drive and select it in GNOME Disks
3. In the ⋮ menu select `Restore Disk Image…`, open the ISO and click `Start Restoring…`

   > [!warning]
   > This erases all data on the USB drive.

## Boot from USB

In order to run GNOME OS you need UEFI to be enabled, and secure boot to be disabled.

1. Reboot into BIOS options and disable secure boot
2. Boot from the USB drive
3. Choose `GNOME OS Nightly` in the menu

## Install

1. Go through initial setup and create a user
2. If your destination disk contains data, erase it in GNOME Disks using `Format disk…` and selecting `No Partitioning`

   > [!warning]
   > This erases all data on the disk.

3. Upon logging in, a window will have proposed to install GNOME OS. Choose `Install now`
4. Select the disk to install to, and press `Install`
5. If the installer gives you a recovery key, your data is encrypted. Write the key down on a different device
6. You can then continue using GNOME OS

Now you should have a working GNOME OS setup on real hardware. Since GNOME OS is quite different from other Linux operating systems you should take a look at the [user guide](./using.md).

## Note on Dual-Booting

Dual-booting GNOME OS is not recommended or officially supported. If you need to dual-boot GNOME OS with another OS, follow the [manual dual-boot instructions](./manual-dual-boot.md).
