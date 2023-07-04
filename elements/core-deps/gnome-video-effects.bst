kind: meson
sources:
- kind: git_tag
  url: gnome:gnome-video-effects.git
  track: master
  ref: 0.6.0-12-gac6bece4acafe891ddaed2709c384bd278014aa2
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
