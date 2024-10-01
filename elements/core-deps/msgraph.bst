kind: meson

sources:
- kind: git_repo
  url: gnome:msgraph.git
  track: main
  ref: 0.2.3-5-g656d5a096d3b425a7ba372727d03ded6b3e065bf

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
