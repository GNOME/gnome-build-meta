kind: meson

sources:
- kind: tar
  url: https://gitlab.freedesktop.org/xorg/lib/libxcvt/-/archive/libxcvt-0.1.1/libxcvt-libxcvt-0.1.1.tar.bz2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
