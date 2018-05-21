kind: meson
sources:
- kind: git
  url: git_gnome_org:baobab
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/librsvg.bst
- core-deps/vala.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
