kind: meson

sources:
- kind: git_repo
  url: gnome:msgraph.git
  track: main
  ref: 0.3.3-1-g381118a2396da887e79d5df782ee00e9874a0984

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
