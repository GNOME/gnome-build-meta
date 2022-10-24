kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/43/orca-43.0.tar.xz
  ref: 1ca75a00c4a8512a09e4a26eb339fad7944d1ed41aca32f70f69627244218250
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
