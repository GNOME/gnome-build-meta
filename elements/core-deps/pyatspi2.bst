kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/pyatspi2
  track: master
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-python=python3
