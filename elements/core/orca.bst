kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/43/orca-43.beta.tar.xz
  ref: ecc92cfd6699ee7bda4b5f92566af3cf1d5426300ef4afe71bfc8c31ae8b6cf5
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
