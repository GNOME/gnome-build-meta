kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gedit/3.30/gedit-3.30.2.tar.xz
  ref: eaf3b17856a0fb7c6f363c2ebbf4f26c5be6eb6552a49e58c44aee0fcb789163
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
