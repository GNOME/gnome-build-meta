kind: meson
sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: 48.alpha-23-g39782514c2ec18f8d8af6a041d8e8be5b39f786a
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
