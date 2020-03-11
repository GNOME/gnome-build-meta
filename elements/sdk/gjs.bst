kind: meson
sources:
- kind: tar
  url: gnome_downloads:gjs/1.64/gjs-1.64.0.tar.xz
  ref: 66384cbc6b849ea67ced0ad559d589bb15b5a664bbacc75c9f128416ee8ed66f
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
