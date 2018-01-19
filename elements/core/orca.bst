kind: autotools
sources:
- kind: git
  url: git_gnome_org:orca
  track: master
depends:
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/pyatspi2.bst
- core-deps/pygobject.bst
- core-deps/speech-dispatcher.bst
- core-deps/yelp-tools.bst
- core/at-spi2-atk.bst
- base.bst
