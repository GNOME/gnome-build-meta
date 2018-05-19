kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-video-effects
  track: master
depends:
- sdk/gnome-common.bst
- sdk/gstreamer.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
