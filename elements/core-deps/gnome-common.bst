kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:gnome-common
  track: master
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
