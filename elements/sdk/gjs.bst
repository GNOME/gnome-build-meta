kind: meson

sources:
- kind: tar
  url: gnome_downloads:gjs/1.77/gjs-1.77.90.tar.xz
  ref: 70db967ae98bde69b38475ef60bb9a3302990fa615baf46820194b302a29dbf8
build-depends:
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/mozjs.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dprofiler=enabled

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgjs.so'
