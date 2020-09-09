kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.37/at-spi2-core-2.37.92.tar.xz
  ref: 66915921db2b5f330bc55caecd66c04e698ceaf7d13cc677828cf7c5293a4166
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:bootstrap-import.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libatspi.so'
