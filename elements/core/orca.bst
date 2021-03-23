kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/40/orca-40.0.tar.xz
  ref: 0000eee390b906a0f5611eb601633bd5ec03d231662ee7d865d1016459fb0043
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
