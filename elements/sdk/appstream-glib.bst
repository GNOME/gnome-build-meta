kind: meson
sources:
- kind: git
  url: github_com:hughsie/appstream-glib.git
  track: master
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
variables:
  meson-local: -Dstemmer=false -Drpm=false -Dfonts=false -Ddep11=false
