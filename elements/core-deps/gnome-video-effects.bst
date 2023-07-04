kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-video-effects/0.6/gnome-video-effects-0.6.0.tar.xz
  ref: d7aeaeb46b3f5a832fb2e0d90b42bf8c6160202ca52ac9add17afce192e3c8a8
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
