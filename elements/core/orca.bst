kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/43/orca-43.1.tar.xz
  ref: f658e049ce169273b84346810424d6f509291f05d7ecc3a77a03d912aa3e6840
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
