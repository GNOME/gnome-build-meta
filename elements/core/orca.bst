kind: meson
sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: 48.alpha-15-g9e363f138775c7d494dac80a3f37a9f1c4abc5bd
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
