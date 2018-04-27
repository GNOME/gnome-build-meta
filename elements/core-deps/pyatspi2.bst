kind: autotools
sources:
- kind: git
  url: git_gnome_org:pyatspi2
  track: master
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- base.bst
variables:
  conf-local: --with-python=python3
