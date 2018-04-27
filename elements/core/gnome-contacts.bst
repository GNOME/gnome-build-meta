kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-contacts
  track: master
depends:
- core-deps/folks.bst
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- core-deps/libchamplain.bst
- core-deps/libgee.bst
- sdk/vala.bst
- sdk/adwaita-icon-theme.bst
- core/cheese.bst
- core/gnome-desktop.bst
- base.bst
variables:
  meson-local: -Dtelepathy=false
