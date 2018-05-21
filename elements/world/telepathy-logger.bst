kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:telepathy/telepathy-logger
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- world/telepathy-glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
