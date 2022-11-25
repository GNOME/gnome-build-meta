kind: manual

sources:
- kind: git_tag
  url: github:megous/linux.git
  track: orange-pi-6.0
  ref: orange-pi-6.0-20221105-1830-0-g7f305ec5ef634004d64fdd9b41044fe0bce7f397

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

    scripts/config -e SND_OSSEMUL
    scripts/config -m SND
    scripts/config -m SND_MIXER_OSS
    scripts/config -m SND_PCM_OSS
    scripts/config -m SND_HRTIMER
    scripts/config -m SND_SEQUENCER
    scripts/config -m SND_SEQ_DUMMY
    scripts/config -m SND_SEQUENCER_OSS
    scripts/config -m SND_ALOOP
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
    scripts/config -e SND
    scripts/config -e SND_TIMER
    scripts/config -e SND_PCM
    scripts/config -e SND_DMAENGINE_PCM
    scripts/config -e SND_HWDEP
    scripts/config -e SND_RAWMIDI
    scripts/config -e SND_JACK
    scripts/config -e SND_JACK_INPUT_DEV
    scripts/config -e SND_PCM_TIMER
    scripts/config -e SND_DYNAMIC_MINORS
    scripts/config -e SND_MAX_CARDS=32
    scripts/config -e SND_SUPPORT_OLD_API
    scripts/config -e SND_PROC_FS
    scripts/config -e SND_VERBOSE_PROCFS
    scripts/config -e SND_VMASTER
    scripts/config -e SND_MPU401_UART
    scripts/config -e SND_DRIVERS
    scripts/config -e SND_DUMMY
    scripts/config -e SND_ALOOP
    scripts/config -e SND_MTPAV
    scripts/config -e SND_SERIAL_U16550
    scripts/config -e SND_MPU401
    scripts/config -e SND_PCI
    scripts/config -e SND_HDA
    scripts/config -e SND_SPI
    scripts/config -e SND_SOC
    scripts/config -e SND_SOC_GENERIC_DMAENGINE_PCM
    scripts/config -e SND_SUN4I_CODEC
    scripts/config -e SND_SUN8I_CODEC
    scripts/config -e SND_SUN8I_CODEC_ANALOG
    scripts/config -e SND_SUN50I_CODEC_ANALOG
    scripts/config -e SND_SUN4I_I2S
    scripts/config -e SND_SUN4I_SPDIF
    scripts/config -e SND_SUN8I_ADDA_PR_REGMAP
    scripts/config -e SND_SOC_I2C_AND_SPI
    scripts/config -e SND_SOC_AK4613
    scripts/config -e SND_SOC_BT_SCO
    scripts/config -e SND_SOC_DMIC
    scripts/config -e SND_SOC_EC25
    scripts/config -e SND_SOC_MAX98357A
    scripts/config -e SND_SOC_SIMPLE_AMPLIFIER
    scripts/config -e SND_SIMPLE_CARD_UTILS
    scripts/config -e SND_SIMPLE_CARD
    scripts/config -e SND_AUDIO_GRAPH_CARD





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
