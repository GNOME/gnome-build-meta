kind: script

build-depends:
- raspi/filesystem.bst
- freedesktop-sdk.bst:integration/mtab.bst
- freedesktop-sdk.bst:components/genimage.bst
- raspi/initial-scripts.bst
- freedesktop-sdk.bst:vm/prepare-image.bst

variables:
  uuidnamespace: 060b57a8-62bd-4d48-a471-0d28466d1fbb

config:
  layout:
  - element: ''
    destination: '/sysroot'
  - element: ''
    destination: '/genimage'
  - element: integration/mtab.bst
    destination: '/'
  - element: components/genimage.bst
    destination: '/'
  - element: ''
    destination: /tmp
  - element: raspi/filesystem.bst
    destination: /sysroot
  - element: raspi/initial-scripts.bst
    destination: /
  - element: vm/prepare-image.bst
    destination: /

  commands:
  - |
    prepare-image.sh \
       --sysroot /sysroot \
       --seed "%{uuidnamespace}" \
       --rootsource /dev/gpt-auto-root \
       --rootpasswd "root" \
       --noboot

  - |
    cat >/genimage/genimage.cfg <<EOF
     image boot.vfat {   
       vfat {
        }
        mountpoint = "/boot"
        size = 32M
    }
    image rootfs {
        ext4  {
            label = "root"
        }
        size = 16G
    }
    image sdcard.img {
        hdimage {
            align = 1M
            gpt = true
        }
        partition boot {
            partition-type = 0xC
            bootable = 'true'
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
