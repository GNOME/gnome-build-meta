kind: autotools
sources:
- kind: git
  url: git_gnome_org:accerciser
  track: master
depends:
- core-deps/gtk+-3.bst
- core-deps/py3cairo.bst
- core-deps/pyatspi2.bst
- core-deps/pygobject.bst
- core-deps/yelp-tools.bst
- core/at-spi2-atk.bst
- base.bst
