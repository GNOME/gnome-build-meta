kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/orca
  track: master
depends:
- core-deps/at-spi2-atk.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/pyatspi2.bst
- core-deps/pygobject.bst
- core-deps/speech-dispatcher.bst
- core-deps/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
