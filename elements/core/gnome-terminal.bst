kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:gnome-terminal
  track: master
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
variables:
  conf-local: --disable-migration
