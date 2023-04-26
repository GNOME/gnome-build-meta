kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/44/orca-44.0.tar.xz
  ref: 7bc597ec0bc1b674200b62fdf795d4bae9647a63717d754df61587cc250502ce
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
