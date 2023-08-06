kind: script

build-depends:
- boards/visionfive2/image-deps.bst
- filename: boards/visionfive2/repo.bst
  config:
    location: /source-repo
- filename: boards/visionfive2/linux.bst
  config:
    location: /kernel

variables:
  linux-root: B921B045-1DF0-41C3-AF44-4C6F280D3FAE
  ostree-branch: gnome-os/riscv64/visionfive2
  board: vf2

  sysroot: "/sysroot"

environment:
  OSTREE_REPO: "%{sysroot}/ostree/repo"

config:
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
           gnome-os dummy \
           %{ostree-branch}

  - cp -r "%{sysroot}"/ostree/boot.1/gnome-os/*/*/boot/EFI/ "%{sysroot}/boot/"

  - cp -r "/kernel/boot/dtbs" "%{sysroot}/boot/dtb"

  - |
    cp "%{indep-libdir}/u-boot/%{board}/u-boot.bin" "%{sysroot}/boot/kernel8.img"
    cp "%{indep-libdir}/u-boot/%{board}/boot.scr" "%{sysroot}/boot/"

  - |
    size=$(($(du -s -B 4K "%{sysroot}" | cut -f1)*4+200*1024))
    mkdir /genimage
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
            partition-table-type = "gpt"
            align = 1M
        }
        partition efi {
            image = "efi.img"
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
    qemu-img convert -O qcow2 -f raw /genimage/images/disk.img "%{install-root}/disk.qcow2"
