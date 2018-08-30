kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/orca/3.29/orca-3.29.4.tar.xz
  ref: 1d2fd5aa00cd821d7af9e2ea6e07112c346c3c726d79c2a6b4222c609b6afeec
depends:
- core-deps/pyatspi2.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-atk.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
