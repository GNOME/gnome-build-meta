kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gsound/1.0/gsound-1.0.2.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libcanberra.bst
- filename: sdk/vala.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-gtk-doc
