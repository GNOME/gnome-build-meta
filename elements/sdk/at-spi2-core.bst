kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.37/at-spi2-core-2.37.90.tar.xz
  ref: caa72299d5e7f2aa4b8198e37405751bda5a22a5ba977b9c7bf34199593bb6bb
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
