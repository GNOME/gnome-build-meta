kind: meson
sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: ORCA_46_BETA-120-g4401c6cee1808cecc19f9efc46181a40c54f658d
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
