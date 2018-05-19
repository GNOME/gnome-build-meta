kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-terminal
  track: master
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
