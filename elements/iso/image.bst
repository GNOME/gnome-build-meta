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
    destination: /stage-1
  - element: ''
    destination: /stage-2
  - element: ''
    destination: /sysroot-stage-2
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
  - |
    prepare-image.sh \
       --sysroot /sysroot \
       --seed "%{uuidnamespace}" \
       --rootsource LABEL=GNOME-OS-INSTALLER \
       --rootfstype iso9660 \
       --noboot >/dev/null

  - |
    get_size() {
      size=$(($(du --apparent-size -B 512 -s "${1}" | cut -f1)*2))
      echo $((${size}+(${size}/10)))k
    }
    cat >/stage-1/genimage.cfg <<EOF
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
        inputpath = "/images"
        outputpath = "/images"
    }
    EOF

  - |
    cat >/stage-2/genimage.cfg <<EOF
    image installer.iso {
        iso {
            extraargs = "-e /efi.img -no-emul-boot -boot-load-size 4 -efi-boot-part --efi-boot-image -sysid LINUX -publisher GNOME -appid 'GNOME OS %{branch} %{arch}' "
            volume-id = "GNOME-OS-INSTALLER"
        }
    }
    config {
        rootpath = "/sysroot-stage-2"
        inputpath = "/images"
        outputpath = "/images"
        genisoimage = "xorrisofs"
    }
    EOF

  - |
    cd /stage-1
    genimage

  - |
    mkdir -p "/sysroot-stage-2/LiveOS"
    cp "/images/squashfs.img" \
       "/sysroot-stage-2/LiveOS/"
    cp "/images/efi.img" \
       "/sysroot-stage-2/"
    cp "/images/eosimages.gpt.img" \
       "/sysroot-stage-2/"

  - |
    cd /stage-2
    genimage

  - install -Dm644 -t "%{install-root}" /images/installer.iso

  - implantisomd5 "%{install-root}/installer.iso"
