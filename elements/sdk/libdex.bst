kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/1.1/libdex-1.1.0.tar.xz
  ref: a9e04c8abee01c9a7cf1148c5b7aa66ba377efe6af6d83801d4fd1aa55219aaa
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/liburing.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  meson-local: >-
    -Ddocs=true
    -Dsysprof=true
