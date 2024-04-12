kind: meson
sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: ORCA_46_BETA-186-ga9181e643b879fbfe630f6f7310ba9d393d1580e
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
