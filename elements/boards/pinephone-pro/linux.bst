kind: manual

sources:
- kind: git_tag
  url: github:megous/linux.git
  track: orange-pi-5.17
  ref: orange-pi-5.17-20220510-1956-272-gc654d072573f7e80aa18cc5fc46104ee82e278e1

depends:
- freedesktop-sdk.bst:components/kmod.bst

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/bc.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/openssl.bst

variables:
  bootdir: /boot
  kernel_arch: arm64
  image-name: arch/arm64/boot/Image

environment:
  ARCH: '%{kernel_arch}'

config:
  configure-commands:
  - make clean pinephone_pro_defconfig

  - |
    scripts/config -e EFI
    scripts/config -e BLK_DEV_INITRD
    scripts/config -e RD_GZIP
    scripts/config -e DMI
    scripts/config -e EFI_GENERIC_STUB_INITRD_CMDLINE_LOADER

  build-commands:
  - make -j$(nproc)

  install-commands:
  - install -Dm644 "%{image-name}" '%{install-root}%{bootdir}/vmlinuz'
  - install -Dm644 System.map '%{install-root}%{bootdir}/System.map'
  - make INSTALL_MOD_PATH='%{install-root}%{prefix}' modules_install
  - rm %{install-root}%{indep-libdir}/modules/*/{source,build}
  - make INSTALL_DTBS_PATH='%{install-root}%{bootdir}/dtbs' dtbs_install

public:
  bst:
    integration-commands:
    - |
      cd '%{indep-libdir}/modules'
      for version in *; do
        depmod -b '%{prefix}' -a "$version";
      done

    split-rules:
      devel:
        (>):
        - '%{bootdir}/System.map'
