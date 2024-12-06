kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/47/orca-47.2.tar.xz
  ref: 5e67af357f7198ea00a44381cab4c4f94e6826d6ed800668f39416ce2aab8e5a
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
