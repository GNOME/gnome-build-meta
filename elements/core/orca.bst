kind: meson
sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: ORCA_47_ALPHA-47-gc9d3a8f67d6fd940cfeb8a2d4d0584807eb1ec78
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
