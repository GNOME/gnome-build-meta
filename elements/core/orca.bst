kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/orca/3.30/orca-3.30.2.tar.xz
  ref: 348f5724f6d5bd1fa7655e8edd182e7bb3836f5302745156cdbd8d69587d8ec1
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
