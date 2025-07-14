kind: meson
sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: 49.alpha-24-gfb5bb092487b1d30a438add805a0ebf08414d66c
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/dasbus.bst
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
