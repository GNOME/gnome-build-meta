kind: autotools
sources:
- url: https://download.gnome.org/sources/orca/3.27/orca-3.27.3.tar.xz
  kind: tar
  ref: 237a5ac01fb62067e72b91ed18e8364d1063e14df6b5e257d619a5bc1d6b4401
depends:
- core-deps/at-spi2-atk.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/pyatspi2.bst
- core-deps/pygobject.bst
- core-deps/speech-dispatcher.bst
- core-deps/yelp-tools.bst
- base.bst
