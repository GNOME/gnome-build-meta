kind: autotools
sources:
- url: https://download.gnome.org/sources/orca/3.28/orca-3.28.0.tar.xz
  kind: tar
  ref: 823949416a7df8ca21d01cde33f4f6fe87aa051552c5f7c9cb012a5074ffc2cb
depends:
- core-deps/at-spi2-atk.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/pyatspi2.bst
- core-deps/pygobject.bst
- core-deps/speech-dispatcher.bst
- core-deps/yelp-tools.bst
- base.bst
