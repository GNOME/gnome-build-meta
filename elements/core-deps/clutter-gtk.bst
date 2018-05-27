kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/clutter-gtk
  track: master
depends:
- core-deps/clutter.bst
- core-deps/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
