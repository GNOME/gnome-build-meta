kind: meson

sources:
- kind: git_repo
  url: gnome:msgraph.git
  # Track 0.1 branch until gvfs is updated
  # https://gitlab.gnome.org/GNOME/gvfs/-/merge_requests/240#note_2239759
  track: msgraph-0.1
  ref: 0.2.3-3-g43560cca4691e71dae2db593e1aed12f75a7ccc3

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
