kind: script

build-depends:
- boards/pinephone/image-deps.bst
- boards/pinephone/repo.bst
- boards/pinephone/linux.bst

variables:
  linux-root: b921b045-1df0-41c3-af44-4c6f280d3fae
  ostree-branch: gnome-os/aarch64/pinephone
  board: pinephone

  sysroot: "/sysroot"

environment:
  OSTREE_REPO: "%{sysroot}/ostree/repo"
  XZFLAGS: -T%{max-jobs}

environment-nocache:
- XZFLAGS


config:
  layout:
  - element: ''
    destination: '/sysroot'
  - element: components/genimage.bst
    destination: '/'
  - element: boards/pinephone/repo.bst
    destination: '/source-repo'
  - element: boards/pinephone/image-deps.bst
    destination: '/'
  - element: core-deps/libostree.bst
    destination: '/'
  - element: boards/pinephone/linux.bst
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
         --karg="rw" --karg="splash" \
         --karg="root=LABEL=root" \
         --karg="console=ttyS0,115200n8" \
         --karg="earlycon=ttyS0,115200n8" 

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
    cat >%{install-root}/genimage.cfg <<EOF
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
    cd %{install-root}
    genimage --rootpath "%{sysroot}" --inputpath "%{indep-libdir}/u-boot/pinephone/"
    mv images/disk.img .
    rm -rf genimage.cfg images/ tmp/


  - sfdisk --part-attrs %{install-root}/disk.img 2 55
  
  - xz ${XZFLAGS} %{install-root}/disk.img
