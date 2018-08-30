kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-terminal/3.29/gnome-terminal-3.29.92.tar.xz
  ref: e0d515f83adf4b104f346422457429bc9c287bb2455f91df16a7d85cb8d2c7a5
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
