kind: autotools
sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: ORCA_46_ALPHA-2-gbf5c0733c6fff9c2a926992cd7c233907f100c60
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
