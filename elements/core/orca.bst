kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/43/orca-43.alpha.tar.xz
  ref: e9d654faa0651cb9b6500bc4b318f9d97fd9f33bd9d94b7f24a1b27996ab9e45
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
