kind: meson
sources:
- kind: git_tag
  url: gnome:gnome-video-effects.git
  track: master
  ref: 0.6.0-4-g7eaecc9b15cfd55ce1952a30eca5114a850e90bf
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
