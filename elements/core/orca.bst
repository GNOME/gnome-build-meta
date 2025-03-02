kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/48/orca-48.rc.tar.xz
  ref: bce0c310a173d4649c1f13b61e8df4d79c95101764ba51f5c619154357983495
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
