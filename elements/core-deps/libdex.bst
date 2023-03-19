kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.2/libdex-0.2.0.tar.xz
  ref: a0f7566260971a1e4aeb53a07d95c806091257b8789d6fad9931dba872c5070d
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/liburing.bst
- sdk/glib.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Ddocs=true
    -Dsysprof=true
