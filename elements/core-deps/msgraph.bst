kind: meson

sources:
- kind: tar
  url: gnome_downloads:msgraph/0.3/msgraph-0.3.4.tar.xz
  ref: 0731ece6b02b32eeffbbbd98efdc77bc03ddd20651eeae3a4343f0879b04d6c7
build-depends:
- sdk/gi-docgen.bst
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
