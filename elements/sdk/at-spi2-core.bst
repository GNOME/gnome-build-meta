kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.36/at-spi2-core-2.36.1.tar.xz
  ref: 97417b909dbbf000e7b21062a13b2f1fd52a336f5a53925bb26d27b65ace6c54
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
