kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/47/orca-47.3.tar.xz
  ref: 1b0b145bb685cd74eca3e28cb7b7097f98d13ee1cc58b71edeed3a8f9045231b
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
