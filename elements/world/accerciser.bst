kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/accerciser
  track: master
depends:
- core-deps/pyatspi2.bst
- sdk/at-spi2-atk.bst
- sdk/gnome-common.bst
- sdk/gtk+-3.bst
- sdk/pycairo.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
