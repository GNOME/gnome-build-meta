kind: autotools
sources:
- kind: git_tag
  url: git_freedesktop_org:telepathy/telepathy-logger.git
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- world/telepathy-glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
