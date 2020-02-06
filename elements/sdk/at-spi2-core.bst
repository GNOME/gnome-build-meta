kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.35/at-spi2-core-2.35.1.tar.xz
  ref: ad97c7b6071c21ed59aeb092f3bdc592cf9edbca2710ff428d7829d65675a185
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
