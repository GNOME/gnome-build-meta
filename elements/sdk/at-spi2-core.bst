kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.36/at-spi2-core-2.36.0.tar.xz
  ref: 88da57de0a7e3c60bc341a974a80fdba091612db3547c410d6deab039ca5c05a
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
