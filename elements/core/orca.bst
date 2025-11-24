kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/48/orca-48.7.tar.xz
  ref: d7f2d9484e2145038cf451b2e6a28921917dbebba690036f849692293129b12e
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
