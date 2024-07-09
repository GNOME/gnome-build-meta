kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/46/orca-46.2.tar.xz
  ref: 8f63299b1a4f9c30857c229f6a9ce16f2c43eaeea90fbf909314ca8bb73efd5e
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
