kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/44/orca-44.rc.tar.xz
  ref: a551be2dd6ea46d7cee534ceca4d1c1fc1ccfa52f913aa528b335799fe2889fb
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
