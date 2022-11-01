kind: meson
sources:
- kind: git_tag
  url: gnome:libgdata.git
  track: libgdata-0-18
  ref: 0.18.1-23-gab831c39925c11a346b2c04c74209df7e954f6ac
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/liboauth.bst
- sdk/gcr-3.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dalways_build_tests=false
