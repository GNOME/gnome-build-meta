kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.59/at-spi2-core-2.59.90.tar.xz
  ref: 08f9cde9cefa6b7b778646bb5378014d0f12fff2352018329102ed5fc4a5b1aa
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/python3-sphinx.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
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
