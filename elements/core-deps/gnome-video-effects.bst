kind: meson
sources:
- kind: git_tag
  url: gnome:gnome-video-effects.git
  track: master
  ref: 0.5.0-16-g6ca75e10dd1f5f4f4f57d6ba352612c06e0c541b
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
