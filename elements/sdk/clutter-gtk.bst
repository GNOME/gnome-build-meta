kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/clutter-gtk
  track: master
depends:
- sdk/clutter.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
