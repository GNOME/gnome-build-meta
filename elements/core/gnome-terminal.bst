kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-terminal
  track: master
depends:
- sdk/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/vte.bst
- sdk/yelp-tools.bst
- sdk/adwaita-icon-theme.bst
- core/gnome-shell.bst
- sdk/gsettings-desktop-schemas.bst
- core/nautilus.bst
- base.bst
variables:
  conf-local: --disable-migration
