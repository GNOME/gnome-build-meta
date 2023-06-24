kind: meson
sources:
- kind: git_tag
  url: gnome:gnome-video-effects.git
  track: master
  ref: 0.6.0-6-gbd6bfdd8f5b8a2415276a45d33bc2c509578c4bc
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
