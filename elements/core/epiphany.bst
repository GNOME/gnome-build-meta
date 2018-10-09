kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/epiphany/3.30/epiphany-3.30.1.tar.xz
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
