kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/48/orca-48.9.tar.xz
  ref: be0b2bd44f80a0799f1ff2f46427d4c80d7b34845a1e74ed5e5137639c01da69
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
