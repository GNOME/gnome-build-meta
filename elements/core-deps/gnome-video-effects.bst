kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-video-effects
  track: master
depends:
- core-deps/gnome-common.bst
- core-deps/gstreamer.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
