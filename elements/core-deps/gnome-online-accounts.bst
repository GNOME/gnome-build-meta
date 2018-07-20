kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-online-accounts/3.29/gnome-online-accounts-3.29.4.tar.xz
  ref: 4530a664fd0e8b2541462a8ecda6ac38a597d3ba88c4e694258d2ee6efc447da
depends:
- core-deps/WebKitGTK+.bst
- core-deps/gtk+-3.bst
- core-deps/json-glib.bst
- core-deps/librest.bst
- core-deps/libsecret.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-telepathy
