kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-video-effects.git
  track: master
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
