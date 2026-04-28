kind: script

build-depends:
- gnomeos/generate-initramfs.bst
- oci/initramfs/deps.bst
- oci/initramfs/initial-scripts.bst
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:vm/prepare-image.bst

variables:
  sysroot-seed: 9473a621-1617-4679-87e5-031afef28359

environment:
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: /fakecap
  ZSTDFLAGS: -T%{max-jobs}
  DLOPEN_NOTE_IGNORE: archive:fido2:qrencode:ip4tc
  INITRD_MODE: oci

environment-nocache:
- ZSTDFLAGS

config:
  commands:
  - mkdir -p /fakecap
  - |
    prepare-image.sh \
       --seed "%{sysroot-seed}" \
       --noroot --noboot >/dev/null

  - |
    version="$(ls -1 /lib/modules | head -n1)"
    generate-initramfs %{install-root} "${version}" "%{libdir}" "%{libdir}/systemd"
