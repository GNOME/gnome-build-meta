kind: meson

sources:
- kind: git_repo
  url: gnome:libdex.git
  track: main
  ref: 0.7.0-4-ga65d33aebbe43024a046b3f3cc4a1c6c533838d0

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
