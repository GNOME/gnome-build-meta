kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.38/at-spi2-core-2.38.0.tar.xz
  ref: 84e36c3fe66862133f5fe229772b76aa2526e10de5014a3778f2fa46ce550da5
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
