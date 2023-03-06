kind: meson

sources:
- kind: git_tag
  url: gnome:libdex.git
  track: main
  ref: 0.1.1-4-g25ecd153840622d352edee8ad2d40c8b2c34c8d7

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
