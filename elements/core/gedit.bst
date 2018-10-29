kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gedit/3.30/gedit-3.30.2.tar.xz
  ref: 5c16d82b5fb93b10dc81a1bc8daa509b498779ae1db5381600a4765c99826d3f
depends:
- core-deps/gspell.bst
- core-deps/gtksourceview-3.bst
- core-deps/libpeas.bst
- sdk/adwaita-icon-theme.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gsettings-desktop-schemas.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
