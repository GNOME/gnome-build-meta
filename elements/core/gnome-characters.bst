kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-characters
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/gjs.bst
- core-deps/gtk+-3.bst
- core/adwaita-icon-theme.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
