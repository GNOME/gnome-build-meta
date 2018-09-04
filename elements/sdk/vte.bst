kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/vte/0.54/vte-0.54.0.tar.xz
  ref: ae09697006300d61a8de0c7ecebe0b36959179e5329a124f5ba2f45684dfa523
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
