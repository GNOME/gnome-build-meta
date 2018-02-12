kind: autotools
sources:
- kind: git
  url: git_gnome_org:pyatspi2
  track: master
depends:
- core-deps/at-spi2-core.bst
- core-deps/pygobject.bst
- base.bst
variables:
  conf-local: --with-python=python3
