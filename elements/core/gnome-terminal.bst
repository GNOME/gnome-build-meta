kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-terminal/3.30/gnome-terminal-3.30.2.tar.xz
  ref: e90720d4581da29d7c47d35d4fe81b46a9b4fbdb85e3b6b67dec298552b13228
depends:
- core/gnome-shell.bst
- core/nautilus.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/dconf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/vte.bst
- sdk/yelp-tools.bst
- filename: desktop/desktop-file-utils.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-migration
