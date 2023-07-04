kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/44/orca-44.1.tar.xz
  ref: f5ed6551d72f897b21248d433085a7b817accbb0296a84c3e851d91fb2eee4de
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
