kind: meson
sources:
- kind: git_tag
  url: gnome:libgdata.git
  track: libgdata-0-18
  ref: 0.18.1-19-g2ebe0f47887f43c382facc307ca51026ff08490d
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/liboauth.bst
- core-deps/uhttpmock.bst
- sdk/gcr-3.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst
