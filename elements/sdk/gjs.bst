kind: meson
sources:
- kind: tar
  url: gnome_downloads:gjs/1.64/gjs-1.64.1.tar.xz
  ref: 55af83893e99ba2962eca46f47340a4cf8cba5b1966ab00a0f8b9c3034e9987c
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
