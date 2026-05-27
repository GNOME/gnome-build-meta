# Installing GNOME OS manually to dual boot

If you want to try to install GNOME OS on a disk along with another OS (aka
dual booting), you can try to install GNOME OS manually.

## Overview of the process

We expect that here that you are running GNOME OS' live image.

1. Make some space on the disk. You will need 10GB + size of user data.
2. If your ESP is small, you will need to create an XBOOTLDR partition.
3. Create the A partitions and copy /usr and its verity.
4. Copy the kernel to ESP or XBOOTLDR
5. Copy boot chain to your ESP
6. Reboot and force shim fallback

## Note on using systemd-repart

`systemd-repart` can create and format partitions. In order to do it that you need to create a configuration directory. Then put some `*.conf` files. Then give the configuration to `systemd-repart` with `--definitions=<path>`. Typically, it will not write to the disk until you add `--dry-run=no`. But do dry run first to make sure what it is going to do.

Look at man pages for `systemd-repart(8)` and `repart.d(5)` for more information.

## Creating an XBOOTLDR

You need at least 500MB in your ESP, or 1G if you plan to use NVidia
proprietary drivers. We recommend 1G in either case.

You can use a repart.d configuration file such as:

```ini
[Partition]
Type=xbootldr
Format=vfat
SizeMinBytes=1G
SizeMaxBytes=1G
```

You need to run this configuration through `systemd-repart`.

## Creating initial /usr

You can use repart.d config files:

* `/usr/lib/repart.d/20-usr-verity-A.conf`
* `/usr/lib/repart.d/21-usr-A.conf`

Copy those files to your own repart.d definition directory and edit them to add `CopyBlocks=auto` on each of them.

You need to run this configuration through `systemd-repart`. You can run both configurations for this section and previous section at once.

## Copy the kernel

Mount the ESP or the created XBOOTLDR. Then copy
`/var/lib/gnomeos/installer-esp/EFI/Linux/gnomeos_*.efi` into
`/EFI/Linux` of the mounted disk.

## Copy the boot chain

Mount the ESP (if not already mounted). You need to copy files from
`/usr/share/factory/efi` into the ESP. If you already have a Linux
distribution installed on the machine, you can skip files in
`/EFI/BOOT`.

## Reboot

Make sure to boot the disk, not an entry[^1], in order to trigger the
fallback from shim. That will show a blue screen, this means that it
is creating the boot entry for GNOME OS. Then you can choose to boot
that entry.

## Verify the disk encryption

When not installing with the installer, the disk will still be encrypted of a TPM is available. However you need to verify a few things

### Set the recovery key

There is no propery recovery key set, but there is a password set: `ihavenotsetarecoverykey`. We recommend that you set a proper recovery key instead.

```bash
systemd-cryptenroll --recovery-key --wipe-slot password
```

Keep the recovery key somewhere safe!

### Verify pcrlock

If you run the following:

```bash
cryptsetup luksDump /dev/disk/by-partlabel/root
```

Check in the output that for the token of type `systemd-tpm2`, there is `tpm2-pcrlock: true`. If it is true. You're grand.

If not, first check if you TPM does support pcrlock:

```bash
/usr/lib/systemd/systemd-pcrlock is-supported
```

If that does not says "yes", your TPM or firmware is too old. If it says yes, try to enroll it.

```bash
/usr/lib/systemd/systemd-pcrlock remove-policy
/usr/lib/systemd/systemd-pcrlock make-policy --location=770 --pcr=0+1+2+3+4+5+7+11+13+14+15
systemd-cryptenroll --wipe-slot=tpm2 --tpm2-device=auto --tpm2-pcrs='' /dev/disk/by-partlabel/root
```

[^1]: UEFI can store multiple boot entries. They typically give a path to the EFI binary to call, and its parameters. Each disk also has a default boot, which is something like `EFI\BOOT\BOOT*.EFI`. If you want to boot that default, you need to boot the disk. So if you list UEFI boot entries, you will see names of operating systems as well as name of disks. Here we want to boot the disk the first time, so it will add the missing entry for GNOME OS.
