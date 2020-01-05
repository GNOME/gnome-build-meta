kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-video-effects/0.5/gnome-video-effects-0.5.0.tar.xz
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
