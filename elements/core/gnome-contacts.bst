kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:gnome-contacts
  track: master
depends:
- core-deps/folks.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gstreamer.bst
- core-deps/gtk+-3.bst
- core-deps/libchamplain.bst
- core-deps/libgee.bst
- core-deps/vala.bst
- core/adwaita-icon-theme.bst
- core/cheese.bst
- core/gnome-desktop.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dtelepathy=false
