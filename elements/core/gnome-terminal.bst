kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-terminal/3.30/gnome-terminal-3.30.0.tar.xz
  ref: 19d516bc0ba0b2aa8670673105c051b492ff8d401a435e86af0638bc600f6f54
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
