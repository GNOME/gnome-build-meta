kind: meson
sources:
- kind: tar
  url: gnome_downloads:gjs/1.68/gjs-1.68.0.tar.xz
  ref: f00e74a00e81ab61bb92669e0f1c8bb613cc019586097f06aed0572efcaf1aef
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
