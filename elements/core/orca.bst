kind: autotools
sources:
- kind: git_repo
  url: gnome:orca.git
  track: master
  ref: ORCA_44_0-576-ga0a4a19f279683bda9e077ef2c7ac25de22c9876
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
