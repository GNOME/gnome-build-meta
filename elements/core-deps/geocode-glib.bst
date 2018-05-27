kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:geocode-glib
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- core-deps/json-glib.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
