kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/orca/3.30/orca-3.30.1.tar.xz
  ref: 49e6d90057d5916daeea8b9edd21f6ccaaae1609799d0188622e4217ffb1582b
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
