kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgdata/0.18/libgdata-0.18.0.tar.xz
  ref: f0c20112fa5372b62c01256f268aef5131a161dfc23868f393ecf7b8b3752580
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/liboauth.bst
- core-deps/uhttpmock.bst
- sdk/gcr.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
