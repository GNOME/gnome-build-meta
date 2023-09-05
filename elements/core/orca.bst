kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/45/orca-45.rc.tar.xz
  ref: 248bb407c94f39a6e554f5a74822dc70cff80f49b70d62127739b549b6c31a6d
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
