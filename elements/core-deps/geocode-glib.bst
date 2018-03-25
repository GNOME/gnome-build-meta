kind: meson
sources:
- kind: git
  url: git_gnome_org:geocode-glib
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- core-deps/json-glib.bst
- core-deps/libsoup.bst
- base.bst
