kind: meson

sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.61/at-spi2-core-2.61.90.tar.xz
  ref: f099d620d2a48997fcd3b8a4a044b60156e59c116857acbc676208556ef540c3
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/python3-sphinx.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/libei.bst
- freedesktop-sdk.bst:components/xorg-lib-xtst.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Ddocs=true

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libatk-1.0.so'
        - '%{libdir}/libatk-bridge-2.0.so'
        - '%{libdir}/libatspi.so'
