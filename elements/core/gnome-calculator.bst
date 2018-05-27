kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-calculator
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/gtksourceview-3.bst
- core-deps/libsoup.bst
- core-deps/mpc.bst
- core-deps/vala.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
