kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-games.git
  track: master
depends:
- core/gnome-themes-extra.bst
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/libhandy.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- sdk/adwaita-icon-theme.bst
- sdk/gvfs.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/libsoup.bst
- sdk/vala.bst
- world/libmanette.bst
- world/retro-gtk.bst
- filename: components/hicolor-icon-theme.bst
  junction: freedesktop-sdk.bst
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
