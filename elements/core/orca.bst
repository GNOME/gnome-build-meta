kind: autotools
sources:
- kind: git_tag
  url: gnome:orca.git
  track: master
  ref: ORCA_43_0-8-g716b3644207bacfbb3dd268000818ef74ecca359
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
