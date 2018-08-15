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
kind: meson
sources:
- kind: tar
  ref: 00ad7b6e76f142e9aa7b7bd521885ca3ae70c6bee93821bb2e6bc08596c0e442
  url: https://download.gnome.org/sources/epiphany/3.29/epiphany-3.29.91.tar.xz
