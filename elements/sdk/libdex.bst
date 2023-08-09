kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.3/libdex-0.3.1.tar.xz
  ref: 4f0fc1b27cbb757d72d61e97b8675960768120d646b5157a4cbbff5efd4224c9
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
