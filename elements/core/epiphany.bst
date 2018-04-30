kind: meson
sources:
- kind: git
  url: git_gnome_org:epiphany
  track: master
depends:
- core-deps/WebKitGTK+.bst
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
- base.bst
