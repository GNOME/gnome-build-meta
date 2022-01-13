kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/40/orca-40.1.tar.xz
  ref: 24d13fc76727c2f24c22dce5a69890e3c1b4fb0cb640ae2907d6a74286e425be
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
