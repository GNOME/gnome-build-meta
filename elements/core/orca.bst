kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/44/orca-44.2.tar.xz
  ref: 6dfba3fa8bbf7d1305daa8e5d426d474b08b8eae26b5d8c8f1e024f58a485686
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
