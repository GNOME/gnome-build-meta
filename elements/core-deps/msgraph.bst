kind: meson

sources:
- kind: git_repo
  url: gnome:msgraph.git
  track: main
  ref: 0.3.3-2-g0621cf45c6af2e912cf0edd459b3b0bf58ca4a5c

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
