kind: script

build-depends:
- iso/iso-build-deps.bst
- iso/signed-image-only.bst
- iso/filesystem.bst
- iso/initial-scripts.bst
- iso/initramfs.bst

variables:
  uuidnamespace: aea54278-2587-4075-ae67-8688ace4ce3d

config:
  layout:
  - element: ''
    destination: /tmp
  - element: ''
    destination: /images
  - element: ''
    destination: /stage-0
  - element: ''
    destination: /stage-1
  - element: ''
    destination: /stage-2
  - element: ''
    destination: /stage-3
  - element: ''
    destination: /sysroot-stage-3
  - element: iso/iso-build-deps.bst
    destination: /
  - element: iso/filesystem.bst
    destination: /sysroot
  - element: iso/initramfs.bst
    destination: /sysroot-efi
  - element: iso/initial-scripts.bst
    destination: /
  - element: iso/signed-image-only.bst
    destination: /eosimages

  commands:
  - |
    prepare-image.sh \
       --sysroot /sysroot \
       --seed "%{uuidnamespace}" \
       --rootpasswd root \
       --rootsource LABEL=GNOME-OS-INSTALLER \
       --rootfstype iso9660 \
       --noboot >/dev/null

  - |
    cat >/stage-0/genimage.cfg <<\EOF
    image eosimages.img {
        vfat {
            extraargs = "-F32 -n eosimages"
        }
        size = "700M"
    }
    image eosimages.gpt.img {
        hdimage {
            gpt = true
        }
        partition eosimages {
            image = "eosimages.img"
            partition-type-uuid = "F"
        }
    }
    config {
        rootpath = "/eosimages"
        inputpath = "/images"
        outputpath = "/images"
    }
    EOF

  - |
    cat >/stage-1/genimage.cfg <<\EOF
    image efi.img {
        vfat {
            extraargs = "-F32 -n EFI"
        }
        size = "100M"
    }
    config {
        rootpath = "/sysroot-efi"
        inputpath = "/images"
        outputpath = "/images"
    }
    EOF

  - |
    cat >/stage-2/genimage.cfg <<\EOF
    image squashfs.img {
        squashfs  {
        }
    }
    config {
        rootpath = "/sysroot"
        inputpath = "/images"
        outputpath = "/images"
    }
    EOF

  - |
    cat >/stage-3/genimage.cfg <<EOF
    image installer.iso {
        iso {
            extraargs = "-e /efi.img -no-emul-boot -boot-load-size 4 -efi-boot-part --efi-boot-image"
            volume-id = "GNOME-OS-INSTALLER"
        }
    }
    config {
        rootpath = "/sysroot-stage-3"
        inputpath = "/images"
        outputpath = "/images"
        genisoimage = "xorrisofs"
    }
    EOF

  - |
    cd /stage-0
    genimage

  - |
    cd /stage-1
    genimage

  - |
    cd /stage-2
    genimage

  - |
    mkdir -p "/sysroot-stage-3/LiveOS"
    cp "/images/squashfs.img" \
       "/sysroot-stage-3/LiveOS/"
    cp "/images/efi.img" \
       "/sysroot-stage-3/"
    cp "/images/eosimages.gpt.img" \
       "/sysroot-stage-3/"

  - |
    cd /stage-3
    genimage

  - install -Dm644 -t "%{install-root}" /images/installer.iso

  - implantisomd5 "%{install-root}/installer.iso"
