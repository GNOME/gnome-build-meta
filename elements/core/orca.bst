kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/orca/3.29/orca-3.29.3.tar.xz
  ref: e07287f8772942120c32a9b6b487e8378613e75222e29650c710fe072f761a56
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
