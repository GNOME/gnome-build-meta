kind: meson
sources:
- kind: git
  url: github_com:hughsie/appstream-glib.git
  track: master
depends:
- core-deps/gcab.bst
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/json-glib.bst
- core-deps/libsoup.bst
- core-deps/meson.bst
- base.bst
variables:
  meson-local: -Dstemmer=false -Drpm=false
