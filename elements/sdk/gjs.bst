kind: meson

sources:
- kind: tar
  url: gnome_downloads:gjs/1.74/gjs-1.74.3.tar.xz
  ref: 2261588bfd8c38ff55460ff8b69cd1c745ff1ab9b3b862b0190f461614561497
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
