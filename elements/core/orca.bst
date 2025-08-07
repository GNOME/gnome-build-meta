kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/49/orca-49.alpha.tar.xz
  ref: dfe98696b087201c90e21bdd3cf397621d36f489ee93275d273469f2df39ea6e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/dasbus.bst
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
