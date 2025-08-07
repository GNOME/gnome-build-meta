kind: meson

sources:
- kind: tar
  url: gnome_downloads:msgraph/0.3/msgraph-0.3.3.tar.xz
  ref: 37d7e12f2a990490aea21184f0b27e0b915ebb4e5096f4d6632c62051c054012
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gnome-online-accounts.bst
- core-deps/librest.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

# Tests needs uhttpmock 0.9 + one commit
# https://gitlab.gnome.org/GNOME/msgraph/-/issues/3
variables:
  meson-local: >-
    -Dtests=false
