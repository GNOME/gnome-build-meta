# Installation Guide

> [!warning] Experimental software
> You can run GNOME OS on real hardware now, with a few caveats: Hardware support is limited, there is no dedicated security team and some features are missing.
> This is bleeding edge, in-development software, and not recommended for daily usage if you're not a developer.

## Prepare USB Drive

The standard GNOME OS Nightly ISO can be installed and should just work on many computers, depending on how well the hardware components are supported by Linux. We keep a public document of [hardware support](https://pad.gnome.org/L6jFCDo8TiKpojF3eq8xBw) submitted by users, you can consult it to see if your hardware is supported or help us expand it. We want to improve our hardware support, so if you run into issues with your hardware please [report them here](https://gitlab.gnome.org/GNOME/gnome-build-meta/-/issues/new).

1. Download the latest [GNOME OS ISO](https://os.gnome.org/download/latest/live-x86_64.iso)
2. Plug in a USB drive and select it in GNOME Disks
3. In the ⋮ menu select `Restore Disk Image…`, open the ISO and click `Start Restoring…`

    > [!warning]
    > This erases all data on the USB drive.

## Boot and install from USB

In order to run GNOME OS you need UEFI to be enabled, and secure boot to be disabled.

1. Reboot into BIOS options and disable secure boot
2. Boot from the USB drive
3. Choose `GNOME OS Nightly` in the menu
4. Go through initial setup and create a user
5. If your destination disk contains data, erase it in GNOME Disks using `Format disk…` and selecting `No Partitioning`

    > [!warning]
    > This erases all data on the disk.

6. Upon logging in, a window will have proposed to install GNOME OS. Choose `Install now`
7. Select the disk to install to, and press `Install`
8. If the installer gives you a recovery key, your data is encrypted. Write the key down on a different device
9. You can then continue using GNOME OS

Now you should have a working GNOME OS setup on real hardware. Since GNOME OS is quite different from other Linux operating systems you should take a look at the [user guide](./using.md).

## Optional: Enabling Secure Boot

> [!note]
> This is not required to use GNOME OS. It is an optional security feature.

Most computers trust Microsoft's keys by default, allowing them to boot Windows and any other operating system signed by Microsoft. We use our own keys that are not signed by Microsoft, so in order to use Secure Boot you will have to enroll our keys on your UEFI.

> [!warning]
> This could cause a variety of problems. Firmware may not be able to load which can soft-brick your machine or disable display output, leaving you unable to see the UEFI settings menus and revert these changes. In that case you will need to reset your computer's UEFI or re-flash it from a bricked state. The process to do this varies from machine to machine and may be impossible on some computers, especially most laptops. Proceed at your own risk and only if you know how to reset your exact model of computer.

1. After the installation is done, reboot to Firmware settings
2. Enable Secure Boot
3. Find the Secure Boot option usually called `Setup Mode` and set your UEFI to that
4. In the bootloader menu, before booting GNOME OS, there should be two additional entries for enrolling secure boot keys
   - The `auto` option is the most compatible one as it includes our keys as well as the Microsoft keys, which is what firmware tends to be signed with for broad compatibility. This also allows operating systems signed with the Microsoft keys to boot (for example: Windows, Fedora Linux, Ubuntu and others).
   - The `private` mode only enrolls our keys, forbidding anything else from loading. This means that other operating systems will not be allowed to boot as long as Secure Boot is enabled, but it can also prevent some crucial firmware from loading, leaving your computer inoperable as explained above. Use this option your own risk.
