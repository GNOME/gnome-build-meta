kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-games.git
  track: master
depends:
- core-deps/glib.bst
- core-deps/grilo.bst
- core-deps/grilo-plugins.bst
- core-deps/gtk+-3.bst
- core-deps/librsvg.bst
- core-deps/libsoup.bst
- core-deps/tracker.bst
- core-deps/tracker-miners.bst
- core-deps/vala.bst
- core/adwaita-icon-theme.bst
- core/gnome-themes-extra.bst
- core/gvfs.bst
- world/libmanette.bst
- world/retro-gtk.bst
- filename: desktop/hicolor-icon-theme.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
