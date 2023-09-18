kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.4/libdex-0.4.0.tar.xz
  ref: 36b027e8a368325be7214b987763b1a3794ed29fb7a938ba6ecd93a3be21c4fb
build-depends:
- sdk-deps/gi-docgen.bst
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
