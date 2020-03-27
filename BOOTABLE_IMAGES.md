# Bootable images

## Building the installer

First run `utils/sign-image.sh` to build and sign the image.
Then build `iso/image.bst` and checkout the artifact. This will
contain `installer.iso`.

```
./utils/sign-image.sh
bst build iso/image.bst
bst checkout iso/image.bst checkout
```

## Running with GNOME Boxes

Copy file gnome-os-master.xml to `$XDG_CONFIG_HOME/osinfo/os/gnome.org/gnome-os-master.xml` for GNOME Boxes.

Using GNOME Boxes devel on flatpak, it will be: `~/.var/app/org.gnome.BoxesDevel/config/osinfo/os/gnome.org/gnome-os-master.xml`.

Using GNOME Boxes stable on flatpak, it will be: `~/.var/app/org.gnome.Boxes/config/osinfo/os/gnome.org/gnome-os-master.xml`.

Otherwise, `~/.config/osinfo/os/gnome.org/gnome-os-master.xml`

Then create a virtual machine using an "Operating System Image
File". Select `installer.iso` from the checkout directory.

## Updating with local OSTree

Run helper script: `utils/update-local-repo.sh`. This will create a
local repository with the current state of working copy.

Then run `utils/run-local-repo.sh` to start a server. This script does
not fork. Leave it to run.

Open a shell and type `enable-developer-repository`. The server has to
be running at that time. You do not need to pass any parameter if you
are running the image in a QEMU with standard configuration for user
network (`-netdev user`). For other configuration look at
configuration with `--help`.

If `enable-developer-repository` succeeded, you can then reboot.  Do
not call `enable-developer-repository` again.  Further updates will be
done automatically by `eos-updater`. To force update sooner, run
`eos-updater-ctl update`, or use GNOME Software.

## Building the base image (not installer)

Build `vm/image.bst` and checkout. The image will be `disk.qcow2`.

```
bst build vm/image.bst
bst checkout vm/image.bst checkout
```

## Running manually with QEMU the base image

Before the first run, copy the UEFI variables image.

```
cp /usr/share/OVMF/OVMF_CODE.fd .
```

Then, run with QEMU:

```
qemu-system-x86_64 \
  -enable-kvm -m 4G -smp 4 -machine q35,accel=kvm \
  -drive if=pflash,format=raw,unit=0,file=/usr/share/OVMF/OVMF_CODE.fd,readonly=on \
  -drive if=pflash,format=raw,unit=1,file=OVMF_VARS.fd \
  -display gtk,gl=on -vga virtio \
  -netdev user,id=net1 -device e1000,netdev=net1 \
  -soundhw hda \
  -usb -device usb-tablet \
  -drive file=checkout/disk.qcow2,format=qcow2,media=disk
```

For more explanations on the QEMU command line see section [Using
QEMU](#using-qemu).

## Running manually with QEMU the installer

Before the first run, copy the UEFI variables image.

```
cp /usr/share/OVMF/OVMF_CODE.fd .
```

And create a disk:

```
qemu-img create -f qcow2 disk.qcow2 64G
```

Then run with QEMU:

```
qemu-system-x86_64 \
  -enable-kvm -m 4G -smp 4 -machine q35,accel=kvm \
  -drive if=pflash,format=raw,unit=0,file=/usr/share/OVMF/OVMF_CODE.fd,readonly=on \
  -drive if=pflash,format=raw,unit=1,file=OVMF_VARS.fd \
  -display gtk,gl=on -vga virtio \
  -netdev user,id=net1 -device e1000,netdev=net1 \
  -soundhw hda \
  -usb -device usb-tablet \
  -drive file=disk.qcow2,format=qcow2,media=disk \
  -drive file=checkout/installer.iso,format=raw,media=cdrom
```

After installation re-launch QEMU, but remove the last drive (CD-ROM).

```
qemu-system-x86_64 \
  -enable-kvm -m 4G -smp 4 -machine q35,accel=kvm \
  -drive if=pflash,format=raw,unit=0,file=/usr/share/OVMF/OVMF_CODE.fd,readonly=on \
  -drive if=pflash,format=raw,unit=1,file=OVMF_VARS.fd \
  -display gtk,gl=on -vga virtio \
  -netdev user,id=net1 -device e1000,netdev=net1 \
  -soundhw hda \
  -usb -device usb-tablet \
  -drive file=disk.qcow2,format=qcow2,media=disk
```

### Using QEMU

<a name="using-qemu"></a>

#### UEFI boot

You need two files, OVMF/EDK2 code and variables.

We assume here we are using x86_64. The paths are:

- For vanilla QEMU:
  * /usr/share/qemu/edk2-x86_64-code.fd
  * /usr/share/qemu/edk2-i386-vars.fd
- For Debian and Fedora:
  * /usr/share/OVMF/OVMF_CODE.fd
  * /usr/share/OVMF/OVMF_VARS.fd

Copy the variable file locally. It is needed to be modified. The code
can stay because it will be read only.

#### Creating a hard disk

To create a 64GB disk, for example:

```
qemu-img create -f qcow2 disk.qcow2 64G
```

#### QEMU Parameters

4 CPU threads: `-smp 4`

4GB memory: `-m 4G`

For x86_64 with KVM: `-enable-kvm -machine q35,accel=kvm`

UEFI boot:

```
-drive if=pflash,format=raw,unit=0,file=/usr/share/OVMF/OVMF_CODE.fd,readonly=on
-drive if=pflash,format=raw,unit=1,file=OVMF_VARS.fd
```

Enabling graphics hardware acceleration: `-display gtk,gl=on -vga virtio`

Enabling sound: `-soundhw hda`

Enabling network: `-netdev user,id=net1 -device e1000,netdev=net1`

Getting the mouse pointer to work in windowed mode: `-usb -device
usb-tablet`.  Alternatively, you can use `-fullscreen`.

Adding a hard drive: `-drive file=disk.qcow2,format=qcow2,media=disk`

Adding a CD-ROM: `-drive file=cd.iso,format=raw,media=cdrom`

## Appendix

### nr_entries is too big

GNOME Shell seems to hit a limit in QEMU. If you get this error message
in the standard error stream of QEMU, try the following patch:

```
Index: qemu-4.1/hw/display/virtio-gpu.c
===================================================================
--- qemu-4.1.orig/hw/display/virtio-gpu.c
+++ qemu-4.1/hw/display/virtio-gpu.c
@@ -616,7 +616,7 @@ int virtio_gpu_create_mapping_iov(VirtIO
     size_t esize, s;
     int i;
 
-    if (ab->nr_entries > 16384) {
+    if (ab->nr_entries > (256*1024)) {
         qemu_log_mask(LOG_GUEST_ERROR,
                       "%s: nr_entries is too big (%d > 16384)\n",
                       __func__, ab->nr_entries);
```
