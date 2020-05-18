kind: script

build-depends:
- boards/raspberrypi-4/my-image-deps.bst
- boards/raspberrypi-4/bsp/firmware.bst
- boards/raspberrypi-4/my-repo.bst
- boards/raspberrypi-4/my-linux.bst

variables:
  linux-root: B921B045-1DF0-41C3-AF44-4C6F280D3FAE
  ostree-branch: gnome-os/aarch64/raspberrypi-4
  board: rpi_4

  sysroot: "/sysroot"

environment:
  OSTREE_REPO: "%{sysroot}/ostree/repo"

config:
  layout:
  - element: ''
    destination: '/sysroot'
  - element: ''
    destination: '/genimage'
  - element: boards/raspberrypi-4/my-repo.bst
    destination: '/source-repo'
  - element: boards/raspberrypi-4/my-image-deps.bst
    destination: '/'
  - element: boards/raspberrypi-4/my-linux.bst
    destination: '/kernel'
  - element: boards/raspberrypi-4/bsp/firmware.bst
    destination: '/firmware'

  commands:
  - mkdir -p "${OSTREE_REPO}"
  - ostree init --repo="${OSTREE_REPO}" --mode=bare

  - ostree config --group sysroot set bootloader auto
  - ostree pull-local "/source-repo" %{ostree-branch}

  - mkdir -p "%{sysroot}/boot"

  - ostree admin init-fs "%{sysroot}"
  - ostree admin os-init --sysroot="%{sysroot}" gnome-os

  # U-Boot does not provide EFI variables at runtime. So /dev/gpt-auto-root
  # is not available.
  - |
    ostree admin deploy --os="gnome-os" \
         --sysroot="%{sysroot}" %{ostree-branch} \
         --karg="rw" --karg="quiet" --karg="splash" \
         --karg="root=LABEL=root" \
         --karg="dwc_otg.lpm_enable=0" \
         --karg-append="console=ttyS0,115200" \
         --karg-append="console=tty1" \
         --karg="plymouth.ignore-serial-consoles"

  - |
    mkdir -p "%{sysroot}/etc/ostree"
    cp -r "%{sysroot}"/ostree/boot.1/gnome-os/*/*/etc/ostree/remotes.d "%{sysroot}/etc/ostree/remotes.d"

  - |
    ostree admin set-origin --sysroot="%{sysroot}" \
           --index=0 \
           GnomeOS dummy \
           %{ostree-branch}

  - |
    cp -r "%{sysroot}"/ostree/boot.1/gnome-os/*/*/boot/EFI/ "%{sysroot}/boot/"

  - |
    cp -r "/kernel/boot/dtbs" "%{sysroot}/boot/dtb"

  - |
    cp /firmware/boot/* "%{sysroot}/boot/"

  - |
    cp "%{indep-libdir}/u-boot/%{board}/u-boot.bin" "%{sysroot}/boot/kernel8.img"
    cp "%{indep-libdir}/u-boot/%{board}/boot.scr" "%{sysroot}/boot/"

  # The dtb seems to be required by the firmware to be able to load u-boot
  - |
    cp -r "/kernel/boot/dtbs/broadcom/bcm2711-rpi-4-b.dtb" "%{sysroot}/boot/"

  # FIXME: We should try to load the overlay from u-boot instead.
  - |
    mkdir -p "%{sysroot}/boot/overlays"
    cp -r "/kernel/boot/dtbs/overlays/vc4-fkms-v3d.dtbo" "%{sysroot}/boot/overlays/"

  - |
    cat >"%{sysroot}/boot/config.txt" <<EOF
    enable_uart=1
    start_x=1
    # FIXME: We should maybe try to load fdt and overlays from u-boot
    device_tree_address=0x02600000
    dtoverlay=vc4-fkms-v3d
    dtparam=audio=on
    EOF

  - |
    size=$(($(du -s -B 4K "%{sysroot}" | cut -f1)*4+200*1024))
    cat >/genimage/genimage.cfg <<EOF
    image efi.img {
        vfat {
            extraargs = "-F32 -n EFI"
        }
        mountpoint = "/boot"
        size = 500M
    }
    image root.img {
        ext4  {
            label = "root"
            use-mke2fs = true
        }
        size = ${size}K
    }
    image disk.img {
        hdimage {
            gpt = true
            align = 1M
        }
        partition efi {
            image = "efi.img"
            partition-type = 0x0c
            bootable = true
            partition-type-uuid = "U"
        }
        partition root {
            image = "root.img"
            partition-type-uuid = "%{linux-root}"
        }
    }
    EOF

  - |
    cd /genimage
    genimage --rootpath "%{sysroot}"

  - |
    sfdisk --part-attrs /genimage/images/disk.img 2 55

  - |
    qemu-img convert -O qcow2 -f raw /genimage/images/disk.img "%{install-root}/disk.qcow2"
