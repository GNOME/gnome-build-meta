kind: script

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/genimage.bst
- freedesktop-sdk.bst:components/util-linux.bst
- filename: vm-secure/usr-image.bst
  config:
    location: '/usr-image'
- filename: vm-secure/signed-boot.bst
  config:
    location: '/sysroot'
- filename: vm-secure/signed-boot-common.bst
  config:
    location: '/sysroot'

environment:
  E2FSPROGS_FAKE_TIME: "1320937200"

variables:
  uuidnamespace: 9473a621-1617-4679-87e5-031afef28359
  build-root: /genimage
  (?):
    - arch == "x86_64":
        usr-uuid: 8484680c-9521-48c6-9c11-b0720656f69e
        usr-verity-uuid: 77ff5f63-e7b6-4633-acf4-1565b864c0e6

config:
  commands:
  - mkdir -p '%{build-root}'

  - |
    efi_part_uuid="$(uuidgen -s --namespace "%{uuidnamespace}" --name partition-efi)"
    usr_part_uuid="$(cat /usr-image/usr-root-hash.txt | sed -E 's/^([0-9a-f]{8})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{12}).*/\1-\2-\3-\4-\5/')"
    usr_verity_part_uuid="$(cat /usr-image/usr-root-hash.txt | sed -E 's/.*([0-9a-f]{8})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{12})$/\1-\2-\3-\4-\5/')"
    disk_uuid="$(uuidgen -s --namespace "%{uuidnamespace}" --name disk)"
    . /usr-image/vars.txt
    usr_img="$(readlink /usr-image/usr.squashfs)"
    sdk_version="${usr_img##usr_}"
    sdk_version="${sdk_version%.squashfs}"
    sdk_version="${sdk_version%_*}"
    cat > "%{build-root}/genimage.cfg" <<EOF
    image efi.img {
        vfat {
            extraargs = "--invariant -F32 -i${id_efi} -n EFI"
        }
        mountpoint = "/boot"
        size = 500M
        temporary = true
    }
    image disk.img {
        hdimage {
            align = 1M
            partition-table-type = "gpt"
            disk-uuid = "${disk_uuid}"
        }
        partition efi {
            image = "efi.img"
            partition-type-uuid = "U"
            partition-uuid = "${efi_part_uuid}"
        }
        partition gnomeos_usr_${sdk_version} {
            image = "/usr-image/usr.squashfs"
            partition-type-uuid = "%{usr-uuid}"
            partition-uuid = "${usr_part_uuid}"
            size = "10G"
        }
        partition gnomeos_usr_v_${sdk_version} {
            partition-type-uuid = "%{usr-verity-uuid}"
            partition-uuid = "${usr_verity_part_uuid}"
            image = "/usr-image/usr.verity"
            size = "64M"
        }
    }
    config {
      tmppath = "%{build-root}/tmp"
      outputpath = "%{install-root}"
    }
    EOF

  - genimage --config "%{build-root}/genimage.cfg" --rootpath /sysroot
