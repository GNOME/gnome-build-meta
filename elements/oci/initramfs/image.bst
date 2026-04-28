kind: manual

build-depends:
- freedesktop-sdk.bst:components/cpio.bst
- freedesktop-sdk.bst:components/findutils.bst
- freedesktop-sdk.bst:components/zstd.bst
- filename: gnomeos-deps/microcode.bst
  strict: true
- filename: oci/initramfs/filesystem.bst
  strict: true
  config:
    location: /initramfs

variables:
  strip-binaries: ''

config:
  build-commands:
  - |
    (
      cd /initramfs
      find . -print0 | sort -z | cpio --reproducible --null -H newc -o --quiet | zstd ${ZSTDFLAGS} > %{build-root}/initramfs.img
    )

  - |
    case '%{arch}' in
      x86_64)
        cat %{indep-libdir}/firmware/microcode.cpio >> initramfs.img
      ;;
    esac

  install-commands:
  - |
    version="$(ls -1 /initramfs/usr/lib/modules | head -n1)"
    mkdir -p "%{install-root}/usr/lib/modules/${version}"
    cp initramfs.img "%{install-root}/usr/lib/modules/${version}/initramfs.img"
