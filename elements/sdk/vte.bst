kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/vte/0.54/vte-0.54.3.tar.xz
  ref: 693682145025c2af72d1070afaecba111351e747b4ba8f4a9d246b139f44ebfd
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
