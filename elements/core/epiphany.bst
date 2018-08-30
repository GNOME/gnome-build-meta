kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/epiphany/3.29/epiphany-3.29.92.tar.xz
  ref: a8076836cb4b50841141c6048f39a81ee54b1f500d5aed4bf66da8618e8ee22d
depends:
- core-deps/libdazzle.bst
- sdk/WebKitGTK+.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/gcr.bst
- sdk/gdk-pixbuf.bst
- sdk/glib-networking.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
