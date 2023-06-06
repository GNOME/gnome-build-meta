kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-video-effects.git
  track: master
  ref: 0.6.0-13-gf171b21c3ece142009bcf94ac9b12bb29ece9adc
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
