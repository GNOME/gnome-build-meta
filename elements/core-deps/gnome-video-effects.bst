kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-video-effects/0.5/gnome-video-effects-0.5.0.tar.xz
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
