kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-video-effects/0.5/gnome-video-effects-0.5.0.tar.xz
depends:
- filename: sdk/gnome-common.bst
  type: build
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
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
