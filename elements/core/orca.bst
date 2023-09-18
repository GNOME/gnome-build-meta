kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/45/orca-45.0.tar.xz
  ref: c68a205f8dac04e9494d6cbfcbf6097bffecd2b8f7c4b91009bd448134e98536
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
