kind: meson

sources:
- kind: tar
  url: gnome_downloads:msgraph/0.2/msgraph-0.2.2.tar.xz
  ref: 12cc954f750bb137ace8500fe9355d26e6e00ef6ccaab2950e9d360e92758335
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gnome-online-accounts.bst
- core-deps/librest.bst
- freedesktop-sdk.bst:bootstrap-import.bst

# Tests needs uhttpmock 0.9 + one commit
# https://gitlab.gnome.org/GNOME/msgraph/-/issues/3
variables:
  meson-local: >-
    -Dtests=false
