kind: autotools

depends:
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
  type: build

- junction: freedesktop-sdk.bst
  filename: components/kmod.bst
  type: build

- junction: freedesktop-sdk.bst
  filename: components/flex.bst
  type: build
- junction: freedesktop-sdk.bst
  filename: components/bison.bst
  type: build
- junction: freedesktop-sdk.bst
  filename: components/bc.bst
  type: build
- junction: freedesktop-sdk.bst
  filename: components/gzip.bst
  type: build



sources:
- kind: git
  url: https://github.com/raspberrypi/linux
  track: rpi-5.4.y
  ref: b36a5877588559f25b54dbb7d6638324bb83a1c0
variables:
  make: make Image modules dtbs

config:
  configure-commands:
  - |
    KERNEL=kernel8
    make ARCH=arm64 bcmrpi3_defconfig

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

