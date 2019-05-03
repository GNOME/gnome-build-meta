kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/pyatspi2.git
  track: master
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- filename: components/python3.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --with-python=python3
