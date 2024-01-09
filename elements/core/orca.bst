kind: autotools
sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: ORCA_44_0-616-g40c886fb0dd105d92a1549f6e72852193c73680e
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
