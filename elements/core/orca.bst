kind: meson
sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: 48.rc-154-gefebc7bf84a4c0469ac990d54f14a9894c277cba
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
