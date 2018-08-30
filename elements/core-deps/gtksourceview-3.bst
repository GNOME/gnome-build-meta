kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gtksourceview/3.24/gtksourceview-3.24.8.tar.xz
  ref: 1e9bb8ff190db705deb916dd23ff681f0e8803aec407bf0fd64c7e615ac436fe
depends:
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
