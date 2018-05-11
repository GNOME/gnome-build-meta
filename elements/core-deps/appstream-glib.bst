kind: meson
sources:
- kind: tar
  url: http://people.freedesktop.org/~hughsient/appstream-glib/releases/appstream-glib-0.7.8.tar.xz
  ref: eb0e2cfd5a6070615efea4c87b1fc539f4566085aa5f5b41945f679d9d61dd4c
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
