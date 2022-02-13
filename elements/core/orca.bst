kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/41/orca-41.2.tar.xz
  ref: d7f272ea9b37fbd6454e4021e46538a247226e1c0ac570d6e2b84e9719aa2afe
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
