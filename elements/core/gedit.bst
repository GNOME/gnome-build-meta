depends:
- core-deps/gspell.bst
- core-deps/gtksourceview-3.bst
- core-deps/libpeas.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/gsettings-desktop-schemas.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 70ef83cfac3f13eb78679ce1a00b1ec2cec9cb9cd41e4927d4b2783ee45cde8e
  url: https://download.gnome.org/sources/gedit/3.29/gedit-3.29.90.tar.xz
