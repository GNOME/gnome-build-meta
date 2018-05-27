kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:libgxps
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
