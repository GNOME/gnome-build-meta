kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgdata/0.17/libgdata-0.17.12.tar.xz
  ref: a0fd6f8820e8bae019c1f6ffab5af7fcd6d7f147915bb968b56df3ad61b42318
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
