kind: meson

sources:
- kind: git_repo
  url: gnome:libdex.git
  track: main
  ref: 0.7.1-5-g4dd3647fd06f9ec1c8e16b78a2b71715162cf782

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
