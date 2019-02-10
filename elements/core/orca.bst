kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/orca/3.30/orca-3.30.2.tar.xz
  ref: a328945bceb7d49199c9077b6829eff5ff8262db5b12c09dc8af4443d88a5a9d
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
