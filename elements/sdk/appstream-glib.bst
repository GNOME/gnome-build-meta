kind: meson
sources:
- kind: tar
  url: http://people.freedesktop.org/~hughsient/appstream-glib/releases/appstream-glib-0.7.12.tar.xz
  ref: bacab112fc15f37932570ac8287ba050b0a1d0fdc842913f8b8345f6de128bc9
depends:
- sdk/gcab.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  meson-local: -Dstemmer=false -Drpm=false -Dfonts=false -Ddep11=false
