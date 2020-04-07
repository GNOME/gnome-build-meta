kind: script

build-depends:
- vm/qemu-tools.bst
- vm/repo.bst
- freedesktop-sdk.bst:components/ostree.bst
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

config:
  layout:
  - element: ''
    destination: '/sysroot'
  - element: ''
    destination: '/genimage'
  - element: vm/repo.bst
    destination: '/source-repo'
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
           GnomeOS %{ostree-remote-url} \
           %{ostree-branch}

  - |
    # GnomeOS will be provided in /etc
    ostree remote delete GnomeOS

  - |
    cp -r "%{sysroot}"/ostree/boot.1/gnome-os/*/*/boot/EFI/ "%{sysroot}/boot/"

  - |
    cat >/genimage/genimage.cfg <<EOF
    image efi.img {
        vfat {
            extraargs = "-F32 -n EFI"
        }
        mountpoint = "/boot"
        size = 100M
    }
    image root.img {
        ext4  {
            label = "root"
        }
        size = 16G
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
    image disk.qcow2 {
        qemu {
        }
        partition image {
            image = "disk.img"
        }
    }
    EOF

  - |
    cd /genimage
    genimage --rootpath "%{sysroot}"

  - |
    install -Dm644 -t "%{install-root}" genimage/images/disk.qcow2
