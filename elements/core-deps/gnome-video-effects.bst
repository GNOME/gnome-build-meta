kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-video-effects
  track: master
depends:
- sdk/gnome-common.bst
- sdk/gstreamer.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
