kind: script

build-depends:
- core-deps/libostree.bst
- vm/qemu-tools.bst
- vm/repo.bst
- freedesktop-sdk.bst:integration/mtab.bst
- freedesktop-sdk.bst:components/genimage.bst

variables:
  (?):
  - arch == "x86_64":
      linux-root: 4F68BCE3-E8CD-4DB1-96E7-FBCAF984B709
  - arch == "i686":
      linux-root: 44479540-F297-41B2-9AF7-D131D5F0458A
  - arch == "arm":
      linux-root: 69DAD710-2CE4-4E3C-B16C-21A1D49ABED3
  - arch == "aarch64":
      linux-root: B921B045-1DF0-41C3-AF44-4C6F280D3FAE

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
  - element: vm/repo.bst
    destination: '/source-repo'
  - element: core-deps/libostree.bst
    destination: '/'
  - element: vm/qemu-tools.bst
    destination: '/'
  - element: integration/mtab.bst
    destination: '/'
  - element: components/genimage.bst
    destination: '/'

  commands:
  - mkdir -p "${OSTREE_REPO}"
  - ostree init --repo="${OSTREE_REPO}" --mode=bare

  - ostree config --group sysroot set bootloader none
  - ostree pull-local "/source-repo" %{ostree-branch}

  - mkdir -p "%{sysroot}/boot"

  - ostree admin init-fs "%{sysroot}"
  - ostree admin os-init --sysroot="%{sysroot}" gnome-os
  - |
    ostree admin deploy --os="gnome-os" \
         --sysroot="%{sysroot}" %{ostree-branch} \
         --karg="rw" --karg="quiet" --karg="splash"

  - |
    ostree admin set-origin --sysroot="%{sysroot}" \
           --index=0 \
           gnome-os %{ostree-remote-url} \
           %{ostree-branch}

  - |
    # gnome-os will be provided in /etc
    ostree remote delete gnome-os

  - |
    cp -r "%{sysroot}"/ostree/boot.1/gnome-os/*/*/boot/EFI/ "%{sysroot}/boot/"

  - |
    get_size() {
      size=$(($(du --apparent-size -B 512 -s "${1}" | cut -f1)/2))
      echo $((${size}+(${size}/10)))k
    }

    cat > %{install-root}/genimage.cfg <<EOF
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
        size = $(get_size %{sysroot})
    }
    image disk.img {
        hdimage {
            align = 1M
            gpt = true
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
    genimage --rootpath "%{sysroot}"
    mv images/disk.img .
    rm -rf genimage.cfg images/ tmp/

  # FIXME: Propose support for part attrs in genimage project
  - sfdisk --part-attrs %{install-root}/disk.img 2 55

  - xz ${XZFLAGS} %{install-root}/disk.img
