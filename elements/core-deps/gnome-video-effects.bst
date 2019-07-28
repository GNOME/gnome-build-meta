kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-video-effects.git
  track: master
depends:
- filename: core-deps/intltool.bst
  type: build
- filename: core-deps/gnome-common.bst
  type: build
- filename: components/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
