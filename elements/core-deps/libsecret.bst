kind: autotools
sources:
- kind: git
  url: git_gnome_org:libsecret
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- base.bst
