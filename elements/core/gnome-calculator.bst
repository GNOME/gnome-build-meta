kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-calculator
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- core-deps/gtksourceview-3.bst
- sdk/libsoup.bst
- core-deps/mpc.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- sdk/adwaita-icon-theme.bst
- base.bst
