kind: meson
sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: 48.rc-76-gaa0ba41ae4b59091c320c50e9ff84fd2fda8aad0
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
