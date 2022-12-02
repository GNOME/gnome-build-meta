kind: manual

sources:
- kind: git_tag
  url: github:megous/linux.git
  track: orange-pi-6.0
  ref: orange-pi-6.0-20221017-0205-0-g2683672a2052ffda995bb987fa62a1abe8424ef4

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
  - make clean pinephone_defconfig

  - |
    scripts/config -e EFI
    scripts/config -e BLK_DEV_INITRD
    scripts/config -e RD_GZIP
    scripts/config -e DMI
    scripts/config -e EFI_GENERIC_STUB_INITRD_CMDLINE_LOADER

    scripts/config -e FW_LOADER
    scripts/config -e FW_LOADER_COMPRESS
    scripts/config -e FW_LOADER_PAGED_BUF
    scripts/config -e FW_LOADER_COMPRESS_XZ
    scripts/config -e FW_LOADER_COMPRESS_ZSTD
    scripts/config -e FW_CACHE





    scripts/config -e SND_PROC_FS
    scripts/config -e SND_VERBOSE_PROCFS

    scripts/config -e TMPFS_POSIX_ACL

    scripts/config -m SND
    scripts/config -e SND_OSSEMUL
    scripts/config -m SND_MIXER_OSS
    scripts/config -m SND_PCM_OSS
    scripts/config -m SND_HRTIMER
    scripts/config -m SND_SEQUENCER
    scripts/config -m SND_SEQ_DUMMY
    scripts/config -m SND_SEQUENCER_OSS
    scripts/config -m SND_ALOOP
    scripts/config -m SND_USB_AUDIO
    scripts/config -m SND_SOC
    scripts/config -m SND_SUN4I_CODEC
    scripts/config -m SND_SUN8I_CODEC
    scripts/config -m SND_SUN8I_CODEC_ANALOG
    scripts/config -m SND_SUN50I_CODEC_ANALOG
    scripts/config -m SND_SUN4I_I2S
    scripts/config -m SND_SUN4I_SPDIF
    scripts/config -m SND_SOC_BT_SCO
    scripts/config -m SND_SOC_EC25
    scripts/config -m SND_SOC_SIMPLE_AMPLIFIER
    scripts/config -m SND_SIMPLE_CARD
    scripts/config -m SND_AUDIO_GRAPH_CARD

    scripts/config -e SUN8I_THERMAL
    scripts/config -m VIDEO_SUN8I_DEINTERLACE
    scripts/config -m VIDEO_SUN8I_ROTATE
    scripts/config -e DRM_SUN8I_DW_HDMI
    scripts/config -e DRM_SUN8I_MIXER
    scripts/config -m SND_SUN8I_CODEC
    scripts/config -m SND_SUN8I_CODEC_ANALOG
    scripts/config -m ARM_SUN8I_A33_MBUS_DEVFREQ
    scripts/config -m CRYPTO_DEV_SUN8I_CE

    scripts/config -e FB_SIMPLE
    scripts/config -m USB_SERIAL_SIMPLE=m
    scripts/config -e DEVFREQ_GOV_SIMPLE_ONDEMAND

    scripts/config -m DRM_DW_HDMI_AHB_AUDIO
    scripts/config -m DRM_DW_HDMI_I2S_AUDIO






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
