kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-games.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/libhandy.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gvfs.bst
- sdk/librsvg.bst
- sdk/libsoup.bst
- sdk/vala.bst
- world/gnome-themes-extra.bst
- world/libmanette.bst
- world/retro-gtk.bst
- freedesktop-sdk.bst:components/hicolor-icon-theme.bst
- freedesktop-sdk.bst:bootstrap-import.bst
