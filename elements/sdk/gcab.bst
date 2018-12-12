kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gcab/1.2/gcab-1.2.tar.xz
  ref: 5a2d96fe7e69e42d363c31cf2370d7afa3bb69cec984d4128322ea40e62c100d
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
