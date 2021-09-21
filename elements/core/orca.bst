kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/41/orca-41.0.tar.xz
  ref: 7697e51445e19fd774e68b160adaf6687b808172de0417602e169766b6b6d4bd
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-atk.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
