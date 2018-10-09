kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-video-effects/0.4/gnome-video-effects-0.4.3.tar.xz
depends:
- sdk/gnome-common.bst
- sdk/gstreamer.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
