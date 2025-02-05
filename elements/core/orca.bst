kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/48/orca-48.beta.tar.xz
  ref: 698f4b0f62ad5c99b995c260d6b667088a7577d608939bdf433353308950d747
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
