kind: meson
sources:
- kind: tar
  url: gnome_downloads:gjs/1.65/gjs-1.65.4.tar.xz
  ref: 220c68f3b42d0a9e86ccb764a13f0a0f60edfa6e33c4e907da13b87c8541d81c
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
