kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/3.36/orca-3.36.2.tar.xz
  ref: cf0055b76f2159c33c9d9f7debb769435c201bbfa6dcf0f01fdc58e92947bf43
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
