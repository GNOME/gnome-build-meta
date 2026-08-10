kind: meson

sources:
- kind: tar
  url: gnome_downloads:gjs/1.89/gjs-1.89.2.tar.xz
  ref: c7d7a1764a8d0e362ef6a940127c409a58f9bfe78bfeb264931a30c6d6d37ba4
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/sysprof-minimal.bst

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
    -Db_pch=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgjs.so'
