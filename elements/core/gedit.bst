kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gedit/3.28/gedit-3.28.1.tar.xz
  ref: f174be0958ce63771fef9a81d06da6769358dab8705364a6abb5c7d10ec8211d
depends:
- core-deps/gspell.bst
- core-deps/gtksourceview-3.bst
- core-deps/libpeas.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/gsettings-desktop-schemas.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
