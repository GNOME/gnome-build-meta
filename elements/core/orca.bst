kind: autotools
sources:
- kind: git
  url: git_gnome_org:orca
  track: master
depends:
- sdk/at-spi2-atk.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- core-deps/pyatspi2.bst
- sdk/pygobject.bst
- core-deps/speech-dispatcher.bst
- sdk/yelp-tools.bst
- base.bst
