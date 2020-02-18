kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-video-effects/0.5/gnome-video-effects-0.5.0.tar.xz
  ref: 4dc68e9b38fdfc1e8e0414e2d7ee83ace78efdee76f30506cc9dcd07394ad0c8
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
