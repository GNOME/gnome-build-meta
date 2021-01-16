kind: meson
sources:
- kind: tar
  url: gnome_downloads:gjs/1.67/gjs-1.67.1.tar.xz
  ref: 28af0b28efd9d11009b007401e9f96dbff0d988799c15edc812b6d57dd3edbd9
build-depends:
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
    -Dprofiler=disabled
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgjs.so'
