kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-calculator
  track: master
depends:
- core-deps/gtksourceview-3.bst
- core-deps/mpc.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- base.bst
