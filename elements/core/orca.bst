kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/42/orca-42.beta.tar.xz
  ref: 9612fa5e28a068de25022d1de7f396ac146302bc922d34ef186e58784251f7a3
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
