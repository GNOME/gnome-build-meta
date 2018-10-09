kind: meson
sources:
- kind: tar
  url: https://people.freedesktop.org/~hughsient/appstream-glib/releases/appstream-glib-0.7.13.tar.xz
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
