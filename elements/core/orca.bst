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
kind: autotools
sources:
- kind: tar
  ref: 1d2fd5aa00cd821d7af9e2ea6e07112c346c3c726d79c2a6b4222c609b6afeec
  url: https://download.gnome.org/sources/orca/3.29/orca-3.29.4.tar.xz
