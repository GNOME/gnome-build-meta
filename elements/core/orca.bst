kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/41/orca-41.1.tar.xz
  ref: 1fd02b99094f09f6e72df779e1a72dce41427ec82e245a4ea83233a97eeda271
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
