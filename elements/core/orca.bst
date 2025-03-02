kind: meson
sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: 48.beta-51-g13c20cee6f1d2dcda6f39c35cd23f5c6328ebd8e
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
