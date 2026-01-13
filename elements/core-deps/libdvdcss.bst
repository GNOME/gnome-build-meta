kind: meson
sources:
- kind: tar
  url: videolan_pub:videolan/libdvdcss/1.5.0/libdvdcss-1.5.0.tar.xz
  ref: 529463e4d1befef82e5c6e470db7661a2db0343e092a2fb0d6c037cab8a5c399

build-depends:
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Denable_docs=true
