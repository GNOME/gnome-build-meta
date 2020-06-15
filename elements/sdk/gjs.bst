kind: meson
sources:
- kind: tar
  url: gnome_downloads:gjs/1.64/gjs-1.64.3.tar.xz
  ref: 9d96e154601c39f901ea2205b85f3bf4106cffe80dd5d97ab9f5ae56331185e6
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
