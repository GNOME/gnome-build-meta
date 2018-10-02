kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/libdazzle/3.30/libdazzle-3.30.1.tar.xz
  ref: dcc96520e76692aa442206c2bb5971fa28f1279290b7e520e4078ba603d41fb3
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
