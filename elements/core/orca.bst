kind: meson
sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: 48.alpha-12-g6503e2462d03b1b65b0906f86710dbc894ea36dd
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
