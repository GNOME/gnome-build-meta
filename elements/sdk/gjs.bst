kind: meson

sources:
- kind: tar
  url: gnome_downloads:gjs/1.90/gjs-1.90.0.tar.xz
  ref: 47e9f22b1d4aca841c6c492b449b6de32ff680972183e26fe7b98a45c5c3fee1
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
