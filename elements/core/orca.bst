kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/48/orca-48.6.tar.xz
  ref: edc50344e0dfd72476b5c14b3aa725ca268718ea6dd89bc4ee26f450b339d696
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
