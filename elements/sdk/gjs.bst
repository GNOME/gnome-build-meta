kind: meson

sources:
- kind: tar
  url: gnome_downloads:gjs/1.90/gjs-1.90.1.tar.xz
  ref: 05ceaa80f48e3782e5c44938572fad863e02b8c4a6c55657a99aa81db8ce9efa
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
