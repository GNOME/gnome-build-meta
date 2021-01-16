kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/3.38/orca-3.38.2.tar.xz
  ref: 5005ff2e11dd1f713f5acc1903a270119bc58c30fdb8c9f82bcac71497c6c23c
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
