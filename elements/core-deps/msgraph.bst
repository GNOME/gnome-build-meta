kind: meson

sources:
- kind: git_repo
  url: gnome:msgraph.git
  track: main
  ref: 0.3.5-0-gc89b1b6359cebc410e94141325eff97b65b99fe4

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
