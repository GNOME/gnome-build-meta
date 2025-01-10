kind: meson

sources:
- kind: git_repo
  url: gnome:libdex.git
  track: main
  ref: 0.8.1-20-g24728a5c32b36890a1daa5024cc034553a9e131a

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
