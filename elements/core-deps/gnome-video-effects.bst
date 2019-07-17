kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-video-effects/0.4/gnome-video-effects-0.4.3.tar.xz
depends:
- filename: sdk/gnome-common.bst
  type: build
- filename: components/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: components/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
