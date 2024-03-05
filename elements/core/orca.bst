kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/46/orca-46.beta.tar.xz
  ref: d0b132a28bff0fc74eda14736f67170708d7018ee27fae861936dfae90004930
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
