kind: meson
sources:
- kind: tar
  url: gnome_downloads:gjs/1.63/gjs-1.63.91.tar.xz
  ref: d89cc82c3273122aa6a9c84d4b3405d41b3640edb33a7920e3e14afe17766695
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
