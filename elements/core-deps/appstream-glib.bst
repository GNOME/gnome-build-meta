kind: meson
sources:
- kind: tar
  url: http://people.freedesktop.org/~hughsient/appstream-glib/releases/appstream-glib-0.7.10.tar.xz
  ref: 43453b8cde676b203830e70981e5aff91c7809233eeca96edaf8b73d2d047a21
depends:
- core-deps/gcab.bst
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/json-glib.bst
- core-deps/libsoup.bst
- core-deps/libyaml.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dstemmer=false -Drpm=false
