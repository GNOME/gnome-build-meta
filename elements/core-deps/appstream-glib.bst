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
kind: meson
sources:
- kind: tar
  ref: bacab112fc15f37932570ac8287ba050b0a1d0fdc842913f8b8345f6de128bc9
  url: http://people.freedesktop.org/~hughsient/appstream-glib/releases/appstream-glib-0.7.12.tar.xz
variables:
  meson-local: -Dstemmer=false -Drpm=false
