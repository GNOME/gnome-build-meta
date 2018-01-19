kind: meson
sources:
- kind: git
  url: git_gnome_org:dconf-editor
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/meson.bst
- core-deps/vala.bst
- core/dconf.bst
- base.bst
