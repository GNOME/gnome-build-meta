kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/libdazzle/3.30/libdazzle-3.30.2.tar.xz
  ref: 78770eae9fa15ac5acb9c733d29459330b2540affbf72933119e36dbd90b36d5
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
