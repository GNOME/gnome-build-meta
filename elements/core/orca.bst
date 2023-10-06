kind: autotools
sources:
- kind: git_repo
  url: gnome:orca.git
  track: master
  ref: ORCA_44_0-488-gabce3ea437eae4a2511e3f2f8831031ca6e552b0
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
