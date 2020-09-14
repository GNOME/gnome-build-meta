kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/3.38/orca-3.38.0.tar.xz
  ref: 1c3279d79898db10a105bcb705b5a4042b1b51a9c057a6bd0ffd65dac2356fee
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-atk.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
