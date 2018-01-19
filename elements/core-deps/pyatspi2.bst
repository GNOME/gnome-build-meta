kind: autotools
sources:
- kind: git
  url: git_gnome_org:pyatspi2
  track: master
depends:
- core-deps/pygobject.bst
- core/at-spi2-core.bst
- base.bst
variables:
  conf-local: --with-python=python3
