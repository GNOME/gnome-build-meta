kind: autotools
sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: ORCA_44_0-619-g889e83da02c318d7032d94379f2d28a4954134c1
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
