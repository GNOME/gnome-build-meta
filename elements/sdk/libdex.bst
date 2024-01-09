kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.4/libdex-0.4.2.tar.xz
  ref: e69e29e1f07455ce7f67053e22a7d27b8ef26d6b1c9ecb393fc2a9d076cf1f85
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
