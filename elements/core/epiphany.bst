kind: meson
sources:
- kind: git
  url: git_gnome_org:epiphany
  track: master
depends:
- sdk/WebKitGTK+.bst
- sdk/adwaita-icon-theme.bst
- sdk/gcr.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/glib-networking.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/yelp-tools.bst
- base.bst
