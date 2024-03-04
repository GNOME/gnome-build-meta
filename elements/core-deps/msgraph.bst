kind: meson

sources:
- kind: git_repo
  url: gnome:msgraph.git
  track: main
  ref: 0.2.1-0-g9f3e53a7f38fa178e4c78caf271f9b93b3cf4c9b

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
