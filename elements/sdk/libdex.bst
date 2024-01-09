kind: meson

sources:
- kind: git_repo
  url: gnome:libdex.git
  track: main
  ref: 0.4.2-0-ge81b047444d45c4c05c325c49a43c35ae65971bf

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
