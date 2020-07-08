kind: meson
sources:
- kind: tar
  url: gnome_downloads:gjs/1.64/gjs-1.64.4.tar.xz
  ref: a3cc3a8eda87074b2c363ffe28b29a5202d7f12914b6973f199acf2d1816d44c
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/mozjs68.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dprofiler=disabled
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgjs.so'
