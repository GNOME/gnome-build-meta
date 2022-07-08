kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/42/orca-42.3.tar.xz
  ref: fadcba0bfeae1e6672266264e76f63fe5abf8f0efb34be118b5a973fb6f2f724
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
