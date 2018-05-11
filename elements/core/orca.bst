kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/orca/3.28/orca-3.28.1.tar.xz
  ref: 4f14144a722d26c6e5492298600df0161ce841bf8eae81fd2b27387e2c638512
depends:
- core-deps/at-spi2-atk.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/pyatspi2.bst
- core-deps/pygobject.bst
- core-deps/speech-dispatcher.bst
- core-deps/yelp-tools.bst
- base.bst
