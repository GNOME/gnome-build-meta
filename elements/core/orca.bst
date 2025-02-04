kind: meson
sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: 48.alpha-30-g4f98bbc0904788ac9e4d16fb10a5ab262f44a858
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
