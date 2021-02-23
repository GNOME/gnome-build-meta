kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/40/orca-40.beta.tar.xz
  ref: c92a29e30ef3efd90f44952b590ada673047d811c5063b3a4cd9452a7dc64744
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
