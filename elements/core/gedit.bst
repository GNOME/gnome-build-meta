kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gedit/3.30/gedit-3.30.0.tar.xz
  ref: bd5c26499f988a1d608591beadb4eb408697dc8c2a61cde9909aeec71e2aef79
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
