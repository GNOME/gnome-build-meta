kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-tetravex
  track: master
depends:
- desktop/itstools.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
