kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/vte/0.54/vte-0.54.1.tar.xz
  ref: a724fa0543c689e30a3d0ff07e4195a86dc7c4fe57b469be97c7c87f27604e53
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
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
variables:
  conf-local: --enable-introspection=yes
