kind: make

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/bc.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/dtc.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/python3-setuptools.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/swig.bst
- freedesktop-sdk.bst:components/vim.bst

variables:
  make-args: all
  strip-binaries: ''

config:
  configure-commands:
  - |
    echo CONFIG_CMD_USB_MASS_STORAGE=y >>configs/qcm6490_defconfig

  - |
    make -j1 qcm6490_defconfig qcom-phone.config

  build-commands:
    (>):
    - |
      gzip u-boot-nodtb.bin

  install-commands:
  - |
    install -Dm644 -t '%{install-root}%{datadir}/u-boot/qcm6490' u-boot-nodtb.bin.gz

sources:
- kind: git_repo
  url: github:u-boot/u-boot.git
  track: v*
  exclude:
    - "*-rc*"
  ref: v2025.07-0-ge37de002fac3895e8d0b60ae2015e17bb33e2b5b
