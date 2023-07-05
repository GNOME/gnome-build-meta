kind: meson

sources:
- kind: tar
  url: gnome_downloads:gjs/1.76/gjs-1.76.2.tar.xz
  ref: f7d8c9d653ea6fd78afe4a50720e046aa2bfc078fda635dd13067dd199c625d4
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
