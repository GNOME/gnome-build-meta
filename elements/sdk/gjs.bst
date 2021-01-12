kind: meson
sources:
- kind: tar
  url: gnome_downloads:gjs/1.66/gjs-1.66.2.tar.xz
  ref: bd7f5f8b171277cc0bb9ee1754b0240b62f06a76b8b18c968cf471b34ab34e59
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
