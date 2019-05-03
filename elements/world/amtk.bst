kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/amtk.git
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
