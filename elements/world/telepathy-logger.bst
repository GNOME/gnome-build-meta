kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:telepathy/telepathy-logger
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- world/telepathy-glib.bst
- base.bst
