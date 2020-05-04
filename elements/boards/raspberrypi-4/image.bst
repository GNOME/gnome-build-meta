kind: script

build-depends:
- boards/raspberrypi-4/filesystem.bst
- freedesktop-sdk.bst:integration/mtab.bst
- freedesktop-sdk.bst:components/genimage.bst
- boards/raspberrypi-4/initial-scripts.bst
- freedesktop-sdk.bst:vm/prepare-image.bst

config:
  layout:
  - element: ''
    destination: '/genimage'
  - element: integration/mtab.bst
    destination: '/'
  - element: components/genimage.bst
    destination: '/'
  - element: ''
    destination: /tmp
  - element: boards/raspberrypi-4/filesystem.bst
    destination: /sysroot
  - element: boards/raspberrypi-4/initial-scripts.bst
    destination: /
  - element: vm/prepare-image.bst
    destination: /

  commands:
  - |
    cd /sysroot
    mkdir -p {srv,sys,tmp}

  - |
    prepare-image.sh \
       --sysroot /sysroot \
       --rootsource /dev/mmcblk0p2 \
       --rootpasswd "root" \
       --noboot \
       --rootfsopts "defaults,noatime"

  - |
     cat >>"/sysroot/etc/fstab" <<EOF
     /dev/mmcblk0p1 /boot vfat defaults 0 2
     EOF

  - |
    cat >/genimage/genimage.cfg <<EOF
     image boot.vfat {
       vfat {
        }
        mountpoint = "/boot"
        size = 64M
    }
    image rootfs.ext4 {
        ext4  {
            label = "root"
            use-mke2fs = true
        }
        size = 4G
    }
    image sdcard.img {
        hdimage {
        }
        partition boot {
            partition-type = 0xC
            bootable = "true"
            image = "boot.vfat"

        }
        partition rootfs {
            partition-type = 0x83
            image = "rootfs.ext4"
        }
    }
    EOF

  - |
    cd /genimage
    genimage --rootpath /sysroot

  - |
    install -Dm644 -t "%{install-root}" genimage/images/sdcard.img
