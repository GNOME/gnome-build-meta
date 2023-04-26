kind: meson

sources:
- kind: tar
  url: linuxcontainers:lxc/lxc-5.0.2.tar.gz
  ref: bea08d2e49efcee34fa58acd2bc95c0adc64d291c07f4cfaf4ac1d8ac5a36f45

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/linux-pam-base.bst

variables:
  meson-local: >-
    -Ddistrosysconfdir=default
    -Dman=false
