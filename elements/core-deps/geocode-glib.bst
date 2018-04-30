kind: meson
sources:
- kind: git
  url: git_gnome_org:geocode-glib
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- base.bst
