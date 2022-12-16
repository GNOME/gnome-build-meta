kind: manual

sources:
- kind: git_tag
  url: github:megous/linux.git
  track: orange-pi-6.0
  ref: orange-pi-6.0-20221111-0002-508-ge191fb41a4fa9d8e8e3b2f4b0452c536222c087e

depends:
- freedesktop-sdk.bst:components/kmod.bst
- boards/generic/linux-firmware.bst

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

    scripts/config -e NET_VENDOR_BROADCOM

    scripts/config -m B43
    scripts/config -e B43_SDIO
    scripts/config -m B43LEGACY
    scripts/config -m BRCMSMAC
    scripts/config -m BRCMFMAC
    scripts/config -e BRCMFMAC_USB
    scripts/config -e BRCM_TRACING
    scripts/config -e BRCMDBG

    scripts/config --set-str EXTRA_FIRMWARE "regulatory.db regulatory.db.p7s brcm/brcmfmac43455-sdio.bin brcm/brcmfmac43455-sdio.pine64,pinephone-pro.txt brcm/brcmfmac43455-sdio.clm_blob brcm/BCM4345C0.hcd rockchip/dptx.bin"
    scripts/config --set-str EXTRA_FIRMWARE_DIR "/workspace/megous.com/orangepi-pc/firmware"

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
