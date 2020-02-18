kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gsound/1.0/gsound-1.0.2.tar.xz
  ref: bba8ff30eea815037e53bee727bbd5f0b6a2e74d452a7711b819a7c444e78e53
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
