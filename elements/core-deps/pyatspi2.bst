kind: autotools
sources:
- kind: git
  url: git_gnome_org:pyatspi2
  track: master
depends:
- core-deps/at-spi2-core.bst
- core-deps/pygobject.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-python=python3
