kind: meson

sources:
- kind: git_repo
  url: gnome:libdex.git
  track: main
  ref: 0.6.0-11-g83d95f7884fec82122e9d084a904d37dc4eb7a9f

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
