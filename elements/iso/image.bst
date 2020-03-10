kind: script

build-depends:
- iso/iso-build-deps.bst
- iso/signed-image-only.bst
- iso/filesystem.bst
- iso/initial-scripts.bst
- iso/initramfs.bst

variables:
  install-root: /build/install-root
  uuidnamespace: aea54278-2587-4075-ae67-8688ace4ce3d

config:
  layout:
  - element: ''
    destination: /tmp
  - element: ''
    destination: /build
  - element: iso/iso-build-deps.bst
    destination: /
  - element: iso/filesystem.bst
    destination: /sysroot
  - element: iso/initramfs.bst
    destination: /sysroot/efi
  - element: iso/initial-scripts.bst
    destination: /
  - element: iso/signed-image-only.bst
    destination: /sysroot/eosimages

  commands:
  - mkdir -p /build/images
  - mkdir -p /build/install-root
  - mkdir -p /build/stage-1
  - mkdir -p /build/stage-2
  - mkdir -p /build/sysroot-stage-2

  - |
    prepare-image.sh \
       --sysroot /sysroot \
       --seed "%{uuidnamespace}" \
       --rootsource LABEL="%{installer-volume-id}" \
       --rootfstype iso9660 \
       --noboot >/dev/null

  - |
    get_size() {
      size=$(($(du --apparent-size -B 512 -s "${1}" | cut -f1)/2))
      echo $((${size}+(${size}/10)))k
    }
    cat >/build/stage-1/genimage.cfg <<EOF
    image eosimages.img {
        mountpoint = "/eosimages"
        vfat {
            extraargs = "-F32 -n eosimages"
        }
        size = $(get_size /sysroot/eosimages)
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
    image efi.img {
        mountpoint = "/efi"
        vfat {
            extraargs = "-F32 -n EFI"
        }
        size = $(get_size /sysroot/efi)
    }
    image squashfs.img {
        mountpoint = "/"
        squashfs  {
        }
    }
    config {
        rootpath = "/sysroot"
        inputpath = "/build/images"
        outputpath = "/build/images"
    }
    EOF

  - |
    cat >/build/stage-2/genimage.cfg <<EOF
    image installer.iso {
        iso {
            extraargs = "-e /efi.img -no-emul-boot -boot-load-size 4 -efi-boot-part --efi-boot-image -sysid LINUX -publisher GNOME"
            volume-id = "%{installer-volume-id}"
        }
    }
    config {
        rootpath = "/build/sysroot-stage-2"
        inputpath = "/build/images"
        outputpath = "/build/images"
        genisoimage = "xorrisofs"
    }
    EOF

  - |
    cd /build/stage-1
    genimage

  - |
    mkdir -p "/build/sysroot-stage-2/LiveOS"
    mv "/build/images/squashfs.img" \
       "/build/sysroot-stage-2/LiveOS/"
    mv "/build/images/efi.img" \
       "/build/sysroot-stage-2/"
    mv "/build/images/eosimages.gpt.img" \
       "/build/sysroot-stage-2/"

  - |
    cd /build/stage-2
    genimage

  - mv /build/images/installer.iso "%{install-root}/"
  - implantisomd5 "%{install-root}/installer.iso"
