kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/46/orca-46.0.tar.xz
  ref: f21da3cc155f7a514d374264a04ce28c90a26cb3fddf0b58b89cd1d7fdd0a64f
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
