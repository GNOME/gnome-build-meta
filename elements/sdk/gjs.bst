kind: meson

sources:
- kind: tar
  url: gnome_downloads:gjs/1.85/gjs-1.85.1.tar.xz
  ref: 807a2a4759fa79c0fcffd7bd7d7c2f25033a2c5dd2cc4bad64a7bf177e56e5fd
build-depends:
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gobject-introspection.bst
- sdk/gtk.bst
- sdk/mozjs.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  meson-local: >-
    -Dprofiler=enabled

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgjs.so'
