kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-terminal
  track: master
depends:
- core/gnome-shell.bst
- core/nautilus.bst
- sdk/adwaita-icon-theme.bst
- sdk/dconf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/vte.bst
- sdk/yelp-tools.bst
- base.bst
variables:
  conf-local: --disable-migration
