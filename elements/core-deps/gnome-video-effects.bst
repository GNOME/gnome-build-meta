kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-video-effects
  track: master
depends:
- sdk/gnome-common.bst
- sdk/gstreamer.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
