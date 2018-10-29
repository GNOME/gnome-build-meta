kind: meson
sources:
- kind: tar
  url: https://people.freedesktop.org/~hughsient/appstream-glib/releases/appstream-glib-0.7.14.tar.xz
  ref: 6dccad15f9d9a59dec6d259170a2010ee4a4b87475335a122a5d8b5e654a1a58
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
