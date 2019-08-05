kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-video-effects.git
  track: master
depends:
- filename: components/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
