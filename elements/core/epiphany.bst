kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/epiphany/3.30/epiphany-3.30.0.tar.xz
  ref: b0401fa711bc7350882061cfdc1b6946cce54ebe46d7592d78fbcc0d1f11342a
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
