kind: autotools
sources:
- kind: git_repo
  url: gnome:orca.git
  track: master
  ref: ORCA_44_0-609-g2db2f58aa47d0ce8dff0ac60baa28cbbf79432ca
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
