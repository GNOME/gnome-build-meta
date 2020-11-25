kind: meson
sources:
- kind: tar
  url: gnome_downloads:gjs/1.66/gjs-1.66.1.tar.xz
  ref: 8d4240455eff642c8bf6d9805077e33e0a60cb2ea13f77a55f7f30c29668344c
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
