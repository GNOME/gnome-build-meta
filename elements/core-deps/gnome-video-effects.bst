kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-video-effects/0.4/gnome-video-effects-0.4.3.tar.xz
depends:
- sdk/gnome-common.bst
- sdk/gstreamer.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
