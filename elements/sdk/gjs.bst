kind: meson

sources:
- kind: tar
  url: gnome_downloads:gjs/1.89/gjs-1.89.1.tar.xz
  ref: d881e7ae45e2918a787f83d2235d9ab9ea492ac89e7e2e7d5e8af62a561f92e4
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
