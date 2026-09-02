kind: meson

sources:
- kind: tar
  url: gnome_downloads:msgraph/0.3/msgraph-0.3.5.tar.xz
  ref: e3dadbf638d0207040f6da6d852db516e463423da710af6cbc35d00572f17d9b
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst

depends:
- core-deps/gnome-online-accounts.bst
- core-deps/librest.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

# Tests needs uhttpmock 0.9 + one commit
# https://gitlab.gnome.org/GNOME/msgraph/-/issues/3
variables:
  meson-local: >-
    -Dtests=false
