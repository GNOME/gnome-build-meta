kind: manual

sources:
- kind: tar
  url: ftp://ftp.denx.de/pub/u-boot/u-boot-2020.07-rc2.tar.bz2
  ref: 8bcfe10708dbae9f51fa0de8064abb3f842b4ecc02a7b927cec9fefc45363fc6

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/bc.bst

variables:
  board: rpi_4

config:
  configure-commands:
  - make "%{board}_defconfig"

  build-commands:
  - make V=1 all

  install-commands:
  - install -Dm644 -t "%{install-root}%{indep-libdir}/u-boot/%{board}" u-boot.bin
  - install -Dm755 -t "%{install-root}%{bindir}" tools/mkimage
