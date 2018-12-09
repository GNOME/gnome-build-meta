kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/tali
  track: master
depends:
- desktop/itstools.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
