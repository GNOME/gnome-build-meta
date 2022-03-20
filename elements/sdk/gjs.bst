kind: meson

sources:
- kind: tar
  url: gnome_downloads:gjs/1.70/gjs-1.70.2.tar.xz
  ref: 5dd661910d38a6ccd5b75c09ea83319ac16ad06236b537e555415a70610015b0
build-depends:
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/mozjs.bst
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
