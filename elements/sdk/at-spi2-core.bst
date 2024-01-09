kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.51/at-spi2-core-2.51.0.tar.xz
  ref: 8dd07c6160e3115f4f77e2205963449def6822a3dc85d495c5db389f56663037
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/python3-sphinx.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/xorg-lib-xtst.bst
- freedesktop-sdk.bst:bootstrap-import.bst
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
