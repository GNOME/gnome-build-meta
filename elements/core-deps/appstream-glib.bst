kind: meson
sources:
- url: http://people.freedesktop.org/~hughsient/appstream-glib/releases/appstream-glib-0.7.6.tar.xz
  kind: tar
  ref: b216583a8b9c47f6db52031fbbdfd9005a274c6a0a97c8db8c1d80c890b7d545
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
