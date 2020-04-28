kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/accerciser.git
  track: master
depends:
- core-deps/pyatspi.bst
- sdk/appstream-glib.bst
- sdk/at-spi2-atk.bst
- sdk/gtk+-3.bst
- sdk/pycairo.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
