kind: manual

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/kmod.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/bc.bst
- freedesktop-sdk.bst:components/gzip.bst



sources:
- kind: git_tag
  url: https://github.com/raspberrypi/linux
  # track: 5.4.y
  track: 4f10063ffdc292908e3d40e844cc37902e9e65de
  track-tags: false

variables:
  make: make Image modules dtbs

config:
  configure-commands:
  - |
    KERNEL=kernel8
    make ARCH=arm64 bcm2711_defconfig

  - |
    # Enable vc4 drm
     scripts/config -e I2C_BCM2835
     scripts/config -e DRM
     scripts/config -e DRM_FBDEV_EMULATION
     scripts/config -e DRM_VC4

  install-commands:
  - |
    make INSTALL_MOD_PATH="%{install-root}/usr/" modules_install
    mkdir -p %{install-root}/boot/
    mkdir -p %{install-root}/boot/overlays

    cp arch/arm64/boot/Image %{install-root}/boot/kernel8.img
    cp arch/arm64/boot/dts/broadcom/*.dtb* %{install-root}/boot/
    cp arch/arm64/boot/dts/overlays/*.dtb* %{install-root}/boot/overlays/
    cp arch/arm64/boot/dts/overlays/README %{install-root}/boot/overlays/

public:
  bst:
    split-rules:
      boot:
        - '/boot/*'
      mods:
        - '/lib/*'

