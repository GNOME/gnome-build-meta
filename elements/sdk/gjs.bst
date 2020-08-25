kind: meson
sources:
- kind: tar
  url: gnome_downloads:gjs/1.65/gjs-1.65.91.tar.xz
  ref: 63f35f6a57d013d42d4e44ba5efa8a3682d8fee6ead65ceda82ca57fd62a6503
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
