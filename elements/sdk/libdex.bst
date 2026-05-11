kind: meson

sources:
- kind: git_repo
  url: gnome:libdex.git
  track: main
  ref: 1.1.0-5-g8aec24375ea69b4aa438cfefdb582b40e5e13630

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
