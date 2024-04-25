kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/46/orca-46.1.tar.xz
  ref: cf675e350c18ac0fa29436c6559d1da975f7ffffefa808ebe476d8f9e9d11114
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
