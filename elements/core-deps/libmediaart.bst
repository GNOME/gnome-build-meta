kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libmediaart.git
  track: master
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- filename: sdk/gobject-introspection.bst
  type: build
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-qt
