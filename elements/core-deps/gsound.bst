kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gsound
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libcanberra.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-gtk-doc
