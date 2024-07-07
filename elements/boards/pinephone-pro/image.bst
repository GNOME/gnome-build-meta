kind: script

build-depends:
- boards/pinephone-pro/image-deps.bst
- filename: boards/pinephone-pro/repo.bst
  config:
    location: '/source-repo'
- filename: freedesktop-sdk.bst:components/linux.bst
  config:
    location: '/kernel'

variables:
  linux-root: B921B045-1DF0-41C3-AF44-4C6F280D3FAE
  ostree-branch: gnome-os/aarch64/pinephone-pro
  board: pinephone-pro-rk3399

  sysroot: "/sysroot"

environment:
  OSTREE_REPO: "%{sysroot}/ostree/repo"
  XZFLAGS: -T%{max-jobs}

environment-nocache:
- XZFLAGS


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
         --karg="rw" \
         --karg="root=LABEL=root" \
         --karg="loglevel=10" \
         --karg="console=ttyS2,1500000n8" \
         --karg="console=tty0" \
         --karg="consoleblank=0" \
         --karg="systemd.firstboot=no"

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
            gpt-location = 1M
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
    mv /genimage/images/disk.img %{install-root}/disk.img
    xz ${XZFLAGS} %{install-root}/disk.img
