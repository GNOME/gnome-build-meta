kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-screenshot
  track: master
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/meson.bst
- base.bst
