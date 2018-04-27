kind: autotools
sources:
- kind: git
  url: git_gnome_org:accerciser
  track: master
depends:
- sdk/at-spi2-atk.bst
- sdk/gtk+-3.bst
- sdk/pycairo.bst
- core-deps/pyatspi2.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- base.bst
