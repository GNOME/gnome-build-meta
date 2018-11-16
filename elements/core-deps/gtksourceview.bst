kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gtksourceview/4.0/gtksourceview-4.0.3.tar.xz
depends:
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/vala.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
