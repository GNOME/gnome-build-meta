kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/retro-gtk.git
  track: master
depends:
- sdk/clutter-gtk.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: desktop/libpulse.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
