# User Guide

## Installing software

GNOME OS does not have a traditional package manager, but you can install software in a variety of ways. Graphical applications are available via flatpak and are easily installed from GNOME Software. Podman, toolbox and distrobox are also available.

You can also use snap after enabling it and rebooting:

```bash
updatectl enable --now snapd apparmor
```

## Setup a pin to unlock the disk

By default we encrypt your hard drive if there's a tpm2 device available. The long term plan is to use systemd homed to encrypt user data, but until then you can replace the unattended luks decryption with a tpm2+pin key in luks using the following command.

```bash
sudo systemd-cryptenroll --wipe-slot=tpm2 --tpm2-with-pin=true --tpm2-device=auto --tpm2-pcrs='' /dev/disk/by-partlabel/root
```

## Enable discard on the disks

There is no way currently to enable allow-disards on encrypted disks with systemd-gpt-auto-generator. There is also no way from systemd-repart to set it as default option on the volumes. So you will need to manually enable it.

```bash
sudo cryptsetup refresh root --allow-discards --persistent
```

## Update via command line

System updates are handled by systemd-sysupdate. GNOME Software should work just fine for that, but you can also do updates via terminal like so:

```bash
updatectl update
```

After that you can directly reboot into the new image.

## Use an older version of the operating system

There are always 2 versions of the operating system kept installed. If you need to use an older version, you can choose an older version from the menu at start-up.

## Install an older version of the operating system

You can install an even older version if it is still available to download using updatectl, for example version `nightly.1234`:

```bash
updatectl update host@nightly.1234
```

List all available versions for your system:

```bash
updatectl list host
```

## Enable development tooling and utilities

If you want to install the development toolchain of GNOME OS you can do so by enabling the following System Extensions. These include compilers, headers, along with common utilities used for GNOME development, such as flatpak-builder, GNOME Builder and so on.

```bash
sudo updatectl enable devel --now
```

## Enable the Nvidia driver

GNOME OS ships with the upstream open source drivers for Nvidia graphics cards, which are enough for light use but have subpar performance and don't support features like CUDA. If you want the best performance or need to use features like CUDA and OptiX, you should enable the Nvidia driver extension like so:

```bash
sudo updatectl enable nvidia-driver --now
```

After rebooting, you should be using the Nvidia driver.

> [!note]
> This extension only supports RTX 1600/2000 series or newer cards.

## Boot into older versions

If an update breaks something, you can always boot into an older version. You can do this quickly by pressing any key during boot to enter the menu, and then choosing a different version from the list.

## Updating firmware

Before applying a firmware update, you need to unlock the firmware PCR values. This will automatically recreate a pcrlock policy on next boot

```bash
sudo /usr/lib/systemd/systemd-pcrlock unlock-firmware-code
sudo /usr/lib/systemd/systemd-pcrlock unlock-firmware-config
```

## Re-enroll tpm2 if needed

If you update your firmware or reset the uefi settings, you might be asked to manually unlock your hard drive, instead of happening automatically. This is because the state of the machine has changed without the OS knowing about it. In such case you will need to re-enroll the tpm2 values for the updated firmware keys. (We are exploring ways to make this easier in the future)

```bash
sudo /usr/lib/systemd/systemd-pcrlock remove-policy
sudo /usr/lib/systemd/systemd-pcrlock make-policy --location=770 --pcr=0+1+2+3+4+5+7+11+14+15
sudo systemd-cryptenroll --wipe-slot=tpm2 --tpm2-device=auto --tpm2-pcrs='' /dev/disk/by-partlabel/root
```