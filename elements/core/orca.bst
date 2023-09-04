kind: autotools
sources:
- kind: git_tag
  url: gnome:orca.git
  track: master
  ref: ORCA_44_0-435-gb964e37074c2b7788c37d4eb04673c705b5eb5ab
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
