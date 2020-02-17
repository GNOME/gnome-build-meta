kind: meson
sources:
- kind: tar
  url: gnome_downloads:gjs/1.63/gjs-1.63.90.tar.xz
  ref: 74f93da9024a8a915db4b97aa216f931ceefd01bc847e4400d585340750ecfeb
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
  meson-local: -Dprofiler=disabled
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgjs.so'
