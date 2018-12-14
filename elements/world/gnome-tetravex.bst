kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-tetravex
  track: master
depends:
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: desktop/itstools.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
