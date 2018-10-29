kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/vte/0.54/vte-0.54.2.tar.xz
  ref: 527d48b5131af1a0835006b7538fd3b243847bebc76b66bafa84457a98153834
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
