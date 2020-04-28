kind: meson
sources:
- kind: tar
  url: gnome_downloads:gjs/1.65/gjs-1.65.2.tar.xz
  ref: a66edad8a5f10027f9b182d88af84b81f13e5ad5840319cfa747d66e77e0214f
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/mozjs68.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/dbus.bst
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
