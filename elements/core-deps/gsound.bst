kind: autotools
sources:
- url: https://download.gnome.org/sources/gsound/1.0/gsound-1.0.2.tar.xz
  kind: tar
  ref: bba8ff30eea815037e53bee727bbd5f0b6a2e74d452a7711b819a7c444e78e53
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --disable-gtk-doc
