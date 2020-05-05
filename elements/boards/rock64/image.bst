kind: script

build-depends:
- boards/rock64/image-deps.bst
- vm/repo.bst
- freedesktop-sdk.bst:components/linux.bst

variables:
  linux-root: B921B045-1DF0-41C3-AF44-4C6F280D3FAE
  ostree-branch: gnome-os/aarch64/master
  board: rock64-rk3328

  sysroot: "/sysroot"

environment:
  OSTREE_REPO: "%{sysroot}/ostree/repo"

config:
  layout:
  - element: ''
    destination: '/sysroot'
  - element: ''
    destination: '/genimage'
  - element: vm/repo.bst
    destination: '/source-repo'
  - element: boards/rock64/image-deps.bst
    destination: '/'
  - element: components/linux.bst
    destination: '/kernel'

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
         --karg="console=ttyS2,1500000n8" \
         --karg="earlycon=uart8250,mmio32,0xff130000" \
         --karg="console=tty0" \
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
        partition idbloader {
            image = "idbloader.img"
            offset = 32K
            in-partition-table = false
        }
        partition uboot {
            image = "u-boot.itb"
            offset = 8M
            in-partition-table = false
        }
        partition efi {
            image = "efi.img"
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
    genimage --rootpath "%{sysroot}" --inputpath "%{indep-libdir}/u-boot/%{board}"

  - |
    sfdisk --part-attrs /genimage/images/disk.img 2 55

  - |
    qemu-img convert -O qcow2 -f raw /genimage/images/disk.img "%{install-root}/disk.qcow2"
