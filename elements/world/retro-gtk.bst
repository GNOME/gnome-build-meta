kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/retro-gtk.git
  track: master
depends:
- core-deps/clutter-gtk.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/vala.bst
- filename: desktop/pulseaudio.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
