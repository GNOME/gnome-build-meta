kind: meson

sources:
- kind: tar
  url: gnome_downloads:gjs/1.85/gjs-1.85.2.tar.xz
  ref: 0b5c885ea4b705d1930f6689c7984fc56ad2404a2f13b66908d1c08a0a5d5b02
build-depends:
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gobject-introspection.bst
- sdk/gtk.bst
- sdk/mozjs.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  meson-local: >-
    -Dprofiler=enabled

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgjs.so'
