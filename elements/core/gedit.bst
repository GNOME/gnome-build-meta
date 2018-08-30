kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gedit/3.29/gedit-3.29.90.tar.xz
  ref: 70ef83cfac3f13eb78679ce1a00b1ec2cec9cb9cd41e4927d4b2783ee45cde8e
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
