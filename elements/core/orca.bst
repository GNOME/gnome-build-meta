kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/orca/3.29/orca-3.29.92.tar.xz
  ref: e1aff00bafc224bc8f2b23d1f4616cf64121d03755311385583e5eb2e9c8908b
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
