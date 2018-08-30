kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/vte/0.53/vte-0.53.92.tar.xz
  ref: 75bcf87d5ef2d749f306323c8c19c196cbdf4faba0bbc3f9ab4cff136ae79c77
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
