kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-contacts.git
  track: master
depends:
- core-deps/folks.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libhandy.bst
- core/cheese.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libgee.bst
- sdk/vala.bst
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
