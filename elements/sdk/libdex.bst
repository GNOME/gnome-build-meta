kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.7/libdex-0.7.1.tar.xz
  ref: c0b13e97b340057dc4e7c53f17e5d7ecd310a1fa2abc9a729670f02261a40a9b
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/liburing.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Ddocs=true
    -Dsysprof=true
