kind: meson

sources:
- kind: tar
  url: gnome_downloads:msgraph/0.2/msgraph-0.2.3.tar.xz
  ref: ed42e800cb7f0a07477cd9e3e744cdc1a240a6ad7ab96b8a875806267a9fddb0
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
