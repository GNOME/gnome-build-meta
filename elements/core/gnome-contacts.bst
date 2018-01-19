kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-contacts
  track: master
depends:
- core-deps/folks.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gstreamer.bst
- core-deps/gtk+-3.bst
- core-deps/libchamplain.bst
- core-deps/libgee.bst
- core-deps/meson.bst
- core-deps/telepathy-glib.bst
- core-deps/vala.bst
- core/cheese.bst
- core/gnome-desktop.bst
- base.bst
