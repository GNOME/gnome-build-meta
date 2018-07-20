kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/epiphany/3.29/epiphany-3.29.4.tar.xz
  ref: 6ecba047d86f7c3f7c428679dca4c0617419b5f6d9e6ceca653bd4240a0af7ca
depends:
- core-deps/WebKitGTK+.bst
- core-deps/appstream-glib.bst
- core-deps/gcr.bst
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/json-glib.bst
- core-deps/libdazzle.bst
- core-deps/libnotify.bst
- core-deps/libsecret.bst
- core-deps/libsoup.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/glib-networking.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
