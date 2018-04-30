kind: autotools
sources:
- kind: git
  url: git_gnome_org:libsecret
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- base.bst
