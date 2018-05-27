kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-common
  track: master
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
