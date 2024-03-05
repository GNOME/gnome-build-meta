kind: meson

sources:
- kind: tar
  url: gnome_downloads:msgraph/0.2/msgraph-0.2.1.tar.xz
  ref: e0e59eaa8ae3e0a48ec0a6c2fed0470856a709248e9212b6a1d037de5792ecbb
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
