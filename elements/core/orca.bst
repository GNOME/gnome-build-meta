kind: autotools
sources:
- kind: git_repo
  url: gnome:orca.git
  track: master
  ref: ORCA_44_0-537-gfa8d3cb61c64be2875b37e3c5277ea48ac9a57ea
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
