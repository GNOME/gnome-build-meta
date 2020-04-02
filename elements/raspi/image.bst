kind: script

build-depends:
- raspi/configure.bst
- freedesktop-sdk.bst:integration/mtab.bst
- freedesktop-sdk.bst:components/genimage.bst

config:
  layout:
  - element: ''
    destination: '/sysroot'
  - element: ''
    destination: '/genimage'
  - element: raspi/configure.bst
    destination: '/configure'
  - element: integration/mtab.bst
    destination: '/'
  - element: components/genimage.bst
    destination: '/'

  commands:
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
