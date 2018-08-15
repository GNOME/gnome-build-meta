depends:
- core-deps/appstream-glib.bst
- core-deps/dconf.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/librsvg.bst
- core-deps/vte.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/gnome-shell.bst
- core/gsettings-desktop-schemas.bst
- core/nautilus.bst
- filename: desktop/desktop-file-utils.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: a283dca4980eecf9184a55aac03fef99f85748461ff190423a2253f3b4557279
  url: https://download.gnome.org/sources/gnome-terminal/3.28/gnome-terminal-3.28.2.tar.xz
variables:
  conf-local: --disable-migration
