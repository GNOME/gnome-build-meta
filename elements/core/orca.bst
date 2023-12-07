kind: autotools
sources:
- kind: git_repo
  url: gnome:orca.git
  track: master
  ref: ORCA_44_0-559-g022b8b77b2cfa6bb002e67595df38e9e2282b66e
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
