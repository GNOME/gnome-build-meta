kind: script

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/genimage.bst
- freedesktop-sdk.bst:components/util-linux.bst
- filename: vm-secure/devel-layer.bst
  config:
    location: '/devel-layer'

environment:
  E2FSPROGS_FAKE_TIME: "1320937200"
  XZFLAGS: '-T%{max-jobs}'

environment-nocache:
- XZFLAGS

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
    usr_part_uuid="$(cat /devel-layer/usr-root-hash.txt | sed -E 's/^([0-9a-f]{8})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{12}).*/\1-\2-\3-\4-\5/')"
    usr_verity_part_uuid="$(cat /devel-layer/usr-root-hash.txt | sed -E 's/.*([0-9a-f]{8})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{12})$/\1-\2-\3-\4-\5/')"
    disk_uuid="$(uuidgen -s --namespace "%{uuidnamespace}" --name disk)"
    . /devel-layer/vars.txt
    usr_img="$(readlink /devel-layer/usr.squashfs)"
    cat > "%{build-root}/genimage.cfg" <<EOF
    image devel_%{image-version}.raw {
        hdimage {
            align = 1M
            partition-table-type = "gpt"
            disk-uuid = "${disk_uuid}"
        }
        partition gnomeos_usr_dev_%{image-version} {
            image = "/devel-layer/usr.squashfs"
            partition-type-uuid = "%{usr-uuid}"
            partition-uuid = "${usr_part_uuid}"
        }
        partition gnomeos_usr_dev_v_%{image-version} {
            partition-type-uuid = "%{usr-verity-uuid}"
            partition-uuid = "${usr_verity_part_uuid}"
            image = "/devel-layer/usr.verity"
        }
    }
    config {
      tmppath = "%{build-root}/tmp"
      outputpath = "%{install-root}"
    }
    EOF

  - genimage --config "%{build-root}/genimage.cfg" --rootpath /sysroot

  - |
    xz ${XZFLAGS} '%{install-root}/devel_%{image-version}.raw'
