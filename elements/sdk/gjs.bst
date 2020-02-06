kind: meson
sources:
- kind: tar
  url: gnome_downloads:gjs/1.63/gjs-1.63.90.tar.xz
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
