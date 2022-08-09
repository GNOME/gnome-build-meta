kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/41/orca-41.3.tar.xz
  ref: 9c82db9f4114c9f80589c47933619a3e1b048351a68d5c7f72afb17f1ddfa73b
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
