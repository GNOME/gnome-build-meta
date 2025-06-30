kind: meson
sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: 48.rc-177-gcf67a02216b5f93b2f8919628a6dc90f72eb479a
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
