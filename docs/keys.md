# Secure Boot keys

This directory contains helpers to obtain a UEFI Secure Boot chain of trust
for GNOME OS.

The Makefile has the following targets:

* `generate-keys` (default): obtain keys following `IMPORT_MODE`.
* `clean`: delete all generated files

There are various modes for obtaining keys, controlled by the `IMPORT_MODE`
variable:

* unset (default): generate a full set of new keys locally.
* `snakeoil`: use pregenerated 'snakeoil' keys which are committed to the repo
* `local`: use 'snakeoil' for the root keys (PK, KEK and DB), generate the rest
  locally. This is useful when using a Machine Owner Key (MOK).
* `import`: read pregenerated keys from environment variables

See below for some guidance on which mode to use.

## Use cases

UEFI Secure Boot ensures that a machine's firmware will only boot operating
systems and UEFI applications that are trusted by the machine owner.

It does this by embedding a chain of trust in the firmware, and requiring that
UEFI applications are signed by a key that's allowed by the chain of trust.

Most desktop and laptop vendors ship with a chain of trust controlled by
Microsoft, and they enable Secure Boot by default in the firmware. This
means that Microsoft Windows can start out-of-the-box on a modern machine. Any
Linux distribution whose first-stage bootloader is signed by Microsoft can also
start without any need to reconfigure firmware. That includes many mainstream
Linux distributions today.

GNOME OS does not have any agreement with Microsoft to sign its bootloader. To
boot GNOME OS on a modern laptop or desktop, you must be the machine owner and
you'll need to modify the Secure Boot configuration in the firmware to trust
the keys.

If you downloaded an automated build from os.gnome.org, this is signed with keys
stored in GNOME's Gitlab. You don't need to generate new keys in this case. You
can go straight to adding the existing keys to the firmware's chain of trust.

If you're building GNOME OS locally, you will need to decide what signing
keys to use. You have several options.

### Snake Oil keys

The 'snakeoil' keys are pregenerated and committed to this Git repo.

That means, of course, that they don't provide any security guarantee at all.
(The name is reference to fake medicines that were common around the 19th
century in Europe and the US.)

The gnome-build-meta CI uses the 'snakeoil' keys for building feature branches.
That means the artifact cache contains prebuilt versions of the kernel, modules
and bootloader, signed with the snakeoil key. Your local build might be faster
using the 'snakeoil' keys as it can pull the prebuilt versions instead of
locally building and signing new ones.

### Local keys

By default `make` generates a full set of new keys.

This means your machine can be secure against certain attacks, like someone
trying to boot a different operating system while you're not watching to steal
your data.

It also means you'll need to locally build all the elements that are signed,
such as the kernel and bootloader.

### Local vendor keys

The `IMPORT_MODE=local` option is a hybrid of the first two options. It's
intended for local builds where you are deploying to a system that has an
existing installation of GNOME OS, and you are deploying your local build
as an update rather than installing from scratch.

In this mode, the insecure 'snakeoil' keys are used for the bootloader
components. Those are not updated when you install GNOME OS as an update to an
existing system, so you may as well take the fast path.

Everything else (kernel, modules, sysexts) gets a new locally generated key.

## Outputs

The Makefile will output the following keys:

* `PK`: Platform Key
* `KEK`: Key Enrollment key
* `DB`: Signature Database
* `VENDOR`: Vendor key for signing UEFI applications
* `MODULES`: Vendor key for signing kernel modules
* `SYSEXT`: Vendor key for signing system extensions

It will additionally output `-MIC` variants of the first two keys. These are
alternatives which include Microsoft keys in the chain of trust.

You can decide whether to enrol `PK` + `KEK` or `PK-MIC` + `KEK-MIC` in your
machine firmware.

The former option ensures that the firmware will ONLY boot software signed with
your chosen keys.

The latter option means the firmware will additionally allow any software
allowed by the Microsoft keys. This is useful if you want to allow the
machine to dual boot into other operating systems.

## Managing a Machine Owner Key

Machine Owner Key (MOK) can be used for:

* Locally built GNOME OS image.
* Locally built kernel modules.
* Locally build UKI addons (for custom kernel command lines).

When building a local image of GNOME OS, after generating
keys with `IMPORT_MODE=local`, the certificate file
`files/boot-keys/VENDOR.der` can be used. In other
cases, users can generation an x509 certificate
in DER format.

There are several ways to enable a MOK, eithe using
`mokutil` or by running shim's MOK manager.

### Enrolling a MOK using mokutil

`mokutil` is available on the developement extension. You can enroll
the key as follow.

```bash
mokutil --import files/boot-keys/VENDOR.der
```

`mokutil` will request a password as a challenge.

Then reboot. During boot, the MOK manager will start automatically
and propose to enroll the key asking for the password again.

### Enrolling a MOK using MOK manager directly

In some cases, for example when a kernel command line is required to
have a function system, it is not possible to call `mokutil` with
secure boot enabled. In that case it is possible to just enter the MOK
manager directly.

Create file `/boot/loader/entries/mm.conf` with the following content:

```txt
title MOK Manager
efi   /EFI/BOOT/mmx64.efi
```

Copy `files/boot-keys/VENDOR.der` into `/boot`.

Then the boot loader will have an entry "MOK Manager". Use that
to enroll key from disk.

## Further reading

There is lots of documentation online about UEFI Secure Boot for further
reading. Here are some links:

* Arch Linux wiki: [Unified Extensible Firmware Interface/Secure Boot](https://wiki.archlinux.org/title/Unified_Extensible_Firmware_Interface/Secure_Boot)
* Microsoft Windows Hardware Developer documentation:
  ["Secure Boot overview"](https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/secure-boot-landing)
* Proxmox wiki: [Secure Boot Setup](https://pve.proxmox.com/wiki/Secure_Boot_Setup)
