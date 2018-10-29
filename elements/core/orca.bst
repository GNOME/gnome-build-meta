kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/orca/3.30/orca-3.30.1.tar.xz
  ref: e7016e35a4cbca3dbba624d79339c5a0266ae7ce99a8744395f055995d323aad
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
