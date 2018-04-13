kind: meson
sources:
- url: http://people.freedesktop.org/~hughsient/appstream-glib/releases/appstream-glib-0.7.7.tar.xz
  kind: tar
  ref: bc979456c4ff6bc7434115ef20718d9f7c79cae5110f15d6fe5fae53a5fe800a
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
