kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gsound
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libcanberra.bst
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-gtk-doc
