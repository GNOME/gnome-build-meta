kind: meson
sources:
- kind: git_tag
  url: gnome:gnome-video-effects.git
  track: master
  ref: 0.6.0-0-ge4ae5aa3ee136333c6481469ed1d8869307ef5e4
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
