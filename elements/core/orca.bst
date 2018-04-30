kind: autotools
sources:
- kind: git
  url: git_gnome_org:orca
  track: master
depends:
- core-deps/pyatspi2.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-atk.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- base.bst
