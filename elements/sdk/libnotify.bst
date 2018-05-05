kind: autotools
sources:
- kind: git
  url: git_gnome_org:libnotify
  track: master
depends:
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- base.bst
