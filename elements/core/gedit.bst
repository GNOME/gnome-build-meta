kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gedit/3.31/gedit-3.31.2.tar.xz
depends:
- core-deps/gspell.bst
- core-deps/gtksourceview.bst
- core-deps/libpeas.bst
- sdk/adwaita-icon-theme.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gsettings-desktop-schemas.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/yelp-tools.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
