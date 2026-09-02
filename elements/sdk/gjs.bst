kind: meson

sources:
- kind: tar
  url: gnome_downloads:gjs/1.89/gjs-1.89.90.tar.xz
  ref: 65aec93c261c411da3215aec342c24bfb7e775923165b3832d995491d8c054e6
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
